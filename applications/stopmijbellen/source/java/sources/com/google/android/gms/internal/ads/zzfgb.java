package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfgb.class */
public final class zzfgb {
    private final HashMap<zzffr, zzfga<?, ?>> zza = new HashMap<>();

    public final <R extends zzdea<AdT>, AdT extends zzdav> zzfga<R, AdT> zza(zzffr zzffrVar, Context context, zzffj zzffjVar, zzfgh<R, AdT> zzfghVar) {
        zzfga<R, AdT> zzfgaVar = (zzfga<R, AdT>) this.zza.get(zzffrVar);
        if (zzfgaVar == null) {
            zzffo zzffoVar = new zzffo(zzffu.zza(zzffrVar, context));
            zzfga<R, AdT> zzfgaVar2 = new zzfga<>(zzffoVar, new zzfgj(zzffoVar, zzffjVar, zzfghVar));
            this.zza.put(zzffrVar, zzfgaVar2);
            return zzfgaVar2;
        }
        return zzfgaVar;
    }
}
