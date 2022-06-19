package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfej.class */
public final class zzfej {
    public static zzbfi zza(Context context, List<zzfdo> list) {
        ArrayList arrayList = new ArrayList();
        for (zzfdo zzfdoVar : list) {
            if (zzfdoVar.zzc) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(zzfdoVar.zza, zzfdoVar.zzb));
            }
        }
        return new zzbfi(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static zzfdo zzb(List<zzfdo> list, zzfdo zzfdoVar) {
        return list.get(0);
    }

    public static zzfdo zzc(zzbfi zzbfiVar) {
        return zzbfiVar.zzi ? new zzfdo(-3, 0, true) : new zzfdo(zzbfiVar.zze, zzbfiVar.zzb, false);
    }
}
