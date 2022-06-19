package androidx.media2.session;

import androidx.media.AudioAttributesCompat;
import androidx.media2.session.MediaController;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PlaybackInfoParcelizer.class */
public final class PlaybackInfoParcelizer {
    public static MediaController.PlaybackInfo read(AbstractC26405c abstractC26405c) {
        MediaController.PlaybackInfo playbackInfo = new MediaController.PlaybackInfo();
        playbackInfo.f1220a = abstractC26405c.m1927r(playbackInfo.f1220a, 1);
        playbackInfo.f1221b = abstractC26405c.m1927r(playbackInfo.f1221b, 2);
        playbackInfo.f1222c = abstractC26405c.m1927r(playbackInfo.f1222c, 3);
        playbackInfo.f1223d = abstractC26405c.m1927r(playbackInfo.f1223d, 4);
        playbackInfo.f1224e = (AudioAttributesCompat) abstractC26405c.m1938A(playbackInfo.f1224e, 5);
        return playbackInfo;
    }

    public static void write(MediaController.PlaybackInfo playbackInfo, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        int i = playbackInfo.f1220a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i);
        int i2 = playbackInfo.f1221b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i2);
        int i3 = playbackInfo.f1222c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1916I(i3);
        int i4 = playbackInfo.f1223d;
        abstractC26405c.mo1922B(4);
        abstractC26405c.mo1916I(i4);
        AudioAttributesCompat audioAttributesCompat = playbackInfo.f1224e;
        abstractC26405c.mo1922B(5);
        abstractC26405c.m1936N(audioAttributesCompat);
    }
}
