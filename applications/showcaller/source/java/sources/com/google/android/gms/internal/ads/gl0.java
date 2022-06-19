package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gl0.class */
public final class gl0 {

    /* renamed from: a */
    private final C6960sh f23388a = new C6960sh(true, 65536);

    /* renamed from: b */
    private long f23389b = 15000000;

    /* renamed from: c */
    private long f23390c = 30000000;

    /* renamed from: d */
    private long f23391d = 2500000;

    /* renamed from: e */
    private long f23392e = 5000000;

    /* renamed from: f */
    private int f23393f;

    /* renamed from: g */
    private boolean f23394g;

    /* renamed from: a */
    public final void m14912a() {
        m14902k(false);
    }

    /* renamed from: b */
    public final void m14911b(AbstractC7028ub[] abstractC7028ubArr, C7181yg c7181yg, C6627jh c6627jh) {
        this.f23393f = 0;
        for (int i = 0; i < 2; i++) {
            if (c6627jh.m14128a(i) != null) {
                this.f23393f += C6961si.m11005q(abstractC7028ubArr[i].zza());
            }
        }
        this.f23388a.m11027b(this.f23393f);
    }

    /* renamed from: c */
    public final void m14910c() {
        m14902k(true);
    }

    /* renamed from: d */
    public final void m14909d() {
        m14902k(true);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: e */
    public final boolean m14908e(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            char c = z ? this.f23392e : this.f23391d;
            z2 = c <= 0 || j >= c;
        }
        return z2;
    }

    /* renamed from: f */
    public final boolean m14907f(long j) {
        boolean z;
        synchronized (this) {
            boolean z2 = j > this.f23390c ? false : j < this.f23389b ? true : true;
            int m11022g = this.f23388a.m11022g();
            int i = this.f23393f;
            z = true;
            if (!z2) {
                z = z2 && this.f23394g && m11022g < i;
            }
            this.f23394g = z;
        }
        return z;
    }

    /* renamed from: g */
    public final void m14906g(int i) {
        synchronized (this) {
            this.f23389b = i * 1000;
        }
    }

    /* renamed from: h */
    public final void m14905h(int i) {
        synchronized (this) {
            this.f23390c = i * 1000;
        }
    }

    /* renamed from: i */
    public final void m14904i(int i) {
        synchronized (this) {
            this.f23391d = i * 1000;
        }
    }

    /* renamed from: j */
    public final void m14903j(int i) {
        synchronized (this) {
            this.f23392e = i * 1000;
        }
    }

    /* renamed from: k */
    final void m14902k(boolean z) {
        this.f23393f = 0;
        this.f23394g = false;
        if (z) {
            this.f23388a.m11028a();
        }
    }

    /* renamed from: l */
    public final C6960sh m14901l() {
        return this.f23388a;
    }
}
