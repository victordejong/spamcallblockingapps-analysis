package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzg.class */
public final class zzbzg implements zzeqb<Set<zzbya<zzbvq>>> {
    private final zzeqo<zzbql> zzftr;
    private final zzbyz zzgbk;

    private zzbzg(zzbyz zzbyzVar, zzeqo<zzbql> zzeqoVar) {
        this.zzgbk = zzbyzVar;
        this.zzftr = zzeqoVar;
    }

    public static zzbzg zzb(zzbyz zzbyzVar, zzeqo<zzbql> zzeqoVar) {
        return new zzbzg(zzbyzVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.singleton(zzbya.zzb(this.zzftr.get(), zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
