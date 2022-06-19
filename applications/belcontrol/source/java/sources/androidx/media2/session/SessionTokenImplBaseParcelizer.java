package androidx.media2.session;

import android.content.ComponentName;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplBaseParcelizer.class */
public final class SessionTokenImplBaseParcelizer {
    public static jw read(d40 d40Var) {
        jw jwVar = new jw();
        jwVar.a = d40Var.m2828v(jwVar.a, 1);
        jwVar.b = d40Var.m2828v(jwVar.b, 2);
        jwVar.c = d40Var.m2885E(jwVar.c, 3);
        jwVar.d = d40Var.m2885E(jwVar.d, 4);
        jwVar.e = d40Var.m2883G(jwVar.e, 5);
        jwVar.f = (ComponentName) d40Var.m2889A(jwVar.f, 6);
        jwVar.g = d40Var.m2843k(jwVar.g, 7);
        return jwVar;
    }

    public static void write(jw jwVar, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2865Y(jwVar.a, 1);
        d40Var.m2865Y(jwVar.b, 2);
        d40Var.m2848h0(jwVar.c, 3);
        d40Var.m2848h0(jwVar.d, 4);
        d40Var.m2844j0(jwVar.e, 5);
        d40Var.m2856d0(jwVar.f, 6);
        d40Var.m2875O(jwVar.g, 7);
    }
}
