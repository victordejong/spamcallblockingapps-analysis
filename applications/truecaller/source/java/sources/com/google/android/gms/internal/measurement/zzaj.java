package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzaj.class */
public final /* synthetic */ class zzaj {
    public static zzap zza(zzal zzalVar, zzap zzapVar, zzg zzgVar, List list) {
        if (zzalVar.zzt(zzapVar.zzi())) {
            zzap zzf = zzalVar.zzf(zzapVar.zzi());
            if (!(zzf instanceof zzai)) {
                throw new IllegalArgumentException(String.format("%s is not a function", zzapVar.zzi()));
            }
            return ((zzai) zzf).zza(zzgVar, list);
        } else if (!"hasOwnProperty".equals(zzapVar.zzi())) {
            throw new IllegalArgumentException(String.format("Object has no function %s", zzapVar.zzi()));
        } else {
            zzh.zzh("hasOwnProperty", 1, list);
            return zzalVar.zzt(zzgVar.zzb((zzap) list.get(0)).zzi()) ? zzap.zzk : zzap.zzl;
        }
    }

    public static Iterator zzb(Map map) {
        return new zzak(map.keySet().iterator());
    }
}
