package androidx.media2.session;

import android.os.Bundle;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/CommandButtonParcelizer.class */
public final class CommandButtonParcelizer {
    public static MediaSession$CommandButton read(AbstractC26405c abstractC26405c) {
        MediaSession$CommandButton mediaSession$CommandButton = new MediaSession$CommandButton();
        mediaSession$CommandButton.f1229a = (SessionCommand) abstractC26405c.m1938A(mediaSession$CommandButton.f1229a, 1);
        mediaSession$CommandButton.f1230b = abstractC26405c.m1927r(mediaSession$CommandButton.f1230b, 2);
        mediaSession$CommandButton.f1231c = abstractC26405c.m1930l(mediaSession$CommandButton.f1231c, 3);
        mediaSession$CommandButton.f1232d = abstractC26405c.m1931i(mediaSession$CommandButton.f1232d, 4);
        mediaSession$CommandButton.f1233e = abstractC26405c.m1932g(mediaSession$CommandButton.f1233e, 5);
        return mediaSession$CommandButton;
    }

    public static void write(MediaSession$CommandButton mediaSession$CommandButton, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        SessionCommand sessionCommand = mediaSession$CommandButton.f1229a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.m1936N(sessionCommand);
        int i = mediaSession$CommandButton.f1230b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i);
        CharSequence charSequence = mediaSession$CommandButton.f1231c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1918F(charSequence);
        Bundle bundle = mediaSession$CommandButton.f1232d;
        abstractC26405c.mo1922B(4);
        abstractC26405c.mo1920D(bundle);
        boolean z = mediaSession$CommandButton.f1233e;
        abstractC26405c.mo1922B(5);
        abstractC26405c.mo1921C(z);
    }
}
