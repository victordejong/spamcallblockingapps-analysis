package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.wg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wg.class */
public final class C7107wg extends AbstractC6287ac {

    /* renamed from: b */
    private static final Object f31572b = new Object();

    /* renamed from: c */
    private final long f31573c;

    /* renamed from: d */
    private final long f31574d;

    public C7107wg(long j, boolean z) {
        this.f31573c = j;
        this.f31574d = j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6287ac
    /* renamed from: a */
    public final int mo9300a() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6287ac
    /* renamed from: b */
    public final C7213zb mo9299b(int i, C7213zb c7213zb, boolean z, long j) {
        C6367ci.m16040c(i, 0, 1);
        c7213zb.f32852a = this.f31574d;
        return c7213zb;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6287ac
    /* renamed from: c */
    public final int mo9298c() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6287ac
    /* renamed from: d */
    public final C7176yb mo9297d(int i, C7176yb c7176yb, boolean z) {
        C6367ci.m16040c(i, 0, 1);
        Object obj = z ? f31572b : null;
        long j = this.f31573c;
        c7176yb.f32455a = obj;
        c7176yb.f32456b = obj;
        c7176yb.f32457c = j;
        return c7176yb;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6287ac
    /* renamed from: e */
    public final int mo9296e(Object obj) {
        return f31572b.equals(obj) ? 0 : -1;
    }
}
