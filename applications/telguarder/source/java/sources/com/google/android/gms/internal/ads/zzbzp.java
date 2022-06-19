package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzp.class */
public final class zzbzp implements zzeqb<Set<zzbya<zzbxt>>> {
    private final zzeqo<zzcak> zzftr;

    private zzbzp(zzeqo<zzcak> zzeqoVar) {
        this.zzftr = zzeqoVar;
    }

    public static zzbzp zzw(zzeqo<zzcak> zzeqoVar) {
        return new zzbzp(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.singleton(zzbya.zzb(this.zzftr.get(), zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
