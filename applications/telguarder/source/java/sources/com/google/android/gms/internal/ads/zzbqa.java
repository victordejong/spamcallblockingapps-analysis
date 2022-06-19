package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqa.class */
public final class zzbqa implements zzeqb<zzbya<zzq>> {
    private final zzeqo<zzboq> zzftr;
    private final zzbps zzfxv;

    private zzbqa(zzbps zzbpsVar, zzeqo<zzboq> zzeqoVar) {
        this.zzfxv = zzbpsVar;
        this.zzftr = zzeqoVar;
    }

    public static zzbqa zza(zzbps zzbpsVar, zzeqo<zzboq> zzeqoVar) {
        return new zzbqa(zzbpsVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
