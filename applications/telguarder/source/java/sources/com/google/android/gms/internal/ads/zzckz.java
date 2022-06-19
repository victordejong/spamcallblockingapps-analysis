package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckz.class */
public final class zzckz implements zzeqb<zzcla> {
    private final zzeqo<String> zzgmg;
    private final zzeqo<zzckw> zzgmh;

    public zzckz(zzeqo<String> zzeqoVar, zzeqo<zzckw> zzeqoVar2) {
        this.zzgmg = zzeqoVar;
        this.zzgmh = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcla(this.zzgmg.get(), this.zzgmh.get());
    }
}
