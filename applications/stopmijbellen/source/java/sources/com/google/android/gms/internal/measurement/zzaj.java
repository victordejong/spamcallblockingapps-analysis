package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaj.class */
public final /* synthetic */ class zzaj {
    public static zzap zza(zzal zzalVar, zzap zzapVar, zzg zzgVar, List<zzap> list) {
        if (zzalVar.zzj(zzapVar.zzc())) {
            zzap zzk = zzalVar.zzk(zzapVar.zzc());
            if (!(zzk instanceof zzai)) {
                throw new IllegalArgumentException(String.format("%s is not a function", zzapVar.zzc()));
            }
            return ((zzai) zzk).zza(zzgVar, list);
        } else if (!"hasOwnProperty".equals(zzapVar.zzc())) {
            throw new IllegalArgumentException(String.format("Object has no function %s", zzapVar.zzc()));
        } else {
            zzh.zza("hasOwnProperty", 1, list);
            return zzalVar.zzj(zzgVar.zza(list.get(0)).zzc()) ? zzap.zzk : zzap.zzl;
        }
    }

    public static Iterator<zzap> zzb(Map<String, zzap> map) {
        return new zzak(map.keySet().iterator());
    }
}
