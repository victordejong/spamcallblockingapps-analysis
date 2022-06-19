package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabq.class */
public final class zzabq {
    private static void zza(List<String> list, zzacx<String> zzacxVar) {
        String str = zzacxVar.get();
        if (!TextUtils.isEmpty(str)) {
            list.add(str);
        }
    }

    public static List<String> zzsg() {
        ArrayList arrayList = new ArrayList();
        zza(arrayList, zzacx.zzh("gad:dynamite_module:experiment_id", ""));
        zza(arrayList, zzadg.zzddj);
        zza(arrayList, zzadg.zzddk);
        zza(arrayList, zzadg.zzddl);
        zza(arrayList, zzadg.zzddm);
        zza(arrayList, zzadg.zzddn);
        zza(arrayList, zzadg.zzddt);
        zza(arrayList, zzadg.zzddo);
        zza(arrayList, zzadg.zzddp);
        zza(arrayList, zzadg.zzddq);
        zza(arrayList, zzadg.zzddr);
        zza(arrayList, zzadg.zzdds);
        return arrayList;
    }

    public static List<String> zzsh() {
        ArrayList arrayList = new ArrayList();
        zza(arrayList, zzadt.zzdey);
        return arrayList;
    }
}
