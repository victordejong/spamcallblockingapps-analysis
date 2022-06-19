package androidx.media2.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
import p1727n3.p1874y.p1907d.C27496b;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionResultParcelizer.class */
public final class ConnectionResultParcelizer {
    public static ConnectionResult read(AbstractC26405c abstractC26405c) {
        ConnectionResult connectionResult = new ConnectionResult();
        connectionResult.a = abstractC26405c.m1927r(connectionResult.a, 0);
        IBinder iBinder = connectionResult.c;
        if (abstractC26405c.mo1905n(1)) {
            iBinder = abstractC26405c.mo1899y();
        }
        connectionResult.c = iBinder;
        connectionResult.m = abstractC26405c.m1927r(connectionResult.m, 10);
        connectionResult.n = abstractC26405c.m1927r(connectionResult.n, 11);
        connectionResult.o = (ParcelImplListSlice) abstractC26405c.m1925v(connectionResult.o, 12);
        connectionResult.p = (SessionCommandGroup) abstractC26405c.m1938A(connectionResult.p, 13);
        connectionResult.q = abstractC26405c.m1927r(connectionResult.q, 14);
        connectionResult.r = abstractC26405c.m1927r(connectionResult.r, 15);
        connectionResult.s = abstractC26405c.m1927r(connectionResult.s, 16);
        connectionResult.t = abstractC26405c.m1931i(connectionResult.t, 17);
        connectionResult.u = (VideoSize) abstractC26405c.m1938A(connectionResult.u, 18);
        List list = connectionResult.v;
        if (abstractC26405c.mo1905n(19)) {
            list = (List) abstractC26405c.m1929m(new ArrayList());
        }
        connectionResult.v = list;
        connectionResult.d = (PendingIntent) abstractC26405c.m1925v(connectionResult.d, 2);
        connectionResult.w = abstractC26405c.m1938A(connectionResult.w, 20);
        connectionResult.x = abstractC26405c.m1938A(connectionResult.x, 21);
        connectionResult.y = abstractC26405c.m1938A(connectionResult.y, 23);
        connectionResult.z = abstractC26405c.m1938A(connectionResult.z, 24);
        connectionResult.A = abstractC26405c.m1938A(connectionResult.A, 25);
        connectionResult.B = abstractC26405c.m1927r(connectionResult.B, 26);
        connectionResult.e = abstractC26405c.m1927r(connectionResult.e, 3);
        connectionResult.g = abstractC26405c.m1938A(connectionResult.g, 4);
        connectionResult.h = abstractC26405c.m1926t(connectionResult.h, 5);
        connectionResult.i = abstractC26405c.m1926t(connectionResult.i, 6);
        connectionResult.j = abstractC26405c.m1928p(connectionResult.j, 7);
        connectionResult.k = abstractC26405c.m1926t(connectionResult.k, 8);
        connectionResult.l = (MediaController.PlaybackInfo) abstractC26405c.m1938A(connectionResult.l, 9);
        connectionResult.e();
        return connectionResult;
    }

    public static void write(ConnectionResult connectionResult, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        synchronized (connectionResult.b) {
            if (connectionResult.c == null) {
                connectionResult.c = (IBinder) connectionResult.b;
                connectionResult.g = C27496b.m198a(connectionResult.f);
            }
        }
        int i = connectionResult.a;
        abstractC26405c.mo1922B(0);
        abstractC26405c.mo1916I(i);
        IBinder iBinder = connectionResult.c;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1912M(iBinder);
        int i2 = connectionResult.m;
        abstractC26405c.mo1922B(10);
        abstractC26405c.mo1916I(i2);
        int i3 = connectionResult.n;
        abstractC26405c.mo1922B(11);
        abstractC26405c.mo1916I(i3);
        ParcelImplListSlice parcelImplListSlice = connectionResult.o;
        abstractC26405c.mo1922B(12);
        abstractC26405c.mo1914K(parcelImplListSlice);
        SessionCommandGroup sessionCommandGroup = connectionResult.p;
        abstractC26405c.mo1922B(13);
        abstractC26405c.m1936N(sessionCommandGroup);
        int i4 = connectionResult.q;
        abstractC26405c.mo1922B(14);
        abstractC26405c.mo1916I(i4);
        int i5 = connectionResult.r;
        abstractC26405c.mo1922B(15);
        abstractC26405c.mo1916I(i5);
        int i6 = connectionResult.s;
        abstractC26405c.mo1922B(16);
        abstractC26405c.mo1916I(i6);
        Bundle bundle = connectionResult.t;
        abstractC26405c.mo1922B(17);
        abstractC26405c.mo1920D(bundle);
        VideoSize videoSize = connectionResult.u;
        abstractC26405c.mo1922B(18);
        abstractC26405c.m1936N(videoSize);
        abstractC26405c.m1937G(connectionResult.v, 19);
        PendingIntent pendingIntent = connectionResult.d;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1914K(pendingIntent);
        SessionPlayer.TrackInfo trackInfo = connectionResult.w;
        abstractC26405c.mo1922B(20);
        abstractC26405c.m1936N(trackInfo);
        SessionPlayer.TrackInfo trackInfo2 = connectionResult.x;
        abstractC26405c.mo1922B(21);
        abstractC26405c.m1936N(trackInfo2);
        SessionPlayer.TrackInfo trackInfo3 = connectionResult.y;
        abstractC26405c.mo1922B(23);
        abstractC26405c.m1936N(trackInfo3);
        SessionPlayer.TrackInfo trackInfo4 = connectionResult.z;
        abstractC26405c.mo1922B(24);
        abstractC26405c.m1936N(trackInfo4);
        MediaMetadata mediaMetadata = connectionResult.A;
        abstractC26405c.mo1922B(25);
        abstractC26405c.m1936N(mediaMetadata);
        int i7 = connectionResult.B;
        abstractC26405c.mo1922B(26);
        abstractC26405c.mo1916I(i7);
        int i8 = connectionResult.e;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1916I(i8);
        MediaItem mediaItem = connectionResult.g;
        abstractC26405c.mo1922B(4);
        abstractC26405c.m1936N(mediaItem);
        long j = connectionResult.h;
        abstractC26405c.mo1922B(5);
        abstractC26405c.mo1915J(j);
        long j2 = connectionResult.i;
        abstractC26405c.mo1922B(6);
        abstractC26405c.mo1915J(j2);
        float f = connectionResult.j;
        abstractC26405c.mo1922B(7);
        abstractC26405c.mo1917H(f);
        long j3 = connectionResult.k;
        abstractC26405c.mo1922B(8);
        abstractC26405c.mo1915J(j3);
        MediaController.PlaybackInfo playbackInfo = connectionResult.l;
        abstractC26405c.mo1922B(9);
        abstractC26405c.m1936N(playbackInfo);
    }
}
