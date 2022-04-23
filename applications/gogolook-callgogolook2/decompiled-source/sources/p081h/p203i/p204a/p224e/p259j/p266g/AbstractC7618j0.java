package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.j0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/j0.class */
public abstract class AbstractC7618j0 {
    public AbstractC7618j0() {
    }

    /* renamed from: a */
    public static int m20096a(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: a */
    public static long m20095a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public static AbstractC7618j0 m20094a(byte[] bArr, int i, int i2, boolean z) {
        C7632l0 l0Var = new C7632l0(bArr, 0, i2, false);
        try {
            l0Var.m20081b(i2);
            return l0Var;
        } catch (C7633l1 e) {
            throw new IllegalArgumentException(e);
        }
    }
}
