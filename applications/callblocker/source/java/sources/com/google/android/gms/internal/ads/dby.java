package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dby.class */
public abstract class dby {

    /* renamed from: a */
    int f13951a;

    /* renamed from: b */
    int f13952b;

    /* renamed from: c */
    int f13953c;

    /* renamed from: d */
    dcb f13954d;

    /* renamed from: e */
    private boolean f13955e;

    /* JADX INFO: Access modifiers changed from: private */
    public dby() {
        this.f13952b = 100;
        this.f13953c = Integer.MAX_VALUE;
        this.f13955e = false;
    }

    /* renamed from: a */
    public static long m10198a(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    /* renamed from: a */
    public static dby m10197a(byte[] bArr, int i, int i2, boolean z) {
        dca dcaVar = new dca(bArr, i, i2, z);
        try {
            dcaVar.mo10177c(i2);
            return dcaVar;
        } catch (zzeco e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public static int m10196e(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    /* renamed from: a */
    public abstract int mo10182a();

    /* renamed from: a */
    public abstract void mo10181a(int i);

    /* renamed from: b */
    public abstract double mo10180b();

    /* renamed from: b */
    public abstract boolean mo10179b(int i);

    /* renamed from: c */
    public abstract float mo10178c();

    /* renamed from: c */
    public abstract int mo10177c(int i);

    /* renamed from: d */
    public abstract long mo10176d();

    /* renamed from: d */
    public abstract void mo10175d(int i);

    /* renamed from: e */
    public abstract long mo10174e();

    /* renamed from: f */
    public abstract int mo10173f();

    /* renamed from: g */
    public abstract long mo10171g();

    /* renamed from: h */
    public abstract int mo10170h();

    /* renamed from: i */
    public abstract boolean mo10169i();

    /* renamed from: j */
    public abstract String mo10168j();

    /* renamed from: k */
    public abstract String mo10167k();

    /* renamed from: l */
    public abstract dbi mo10166l();

    /* renamed from: m */
    public abstract int mo10165m();

    /* renamed from: n */
    public abstract int mo10164n();

    /* renamed from: o */
    public abstract int mo10163o();

    /* renamed from: p */
    public abstract long mo10162p();

    /* renamed from: q */
    public abstract int mo10161q();

    /* renamed from: r */
    public abstract long mo10160r();

    /* renamed from: s */
    public abstract long mo10159s();

    /* renamed from: t */
    public abstract boolean mo10158t();

    /* renamed from: u */
    public abstract int mo10157u();
}
