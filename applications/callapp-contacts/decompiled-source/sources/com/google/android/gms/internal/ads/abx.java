package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abx.class */
public final class abx implements dvx {

    /* renamed from: a  reason: collision with root package name */
    private final ece f23080a;

    /* renamed from: b  reason: collision with root package name */
    private long f23081b;

    /* renamed from: c  reason: collision with root package name */
    private long f23082c;

    /* renamed from: d  reason: collision with root package name */
    private long f23083d;
    private long e;
    private int f;
    private boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abx() {
        this(15000, 30000, 2500L, 5000L);
    }

    private abx(int i, int i2, long j, long j2) {
        this.f23080a = new ece(true, 65536);
        this.f23081b = 15000000L;
        this.f23082c = 30000000L;
        this.f23083d = 2500000L;
        this.e = 5000000L;
    }

    private final void a(boolean z) {
        this.f = 0;
        this.g = false;
        if (z) {
            this.f23080a.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.dvx
    public final void a() {
        a(false);
    }

    public final void a(int i) {
        synchronized (this) {
            this.f23081b = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dvx
    public final void a(dvy[] dvyVarArr, ebw ebwVar) {
        this.f = 0;
        for (int i = 0; i < dvyVarArr.length; i++) {
            if (ebwVar.f27600b[i] != null) {
                this.f += ede.b(dvyVarArr[i].a());
            }
        }
        this.f23080a.a(this.f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
        if (r12 == false) goto L_0x0063;
     */
    @Override // com.google.android.gms.internal.ads.dvx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            long r0 = r0.f23082c     // Catch: all -> 0x0071
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = 0
            r11 = r0
            goto L_0x0028
        L_0x0016:
            r0 = r6
            r1 = r5
            long r1 = r1.f23081b     // Catch: all -> 0x0071
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0025
            r0 = 2
            r11 = r0
            goto L_0x0028
        L_0x0025:
            r0 = 1
            r11 = r0
        L_0x0028:
            r0 = r5
            com.google.android.gms.internal.ads.ece r0 = r0.f23080a     // Catch: all -> 0x0071
            int r0 = r0.e()     // Catch: all -> 0x0071
            r1 = r5
            int r1 = r1.f     // Catch: all -> 0x0071
            if (r0 < r1) goto L_0x003c
            r0 = 1
            r12 = r0
            goto L_0x003f
        L_0x003c:
            r0 = 0
            r12 = r0
        L_0x003f:
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L_0x0063
            r0 = r10
            r13 = r0
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L_0x0066
            r0 = r10
            r13 = r0
            r0 = r5
            boolean r0 = r0.g     // Catch: all -> 0x0071
            if (r0 == 0) goto L_0x0066
            r0 = r10
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0066
        L_0x0063:
            r0 = 1
            r13 = r0
        L_0x0066:
            r0 = r5
            r1 = r13
            r0.g = r1     // Catch: all -> 0x0071
            r0 = r5
            monitor-exit(r0)
            r0 = r13
            return r0
        L_0x0071:
            r14 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abx.a(long):boolean");
    }

    @Override // com.google.android.gms.internal.ads.dvx
    public final boolean a(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            long j2 = z ? this.e : this.f23083d;
            z2 = j2 <= 0 || j >= j2;
        }
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.dvx
    public final void b() {
        a(true);
    }

    public final void b(int i) {
        synchronized (this) {
            this.f23082c = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dvx
    public final void c() {
        a(true);
    }

    public final void c(int i) {
        synchronized (this) {
            this.f23083d = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.dvx
    public final ebz d() {
        return this.f23080a;
    }

    public final void d(int i) {
        synchronized (this) {
            this.e = i * 1000;
        }
    }
}
