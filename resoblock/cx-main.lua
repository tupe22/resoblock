Citizen.CreateThread(function()
    local scaleform = RequestScaleformMovie("mp_big_message_freemode")

    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end

    BeginScaleformMovieMethod(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieMethodParameterString("Sinulla ei ole normaali resoluutio, vaihda se.")
    EndScaleformMovieMethod()

    while true do
        local wait = 2500
        local pelaaja = GetIsWidescreen(PlayerPedId())
        if not pelaaja then
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
            wait = 7
        end
        Citizen.Wait(wait)
    end
end)