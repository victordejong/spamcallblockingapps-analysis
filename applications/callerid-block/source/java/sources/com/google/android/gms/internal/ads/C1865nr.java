package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.nr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nr.class */
public final class C1865nr {

    /* renamed from: a */
    private final ar2 f7778a = new ar2(true, 65536);

    /* renamed from: b */
    private long f7779b = 15000000;

    /* renamed from: c */
    private long f7780c = 30000000;

    /* renamed from: d */
    private long f7781d = 2500000;

    /* renamed from: e */
    private long f7782e = 5000000;

    /* renamed from: f */
    private int f7783f;

    /* renamed from: g */
    private boolean f7784g;

    C1865nr() {
    }

    /* renamed from: a */
    public final void m6405a() {
        m6395k(false);
    }

    /* renamed from: b */
    public final void m6404b(hl2[] hl2VarArr, gq2 gq2Var, rq2 rq2Var) {
        this.f7783f = 0;
        for (int i = 0; i < 2; i++) {
            if (rq2Var.m5872a(i) != null) {
                this.f7783f += zr2.m4518q(hl2VarArr[i].zza());
            }
        }
        this.f7778a.m8097b(this.f7783f);
    }

    /* renamed from: c */
    public final void m6403c() {
        m6395k(true);
    }

    /* renamed from: d */
    public final void m6402d() {
        m6395k(true);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: e */
    public final boolean m6401e(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            char c = z ? this.f7782e : this.f7781d;
            z2 = c <= 0 || j >= c;
        }
        return z2;
    }

    /* renamed from: f */
    public final boolean m6400f(long j) {
        boolean z;
        synchronized (this) {
            boolean z2 = j > this.f7780c ? false : j < this.f7779b ? true : true;
            int m8092g = this.f7778a.m8092g();
            int i = this.f7783f;
            z = true;
            if (!z2) {
                z = z2 && this.f7784g && m8092g < i;
            }
            this.f7784g = z;
        }
        return z;
    }

    /* renamed from: g */
    public final void m6399g(int i) {
        synchronized (this) {
            this.f7779b = i * 1000;
        }
    }

    /* renamed from: h */
    public final void m6398h(int i) {
        synchronized (this) {
            this.f7780c = i * 1000;
        }
    }

    /* renamed from: i */
    public final void m6397i(int i) {
        synchronized (this) {
            this.f7781d = i * 1000;
        }
    }

    /* renamed from: j */
    public final void m6396j(int i) {
        synchronized (this) {
            this.f7782e = i * 1000;
        }
    }

    /* renamed from: k */
    final void m6395k(boolean z) {
        this.f7783f = 0;
        this.f7784g = false;
        if (z) {
            this.f7778a.m8098a();
        }
    }

    /* renamed from: l */
    public final ar2 m6394l() {
        return this.f7778a;
    }
}
