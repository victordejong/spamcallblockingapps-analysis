package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abx.class */
public final class abx implements dvx {

    /* renamed from: a */
    private final ece f39880a;

    /* renamed from: b */
    private long f39881b;

    /* renamed from: c */
    private long f39882c;

    /* renamed from: d */
    private long f39883d;

    /* renamed from: e */
    private long f39884e;

    /* renamed from: f */
    private int f39885f;

    /* renamed from: g */
    private boolean f39886g;

    public abx() {
        this(15000, 30000, 2500L, 5000L);
    }

    private abx(int i, int i2, long j, long j2) {
        this.f39880a = new ece(true, 65536);
        this.f39881b = 15000000L;
        this.f39882c = 30000000L;
        this.f39883d = 2500000L;
        this.f39884e = 5000000L;
    }

    /* renamed from: a */
    private final void m18887a(boolean z) {
        this.f39885f = 0;
        this.f39886g = false;
        if (z) {
            this.f39880a.m15285d();
        }
    }

    @Override // com.google.android.gms.internal.ads.dvx
    /* renamed from: a */
    public final void mo15600a() {
        m18887a(false);
    }

    /* renamed from: a */
    public final void m18888a(int i) {
        synchronized (this) {
            this.f39881b = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dvx
    /* renamed from: a */
    public final void mo15597a(dvy[] dvyVarArr, ebw ebwVar) {
        this.f39885f = 0;
        for (int i = 0; i < dvyVarArr.length; i++) {
            if (ebwVar.f48642b[i] != null) {
                this.f39885f += ede.m15188b(dvyVarArr[i].mo15576a());
            }
        }
        this.f39880a.m15290a(this.f39885f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
        if (r12 == false) goto L28;
     */
    @Override // com.google.android.gms.internal.ads.dvx
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo15599a(long r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            long r0 = r0.f39882c     // Catch: java.lang.Throwable -> L71
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L16
            r0 = 0
            r11 = r0
            goto L28
        L16:
            r0 = r6
            r1 = r5
            long r1 = r1.f39881b     // Catch: java.lang.Throwable -> L71
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L25
            r0 = 2
            r11 = r0
            goto L28
        L25:
            r0 = 1
            r11 = r0
        L28:
            r0 = r5
            com.google.android.gms.internal.ads.ece r0 = r0.f39880a     // Catch: java.lang.Throwable -> L71
            int r0 = r0.m15284e()     // Catch: java.lang.Throwable -> L71
            r1 = r5
            int r1 = r1.f39885f     // Catch: java.lang.Throwable -> L71
            if (r0 < r1) goto L3c
            r0 = 1
            r12 = r0
            goto L3f
        L3c:
            r0 = 0
            r12 = r0
        L3f:
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L63
            r0 = r10
            r13 = r0
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L66
            r0 = r10
            r13 = r0
            r0 = r5
            boolean r0 = r0.f39886g     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L66
            r0 = r10
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L66
        L63:
            r0 = 1
            r13 = r0
        L66:
            r0 = r5
            r1 = r13
            r0.f39886g = r1     // Catch: java.lang.Throwable -> L71
            r0 = r5
            monitor-exit(r0)
            r0 = r13
            return r0
        L71:
            r14 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abx.mo15599a(long):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.gms.internal.ads.dvx
    /* renamed from: a */
    public final boolean mo15598a(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            char c = z ? this.f39884e : this.f39883d;
            z2 = c <= 0 || j >= c;
        }
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.dvx
    /* renamed from: b */
    public final void mo15596b() {
        m18887a(true);
    }

    /* renamed from: b */
    public final void m18886b(int i) {
        synchronized (this) {
            this.f39882c = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dvx
    /* renamed from: c */
    public final void mo15595c() {
        m18887a(true);
    }

    /* renamed from: c */
    public final void m18885c(int i) {
        synchronized (this) {
            this.f39883d = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dvx
    /* renamed from: d */
    public final ebz mo15594d() {
        return this.f39880a;
    }

    /* renamed from: d */
    public final void m18884d(int i) {
        synchronized (this) {
            this.f39884e = i * 1000;
        }
    }
}
