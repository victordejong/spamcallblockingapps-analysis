package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zk3.class */
final class zk3 implements bm3 {

    /* renamed from: a */
    private final bm3 f32973a;

    /* renamed from: b */
    private final long f32974b;

    public zk3(bm3 bm3Var, long j) {
        this.f32973a = bm3Var;
        this.f32974b = j;
    }

    @Override // com.google.android.gms.internal.ads.bm3
    /* renamed from: a */
    public final int mo8345a(long j) {
        return this.f32973a.mo8345a(j - this.f32974b);
    }

    @Override // com.google.android.gms.internal.ads.bm3
    /* renamed from: b */
    public final boolean mo8344b() {
        return this.f32973a.mo8344b();
    }

    @Override // com.google.android.gms.internal.ads.bm3
    /* renamed from: c */
    public final void mo8343c() {
        this.f32973a.mo8343c();
    }

    @Override // com.google.android.gms.internal.ads.bm3
    /* renamed from: d */
    public final int mo8342d(C7058v4 c7058v4, C7205z3 c7205z3, int i) {
        int mo8342d = this.f32973a.mo8342d(c7058v4, c7205z3, i);
        if (mo8342d == -4) {
            c7205z3.f32800e = Math.max(0L, c7205z3.f32800e + this.f32974b);
            return -4;
        }
        return mo8342d;
    }

    /* renamed from: e */
    public final bm3 m8341e() {
        return this.f32973a;
    }
}
