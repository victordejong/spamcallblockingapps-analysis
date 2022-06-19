package androidx.media2.session;

import android.app.PendingIntent;
import androidx.media2.common.ParcelImplListSlice;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionResultParcelizer.class */
public final class ConnectionResultParcelizer {
    public static zv read(d40 d40Var) {
        zv zvVar = new zv();
        zvVar.a = d40Var.m2828v(zvVar.a, 0);
        zvVar.b = d40Var.m2883G(zvVar.b, 1);
        zvVar.m = d40Var.m2828v(zvVar.m, 10);
        zvVar.n = d40Var.m2828v(zvVar.n, 11);
        zvVar.o = (ParcelImplListSlice) d40Var.m2889A(zvVar.o, 12);
        zvVar.p = d40Var.m2881I(zvVar.p, 13);
        zvVar.q = d40Var.m2828v(zvVar.q, 14);
        zvVar.r = d40Var.m2828v(zvVar.r, 15);
        zvVar.s = d40Var.m2828v(zvVar.s, 16);
        zvVar.t = d40Var.m2843k(zvVar.t, 17);
        zvVar.u = d40Var.m2881I(zvVar.u, 18);
        zvVar.v = d40Var.m2827w(zvVar.v, 19);
        zvVar.d = (PendingIntent) d40Var.m2889A(zvVar.d, 2);
        zvVar.w = d40Var.m2881I(zvVar.w, 20);
        zvVar.x = d40Var.m2881I(zvVar.x, 21);
        zvVar.y = d40Var.m2881I(zvVar.y, 23);
        zvVar.z = d40Var.m2881I(zvVar.z, 24);
        zvVar.e = d40Var.m2828v(zvVar.e, 3);
        zvVar.g = d40Var.m2881I(zvVar.g, 4);
        zvVar.h = d40Var.m2825y(zvVar.h, 5);
        zvVar.i = d40Var.m2825y(zvVar.i, 6);
        zvVar.j = d40Var.m2831s(zvVar.j, 7);
        zvVar.k = d40Var.m2825y(zvVar.k, 8);
        zvVar.l = d40Var.m2881I(zvVar.l, 9);
        zvVar.d();
        return zvVar;
    }

    public static void write(zv zvVar, d40 d40Var) {
        d40Var.m2879K(false, false);
        zvVar.e(d40Var.m2851g());
        d40Var.m2865Y(zvVar.a, 0);
        d40Var.m2844j0(zvVar.b, 1);
        d40Var.m2865Y(zvVar.m, 10);
        d40Var.m2865Y(zvVar.n, 11);
        d40Var.m2856d0(zvVar.o, 12);
        d40Var.m2838m0(zvVar.p, 13);
        d40Var.m2865Y(zvVar.q, 14);
        d40Var.m2865Y(zvVar.r, 15);
        d40Var.m2865Y(zvVar.s, 16);
        d40Var.m2875O(zvVar.t, 17);
        d40Var.m2838m0(zvVar.u, 18);
        d40Var.m2864Z(zvVar.v, 19);
        d40Var.m2856d0(zvVar.d, 2);
        d40Var.m2838m0(zvVar.w, 20);
        d40Var.m2838m0(zvVar.x, 21);
        d40Var.m2838m0(zvVar.y, 23);
        d40Var.m2838m0(zvVar.z, 24);
        d40Var.m2865Y(zvVar.e, 3);
        d40Var.m2838m0(zvVar.g, 4);
        d40Var.m2860b0(zvVar.h, 5);
        d40Var.m2860b0(zvVar.i, 6);
        d40Var.m2867W(zvVar.j, 7);
        d40Var.m2860b0(zvVar.k, 8);
        d40Var.m2838m0(zvVar.l, 9);
    }
}
