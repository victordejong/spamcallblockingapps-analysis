package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfav.class */
public final class zzfav {
    public static zzfaa zza(List<zzfaa> list, zzfaa zzfaaVar) {
        return list.get(0);
    }

    public static zzbdl zzb(Context context, List<zzfaa> list) {
        ArrayList arrayList = new ArrayList();
        for (zzfaa zzfaaVar : list) {
            if (zzfaaVar.zzc) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(zzfaaVar.zza, zzfaaVar.zzb));
            }
        }
        return new zzbdl(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static zzfaa zzc(zzbdl zzbdlVar) {
        return zzbdlVar.zzi ? new zzfaa(-3, 0, true) : new zzfaa(zzbdlVar.zze, zzbdlVar.zzb, false);
    }
}
