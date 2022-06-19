package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwk.class */
public final class zzbwk implements zzeqb<zzbrp> {
    private final zzbwg zzgav;
    private final zzeqo<Set<zzbya<zzbrr>>> zzgaw;

    private zzbwk(zzbwg zzbwgVar, zzeqo<Set<zzbya<zzbrr>>> zzeqoVar) {
        this.zzgav = zzbwgVar;
        this.zzgaw = zzeqoVar;
    }

    public static zzbwk zza(zzbwg zzbwgVar, zzeqo<Set<zzbya<zzbrr>>> zzeqoVar) {
        return new zzbwk(zzbwgVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbrp) zzeqh.zza(this.zzgav.zzc(this.zzgaw.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
