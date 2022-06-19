package androidx.media2.common;

import androidx.media2.common.SessionPlayer;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/TrackInfoParcelizer.class */
public final class TrackInfoParcelizer {
    public static SessionPlayer.TrackInfo read(d40 d40Var) {
        SessionPlayer.TrackInfo trackInfo = new SessionPlayer.TrackInfo();
        trackInfo.a = d40Var.m2828v(trackInfo.a, 1);
        trackInfo.b = d40Var.m2881I(trackInfo.b, 2);
        trackInfo.c = d40Var.m2828v(trackInfo.c, 3);
        trackInfo.d = d40Var.m2843k(trackInfo.d, 4);
        trackInfo.d();
        return trackInfo;
    }

    public static void write(SessionPlayer.TrackInfo trackInfo, d40 d40Var) {
        d40Var.m2879K(false, false);
        trackInfo.e(d40Var.m2851g());
        d40Var.m2865Y(trackInfo.a, 1);
        d40Var.m2838m0(trackInfo.b, 2);
        d40Var.m2865Y(trackInfo.c, 3);
        d40Var.m2875O(trackInfo.d, 4);
    }
}
