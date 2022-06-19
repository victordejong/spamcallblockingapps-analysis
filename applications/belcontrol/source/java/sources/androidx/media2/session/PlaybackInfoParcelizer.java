package androidx.media2.session;

import androidx.media2.session.MediaController;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PlaybackInfoParcelizer.class */
public final class PlaybackInfoParcelizer {
    public static MediaController.PlaybackInfo read(d40 d40Var) {
        MediaController.PlaybackInfo playbackInfo = new MediaController.PlaybackInfo();
        playbackInfo.a = d40Var.m2828v(playbackInfo.a, 1);
        playbackInfo.b = d40Var.m2828v(playbackInfo.b, 2);
        playbackInfo.c = d40Var.m2828v(playbackInfo.c, 3);
        playbackInfo.d = d40Var.m2828v(playbackInfo.d, 4);
        playbackInfo.e = d40Var.m2881I(playbackInfo.e, 5);
        return playbackInfo;
    }

    public static void write(MediaController.PlaybackInfo playbackInfo, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2865Y(playbackInfo.a, 1);
        d40Var.m2865Y(playbackInfo.b, 2);
        d40Var.m2865Y(playbackInfo.c, 3);
        d40Var.m2865Y(playbackInfo.d, 4);
        d40Var.m2838m0(playbackInfo.e, 5);
    }
}
