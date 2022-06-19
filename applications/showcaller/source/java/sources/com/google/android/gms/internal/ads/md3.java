package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/md3.class */
public abstract class md3 {

    /* renamed from: a */
    private static volatile int f26547a = 100;

    /* renamed from: b */
    public static final /* synthetic */ int f26548b = 0;

    /* renamed from: c */
    int f26549c;

    /* renamed from: d */
    final int f26550d = f26547a;

    /* renamed from: e */
    nd3 f26551e;

    public /* synthetic */ md3(kd3 kd3Var) {
    }

    /* renamed from: d */
    public static md3 m13278d(byte[] bArr, int i, int i2, boolean z) {
        hd3 hd3Var = new hd3(bArr, i, i2, z, null);
        try {
            hd3Var.mo13282A(i2);
            return hd3Var;
        } catch (zzggm e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public static int m13277e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: f */
    public static long m13276f(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: A */
    public abstract int mo13282A(int i);

    /* renamed from: a */
    public abstract void mo13281a(int i);

    /* renamed from: b */
    public abstract boolean mo13280b();

    /* renamed from: c */
    public abstract int mo13279c();

    /* renamed from: g */
    public abstract int mo13275g();

    /* renamed from: h */
    public abstract void mo13274h(int i);

    /* renamed from: i */
    public abstract boolean mo13273i(int i);

    /* renamed from: j */
    public abstract double mo13272j();

    /* renamed from: k */
    public abstract float mo13271k();

    /* renamed from: l */
    public abstract long mo13270l();

    /* renamed from: m */
    public abstract long mo13269m();

    /* renamed from: n */
    public abstract int mo13268n();

    /* renamed from: o */
    public abstract long mo13267o();

    /* renamed from: p */
    public abstract int mo13266p();

    /* renamed from: q */
    public abstract boolean mo13265q();

    /* renamed from: r */
    public abstract String mo13264r();

    /* renamed from: s */
    public abstract String mo13263s();

    /* renamed from: t */
    public abstract zzgex mo13262t();

    /* renamed from: u */
    public abstract int mo13261u();

    /* renamed from: v */
    public abstract int mo13260v();

    /* renamed from: w */
    public abstract int mo13259w();

    /* renamed from: x */
    public abstract long mo13258x();

    /* renamed from: y */
    public abstract int mo13257y();

    /* renamed from: z */
    public abstract long mo13256z();
}
