package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblk.class */
public final class zzblk {
    public static List<String> zza() {
        ArrayList arrayList = new ArrayList();
        zzc(arrayList, zzbml.zzc("gad:dynamite_module:experiment_id", ""));
        zzc(arrayList, zzbmv.zza);
        zzc(arrayList, zzbmv.zzb);
        zzc(arrayList, zzbmv.zzc);
        zzc(arrayList, zzbmv.zzd);
        zzc(arrayList, zzbmv.zze);
        zzc(arrayList, zzbmv.zzk);
        zzc(arrayList, zzbmv.zzf);
        zzc(arrayList, zzbmv.zzg);
        zzc(arrayList, zzbmv.zzh);
        zzc(arrayList, zzbmv.zzi);
        zzc(arrayList, zzbmv.zzj);
        return arrayList;
    }

    public static List<String> zzb() {
        ArrayList arrayList = new ArrayList();
        zzc(arrayList, zzbng.zza);
        return arrayList;
    }

    private static void zzc(List<String> list, zzbml<String> zzbmlVar) {
        String zze = zzbmlVar.zze();
        if (!TextUtils.isEmpty(zze)) {
            list.add(zze);
        }
    }
}
