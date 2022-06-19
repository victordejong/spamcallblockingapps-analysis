package com.truecaller.ads.adsrouter.p132ui;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/truecaller/ads/adsrouter/ui/VideoStats;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "VIDEO_START", "PLAY_10", "PLAY_25", "PLAY_50", "PLAY_75", "VIDEO_END", "VIDEO_MUTE", "VIDEO_UNMUTE", "ads_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ads.adsrouter.ui.VideoStats */
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/adsrouter/ui/VideoStats.class */
public enum VideoStats {
    VIDEO_START("video_start"),
    PLAY_10("play_10"),
    PLAY_25("play_25"),
    PLAY_50("play_50"),
    PLAY_75("play_75"),
    VIDEO_END("video_end"),
    VIDEO_MUTE("volume_mute"),
    VIDEO_UNMUTE("volume_unmute");
    
    private final String value;

    VideoStats(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
