package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wm0.class */
public final class wm0 implements AbstractC7095w4 {

    /* renamed from: a */
    private final tn3 f31611a = new tn3(true, 65536);

    /* renamed from: b */
    private long f31612b = 15000000;

    /* renamed from: c */
    private long f31613c = 30000000;

    /* renamed from: d */
    private long f31614d = 2500000;

    /* renamed from: e */
    private long f31615e = 5000000;

    /* renamed from: f */
    private int f31616f;

    /* renamed from: g */
    private boolean f31617g;

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: a */
    public final boolean mo9563a() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: b */
    public final void mo9562b() {
        m9551m(true);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: c */
    public final void mo9561c() {
        m9551m(true);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: d */
    public final boolean mo9560d(long j, float f, boolean z, long j2) {
        char c = z ? this.f31615e : this.f31614d;
        return c <= 0 || j >= c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: e */
    public final long mo9559e() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: f */
    public final tn3 mo9558f() {
        return this.f31611a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: g */
    public final boolean mo9557g(long j, long j2, float f) {
        boolean z = j2 > this.f31613c ? false : j2 < this.f31612b ? true : true;
        int m10595g = this.f31611a.m10595g();
        int i = this.f31616f;
        boolean z2 = true;
        if (!z) {
            z2 = z && this.f31617g && m10595g < i;
        }
        this.f31617g = z2;
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: h */
    public final void mo9556h(AbstractC6986t6[] abstractC6986t6Arr, dv3 dv3Var, mm3[] mm3VarArr) {
        this.f31616f = 0;
        for (int i = 0; i < 2; i++) {
            if (mm3VarArr[i] != null) {
                this.f31616f += abstractC6986t6Arr[i].mo10121O() != 1 ? 131072000 : 13107200;
            }
        }
        this.f31611a.m10600b(this.f31616f);
    }

    /* renamed from: i */
    public final void m9555i(int i) {
        synchronized (this) {
            this.f31612b = i * 1000;
        }
    }

    /* renamed from: j */
    public final void m9554j(int i) {
        synchronized (this) {
            this.f31613c = i * 1000;
        }
    }

    /* renamed from: k */
    public final void m9553k(int i) {
        synchronized (this) {
            this.f31614d = i * 1000;
        }
    }

    /* renamed from: l */
    public final void m9552l(int i) {
        synchronized (this) {
            this.f31615e = i * 1000;
        }
    }

    /* renamed from: m */
    final void m9551m(boolean z) {
        this.f31616f = 0;
        this.f31617g = false;
        if (z) {
            this.f31611a.m10601a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    public final void zza() {
        m9551m(false);
    }
}
