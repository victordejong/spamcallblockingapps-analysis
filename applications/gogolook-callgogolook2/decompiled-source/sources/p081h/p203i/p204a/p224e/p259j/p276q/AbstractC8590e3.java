package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.e3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/e3.class */
public abstract class AbstractC8590e3 {

    /* renamed from: a */
    public int f19668a;

    /* renamed from: b */
    public int f19669b;

    /* renamed from: c */
    public C8621h3 f19670c;

    public AbstractC8590e3() {
        this.f19669b = 100;
    }

    /* renamed from: a */
    public static AbstractC8590e3 m17694a(byte[] bArr, int i, int i2) {
        return m17693a(bArr, i, i2, false);
    }

    /* renamed from: a */
    public static AbstractC8590e3 m17693a(byte[] bArr, int i, int i2, boolean z) {
        C8608g3 g3Var = new C8608g3(bArr, i, i2, false);
        try {
            g3Var.mo17652d(i2);
            return g3Var;
        } catch (C8647j4 e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public abstract double mo17659a() throws IOException;

    /* renamed from: a */
    public abstract <T extends AbstractC8648j5> T mo17657a(AbstractC8739t5<T> t5Var, C8691o3 o3Var) throws IOException;

    /* renamed from: a */
    public abstract void mo17658a(int i) throws C8647j4;

    /* renamed from: b */
    public abstract float mo17656b() throws IOException;

    /* renamed from: b */
    public abstract boolean mo17655b(int i) throws IOException;

    /* renamed from: c */
    public final int m17692c(int i) {
        if (i >= 0) {
            int i2 = this.f19669b;
            this.f19669b = i;
            return i2;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("Recursion limit cannot be negative: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: c */
    public abstract String mo17654c() throws IOException;

    /* renamed from: d */
    public abstract int mo17653d() throws IOException;

    /* renamed from: d */
    public abstract int mo17652d(int i) throws C8647j4;

    /* renamed from: e */
    public abstract long mo17651e() throws IOException;

    /* renamed from: e */
    public abstract void mo17650e(int i);

    /* renamed from: f */
    public abstract long mo17649f() throws IOException;

    /* renamed from: f */
    public abstract void mo17648f(int i) throws IOException;

    /* renamed from: g */
    public abstract int mo17647g() throws IOException;

    /* renamed from: h */
    public abstract long mo17646h() throws IOException;

    /* renamed from: i */
    public abstract int mo17645i() throws IOException;

    /* renamed from: j */
    public abstract boolean mo17644j() throws IOException;

    /* renamed from: k */
    public abstract String mo17643k() throws IOException;

    /* renamed from: l */
    public abstract AbstractC8736t2 mo17642l() throws IOException;

    /* renamed from: m */
    public abstract int mo17641m() throws IOException;

    /* renamed from: n */
    public abstract int mo17640n() throws IOException;

    /* renamed from: o */
    public abstract int mo17639o() throws IOException;

    /* renamed from: p */
    public abstract long mo17638p() throws IOException;

    /* renamed from: q */
    public abstract int mo17637q() throws IOException;

    /* renamed from: r */
    public abstract long mo17636r() throws IOException;

    /* renamed from: s */
    public abstract boolean mo17635s() throws IOException;

    /* renamed from: t */
    public abstract int mo17634t();
}
