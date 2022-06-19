package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpq.class */
public final class zzdpq {
    private HashMap<zzdpi, zzdpp<? extends zzbnt>> zzhom = new HashMap<>();

    public final <AdT extends zzbnt> zzdpp<AdT> zza(zzdpi zzdpiVar, Context context, zzdov zzdovVar, zzdpx<AdT> zzdpxVar) {
        zzdpp<? extends zzbnt> zzdppVar = this.zzhom.get(zzdpiVar);
        zzdpp<? extends zzbnt> zzdppVar2 = zzdppVar;
        if (zzdppVar == null) {
            zzdpb zzdpbVar = new zzdpb(zzdpf.zza(zzdpiVar, context));
            zzdppVar2 = new zzdpp<>(zzdpbVar, new zzdpu(zzdpbVar, zzdovVar, zzdpxVar));
            this.zzhom.put(zzdpiVar, zzdppVar2);
        }
        return (zzdpp<AdT>) zzdppVar2;
    }
}
