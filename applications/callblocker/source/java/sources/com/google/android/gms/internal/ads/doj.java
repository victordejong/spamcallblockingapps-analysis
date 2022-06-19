package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/doj.class */
final class doj implements doh {

    /* renamed from: a */
    private final int f15134a;

    /* renamed from: b */
    private final int f15135b;

    /* renamed from: c */
    private final dsk f15136c;

    public doj(dog dogVar) {
        this.f15136c = dogVar.f15124a;
        this.f15136c.m8733c(12);
        this.f15134a = this.f15136c.m8719o();
        this.f15135b = this.f15136c.m8719o();
    }

    @Override // com.google.android.gms.internal.ads.doh
    /* renamed from: a */
    public final int mo8992a() {
        return this.f15135b;
    }

    @Override // com.google.android.gms.internal.ads.doh
    /* renamed from: b */
    public final int mo8991b() {
        return this.f15134a == 0 ? this.f15136c.m8719o() : this.f15134a;
    }

    @Override // com.google.android.gms.internal.ads.doh
    /* renamed from: c */
    public final boolean mo8990c() {
        return this.f15134a != 0;
    }
}
