package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbze.class */
public final class zzbze implements zzeqb<Set<zzbya<zzbsa>>> {
    private final zzeqo<zzbql> zzftr;
    private final zzbyz zzgbk;

    private zzbze(zzbyz zzbyzVar, zzeqo<zzbql> zzeqoVar) {
        this.zzgbk = zzbyzVar;
        this.zzftr = zzeqoVar;
    }

    public static zzbze zza(zzbyz zzbyzVar, zzeqo<zzbql> zzeqoVar) {
        return new zzbze(zzbyzVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.singleton(zzbya.zzb(this.zzftr.get(), zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
