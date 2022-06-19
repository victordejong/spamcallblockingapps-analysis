package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sb2.class */
public abstract class sb2 {

    /* renamed from: a */
    int f8437a;

    /* renamed from: b */
    tb2 f8438b;

    /* synthetic */ sb2(pb2 pb2Var) {
    }

    /* renamed from: d */
    public static sb2 m5778d(byte[] bArr, int i, int i2, boolean z) {
        qb2 qb2Var = new qb2(bArr, i, i2, z, (pb2) null);
        try {
            qb2Var.A(i2);
            return qb2Var;
        } catch (zzett e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public static int m5777e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: f */
    public static long m5776f(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: A */
    public abstract int m5782A(int i);

    /* renamed from: a */
    public abstract void m5781a(int i);

    /* renamed from: b */
    public abstract boolean m5780b();

    /* renamed from: c */
    public abstract int m5779c();

    /* renamed from: g */
    public abstract int m5775g();

    /* renamed from: h */
    public abstract void m5774h(int i);

    /* renamed from: i */
    public abstract boolean m5773i(int i);

    /* renamed from: j */
    public abstract double m5772j();

    /* renamed from: k */
    public abstract float m5771k();

    /* renamed from: l */
    public abstract long m5770l();

    /* renamed from: m */
    public abstract long m5769m();

    /* renamed from: n */
    public abstract int m5768n();

    /* renamed from: o */
    public abstract long m5767o();

    /* renamed from: p */
    public abstract int m5766p();

    /* renamed from: q */
    public abstract boolean m5765q();

    /* renamed from: r */
    public abstract String m5764r();

    /* renamed from: s */
    public abstract String m5763s();

    /* renamed from: t */
    public abstract zzesf m5762t();

    /* renamed from: u */
    public abstract int m5761u();

    /* renamed from: v */
    public abstract int m5760v();

    /* renamed from: w */
    public abstract int m5759w();

    /* renamed from: x */
    public abstract long m5758x();

    /* renamed from: y */
    public abstract int m5757y();

    /* renamed from: z */
    public abstract long m5756z();
}
