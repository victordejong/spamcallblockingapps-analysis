package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionRequestParcelizer.class */
public final class ConnectionRequestParcelizer {
    public static yv read(d40 d40Var) {
        yv yvVar = new yv();
        yvVar.a = d40Var.m2828v(yvVar.a, 0);
        yvVar.b = d40Var.m2885E(yvVar.b, 1);
        yvVar.c = d40Var.m2828v(yvVar.c, 2);
        yvVar.d = d40Var.m2843k(yvVar.d, 3);
        return yvVar;
    }

    public static void write(yv yvVar, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2865Y(yvVar.a, 0);
        d40Var.m2848h0(yvVar.b, 1);
        d40Var.m2865Y(yvVar.c, 2);
        d40Var.m2875O(yvVar.d, 3);
    }
}
