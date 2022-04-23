package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzq.class */
public final class zzq implements zzan {

    /* renamed from: a */
    public int f28841a;

    /* renamed from: b */
    public int f28842b;

    /* renamed from: c */
    public final int f28843c;

    /* renamed from: d */
    public final float f28844d;

    public zzq() {
        this(2500, 1, 1.0f);
    }

    public zzq(int i, int i2, float f) {
        this.f28841a = 2500;
        this.f28843c = 1;
        this.f28844d = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzan
    /* renamed from: a */
    public final void mo11573a(zzao zzaoVar) throws zzao {
        boolean z = true;
        int i = this.f28842b + 1;
        this.f28842b = i;
        int i2 = this.f28841a;
        this.f28841a = i2 + ((int) (i2 * this.f28844d));
        if (i > this.f28843c) {
            z = false;
        }
        if (!z) {
            throw zzaoVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzan
    public final int zzb() {
        return this.f28841a;
    }

    @Override // com.google.android.gms.internal.ads.zzan
    public final int zzc() {
        return this.f28842b;
    }
}
