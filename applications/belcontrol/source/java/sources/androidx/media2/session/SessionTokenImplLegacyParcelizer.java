package androidx.media2.session;

import android.content.ComponentName;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplLegacyParcelizer.class */
public final class SessionTokenImplLegacyParcelizer {
    public static kw read(d40 d40Var) {
        kw kwVar = new kw();
        kwVar.b = d40Var.m2843k(kwVar.b, 1);
        kwVar.c = d40Var.m2828v(kwVar.c, 2);
        kwVar.d = d40Var.m2828v(kwVar.d, 3);
        kwVar.e = (ComponentName) d40Var.m2889A(kwVar.e, 4);
        kwVar.f = d40Var.m2885E(kwVar.f, 5);
        kwVar.g = d40Var.m2843k(kwVar.g, 6);
        kwVar.d();
        return kwVar;
    }

    public static void write(kw kwVar, d40 d40Var) {
        d40Var.m2879K(false, false);
        kwVar.e(d40Var.m2851g());
        d40Var.m2875O(kwVar.b, 1);
        d40Var.m2865Y(kwVar.c, 2);
        d40Var.m2865Y(kwVar.d, 3);
        d40Var.m2856d0(kwVar.e, 4);
        d40Var.m2848h0(kwVar.f, 5);
        d40Var.m2875O(kwVar.g, 6);
    }
}
