package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdz.class */
public final class zzcdz implements zzeqb<zzcea> {
    private final zzeqo<zzcch> zzfih;
    private final zzeqo<zzccd> zzgcy;

    public zzcdz(zzeqo<zzccd> zzeqoVar, zzeqo<zzcch> zzeqoVar2) {
        this.zzgcy = zzeqoVar;
        this.zzfih = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcea(this.zzgcy.get(), this.zzfih.get());
    }
}
