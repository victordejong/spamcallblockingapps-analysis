package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnu.class */
public final class zzdnu {
    public static zzdmz zza(List<zzdmz> list, zzdmz zzdmzVar) {
        return list.get(0);
    }

    public static zzvs zzb(Context context, List<zzdmz> list) {
        ArrayList arrayList = new ArrayList();
        for (zzdmz zzdmzVar : list) {
            if (zzdmzVar.zzhkf) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(zzdmzVar.width, zzdmzVar.height));
            }
        }
        return new zzvs(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static zzdmz zzh(zzvs zzvsVar) {
        return zzvsVar.zzcii ? new zzdmz(-3, 0, true) : new zzdmz(zzvsVar.width, zzvsVar.height, false);
    }
}
