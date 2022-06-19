package com.huawei.multimedia.audiokit.interfaces;
/* loaded from: classes3-dex2jar.jar:com/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName.class */
public enum HwAudioKaraokeFeatureKit$ParameName {
    CMD_SET_AUDIO_EFFECT_MODE_BASE("Karaoke_reverb_mode="),
    CMD_SET_VOCAL_VOLUME_BASE("Karaoke_volume="),
    CMD_SET_VOCAL_EQUALIZER_MODE("Karaoke_eq_mode=");
    
    private String mParameName;

    HwAudioKaraokeFeatureKit$ParameName(String str) {
        this.mParameName = str;
    }

    public String getParameName() {
        return this.mParameName;
    }
}
