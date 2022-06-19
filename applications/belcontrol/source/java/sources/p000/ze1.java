package p000;
/* renamed from: ze1 */
/* loaded from: classes3-dex2jar.jar:ze1.class */
public enum ze1 {
    AD_EVT_FIRST_QUARTILE("AdVideoFirstQuartile"),
    AD_EVT_MID_POINT("AdVideoMidpoint"),
    AD_EVT_THIRD_QUARTILE("AdVideoThirdQuartile"),
    AD_EVT_COMPLETE("AdVideoComplete"),
    AD_EVT_PAUSED("AdPaused"),
    AD_EVT_PLAYING("AdPlaying"),
    AD_EVT_START("AdVideoStart"),
    AD_EVT_STOPPED("AdStopped"),
    AD_EVT_SKIPPED("AdSkipped"),
    AD_EVT_VOLUME_CHANGE("AdVolumeChange"),
    AD_EVT_ENTER_FULLSCREEN("fullScreen"),
    AD_EVT_EXIT_FULLSCREEN("exitFullscreen");
    

    /* renamed from: a */
    public final String f8812a;

    ze1(String str) {
        this.f8812a = str;
    }

    /* renamed from: a */
    public static ze1 m29a(String str) {
        ze1[] values;
        if (str != null) {
            for (ze1 ze1Var : values()) {
                if (str.equalsIgnoreCase(ze1Var.toString())) {
                    return ze1Var;
                }
            }
            return null;
        }
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f8812a;
    }
}
