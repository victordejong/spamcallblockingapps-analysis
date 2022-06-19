package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aay.class */
public final class aay implements dlh {

    /* renamed from: a */
    private final drs f7712a;

    /* renamed from: b */
    private long f7713b;

    /* renamed from: c */
    private long f7714c;

    /* renamed from: d */
    private long f7715d;

    /* renamed from: e */
    private long f7716e;

    /* renamed from: f */
    private int f7717f;

    /* renamed from: g */
    private boolean f7718g;

    public aay() {
        this(15000, 30000, 2500L, 5000L);
    }

    private aay(int i, int i2, long j, long j2) {
        this.f7712a = new drs(true, 65536);
        this.f7713b = 15000000L;
        this.f7714c = 30000000L;
        this.f7715d = 2500000L;
        this.f7716e = 5000000L;
    }

    /* renamed from: a */
    private final void m13695a(boolean z) {
        this.f7717f = 0;
        this.f7718g = false;
        if (z) {
            this.f7712a.m8798d();
        }
    }

    @Override // com.google.android.gms.internal.ads.dlh
    /* renamed from: a */
    public final void mo9224a() {
        m13695a(false);
    }

    /* renamed from: a */
    public final void m13696a(int i) {
        synchronized (this) {
            this.f7713b = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dlh
    /* renamed from: a */
    public final void mo9221a(dli[] dliVarArr, dqv dqvVar, drg drgVar) {
        this.f7717f = 0;
        for (int i = 0; i < dliVarArr.length; i++) {
            if (drgVar.m8822a(i) != null) {
                this.f7717f += dsn.m8699b(dliVarArr[i].mo9202a());
            }
        }
        this.f7712a.m8803a(this.f7717f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
        if (r10 == false) goto L22;
     */
    @Override // com.google.android.gms.internal.ads.dlh
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo9223a(long r6) {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r6
            r1 = r5
            long r1 = r1.f7714c     // Catch: java.lang.Throwable -> L75
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L56
            r0 = 0
            r9 = r0
        L10:
            r0 = r5
            com.google.android.gms.internal.ads.drs r0 = r0.f7712a     // Catch: java.lang.Throwable -> L75
            int r0 = r0.m8797e()     // Catch: java.lang.Throwable -> L75
            r1 = r5
            int r1 = r1.f7717f     // Catch: java.lang.Throwable -> L75
            if (r0 < r1) goto L6f
            r0 = 1
            r10 = r0
        L21:
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L42
            r0 = r8
            r11 = r0
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L45
            r0 = r8
            r11 = r0
            r0 = r5
            boolean r0 = r0.f7718g     // Catch: java.lang.Throwable -> L75
            if (r0 == 0) goto L45
            r0 = r8
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L45
        L42:
            r0 = 1
            r11 = r0
        L45:
            r0 = r5
            r1 = r11
            r0.f7718g = r1     // Catch: java.lang.Throwable -> L75
            r0 = r5
            boolean r0 = r0.f7718g     // Catch: java.lang.Throwable -> L75
            r11 = r0
            r0 = r5
            monitor-exit(r0)
            r0 = r11
            return r0
        L56:
            r0 = r5
            long r0 = r0.f7713b     // Catch: java.lang.Throwable -> L75
            r12 = r0
            r0 = r6
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L69
            r0 = 2
            r9 = r0
            goto L10
        L69:
            r0 = 1
            r9 = r0
            goto L10
        L6f:
            r0 = 0
            r10 = r0
            goto L21
        L75:
            r14 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aay.mo9223a(long):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // com.google.android.gms.internal.ads.dlh
    /* renamed from: a */
    public final boolean mo9222a(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            char c = z ? this.f7716e : this.f7715d;
            z2 = c <= 0 || j >= c;
        }
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.dlh
    /* renamed from: b */
    public final void mo9220b() {
        m13695a(true);
    }

    /* renamed from: b */
    public final void m13694b(int i) {
        synchronized (this) {
            this.f7714c = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dlh
    /* renamed from: c */
    public final void mo9219c() {
        m13695a(true);
    }

    /* renamed from: c */
    public final void m13693c(int i) {
        synchronized (this) {
            this.f7715d = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dlh
    /* renamed from: d */
    public final drn mo9218d() {
        return this.f7712a;
    }

    /* renamed from: d */
    public final void m13692d(int i) {
        synchronized (this) {
            this.f7716e = i * 1000;
        }
    }
}
