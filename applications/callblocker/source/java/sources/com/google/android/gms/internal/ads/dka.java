package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dka.class */
public final class dka implements AbstractC2854cc {

    /* renamed from: a */
    private int f14508a;

    /* renamed from: b */
    private int f14509b;

    /* renamed from: c */
    private final int f14510c;

    /* renamed from: d */
    private final float f14511d;

    public dka() {
        this(2500, 1, 1.0f);
    }

    private dka(int i, int i2, float f) {
        this.f14508a = 2500;
        this.f14510c = 1;
        this.f14511d = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2854cc
    /* renamed from: a */
    public final int mo9362a() {
        return this.f14508a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2854cc
    /* renamed from: a */
    public final void mo9361a(zzae zzaeVar) {
        this.f14509b++;
        this.f14508a += (int) (this.f14508a * this.f14511d);
        if (!(this.f14509b <= this.f14510c)) {
            throw zzaeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2854cc
    /* renamed from: b */
    public final int mo9360b() {
        return this.f14509b;
    }
}
