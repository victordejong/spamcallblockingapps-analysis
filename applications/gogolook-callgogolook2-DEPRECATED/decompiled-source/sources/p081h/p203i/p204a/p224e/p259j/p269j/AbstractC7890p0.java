package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.p0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/p0.class */
public abstract class AbstractC7890p0 {

    /* renamed from: a */
    public int f18509a;

    /* renamed from: b */
    public int f18510b;

    /* renamed from: c */
    public C7911s0 f18511c;

    public AbstractC7890p0() {
        this.f18510b = 100;
    }

    /* renamed from: a */
    public static AbstractC7890p0 m19111a(byte[] bArr, int i, int i2) {
        return m19110a(bArr, i, i2, false);
    }

    /* renamed from: a */
    public static AbstractC7890p0 m19110a(byte[] bArr, int i, int i2, boolean z) {
        C7904r0 r0Var = new C7904r0(bArr, i, i2, false);
        try {
            r0Var.mo19071d(i2);
            return r0Var;
        } catch (C7924t1 e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public abstract double mo19078a() throws IOException;

    /* renamed from: a */
    public abstract <T extends AbstractC7925t2> T mo19076a(AbstractC7794e3<T> e3Var, C7965z0 z0Var) throws IOException;

    /* renamed from: a */
    public abstract void mo19077a(int i) throws C7924t1;

    /* renamed from: b */
    public abstract float mo19075b() throws IOException;

    /* renamed from: b */
    public abstract boolean mo19074b(int i) throws IOException;

    /* renamed from: c */
    public final int m19109c(int i) {
        if (i >= 0) {
            int i2 = this.f18510b;
            this.f18510b = i;
            return i2;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("Recursion limit cannot be negative: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: c */
    public abstract String mo19073c() throws IOException;

    /* renamed from: d */
    public abstract int mo19072d() throws IOException;

    /* renamed from: d */
    public abstract int mo19071d(int i) throws C7924t1;

    /* renamed from: e */
    public abstract long mo19070e() throws IOException;

    /* renamed from: e */
    public abstract void mo19069e(int i);

    /* renamed from: f */
    public abstract long mo19068f() throws IOException;

    /* renamed from: f */
    public abstract void mo19067f(int i) throws IOException;

    /* renamed from: g */
    public abstract int mo19066g() throws IOException;

    /* renamed from: h */
    public abstract long mo19065h() throws IOException;

    /* renamed from: i */
    public abstract int mo19064i() throws IOException;

    /* renamed from: j */
    public abstract boolean mo19063j() throws IOException;

    /* renamed from: k */
    public abstract String mo19062k() throws IOException;

    /* renamed from: l */
    public abstract AbstractC7791e0 mo19061l() throws IOException;

    /* renamed from: m */
    public abstract int mo19060m() throws IOException;

    /* renamed from: n */
    public abstract int mo19059n() throws IOException;

    /* renamed from: o */
    public abstract int mo19058o() throws IOException;

    /* renamed from: p */
    public abstract long mo19057p() throws IOException;

    /* renamed from: q */
    public abstract int mo19056q() throws IOException;

    /* renamed from: r */
    public abstract long mo19055r() throws IOException;

    /* renamed from: s */
    public abstract boolean mo19054s() throws IOException;

    /* renamed from: t */
    public abstract int mo19053t();
}
