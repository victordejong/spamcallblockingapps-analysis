package p000;

import z5;
/* renamed from: f6 */
/* loaded from: classes-dex2jar.jar:f6.class */
public class C1398f6 {

    /* renamed from: a */
    public static boolean[] f6536a = new boolean[3];

    /* renamed from: a */
    public static void m1956a(a6 a6Var, o5 o5Var, z5 z5Var) {
        z5Var.l = -1;
        z5Var.m = -1;
        z5.b bVar = ((z5) a6Var).S[0];
        z5.b bVar2 = z5.b.b;
        if (bVar != bVar2 && z5Var.S[0] == z5.b.d) {
            int i = z5Var.H.g;
            int U = a6Var.U() - z5Var.J.g;
            y5 y5Var = z5Var.H;
            y5Var.i = o5Var.q(y5Var);
            y5 y5Var2 = z5Var.J;
            y5Var2.i = o5Var.q(y5Var2);
            o5Var.f(z5Var.H.i, i);
            o5Var.f(z5Var.J.i, U);
            z5Var.l = 2;
            z5Var.C0(i, U);
        }
        if (((z5) a6Var).S[1] == bVar2 || z5Var.S[1] != z5.b.d) {
            return;
        }
        int i2 = z5Var.I.g;
        int y = a6Var.y() - z5Var.K.g;
        y5 y5Var3 = z5Var.I;
        y5Var3.i = o5Var.q(y5Var3);
        y5 y5Var4 = z5Var.K;
        y5Var4.i = o5Var.q(y5Var4);
        o5Var.f(z5Var.I.i, i2);
        o5Var.f(z5Var.K.i, y);
        if (z5Var.e0 > 0 || z5Var.T() == 8) {
            y5 y5Var5 = z5Var.L;
            y5Var5.i = o5Var.q(y5Var5);
            o5Var.f(z5Var.L.i, z5Var.e0 + i2);
        }
        z5Var.m = 2;
        z5Var.T0(i2, y);
    }

    /* renamed from: b */
    public static final boolean m1955b(int i, int i2) {
        return (i & i2) == i2;
    }
}
