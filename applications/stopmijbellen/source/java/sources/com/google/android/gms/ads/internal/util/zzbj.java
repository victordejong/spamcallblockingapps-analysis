package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbj.class */
public final class zzbj {
    private final String[] zza;
    private final double[] zzb;
    private final double[] zzc;
    private final int[] zzd;
    private int zze = 0;

    public /* synthetic */ zzbj(zzbh zzbhVar, zzbi zzbiVar) {
        List list;
        List list2;
        List list3;
        List list4;
        list = zzbhVar.zzb;
        int size = list.size();
        list2 = zzbhVar.zza;
        this.zza = (String[]) list2.toArray(new String[size]);
        list3 = zzbhVar.zzb;
        this.zzb = zzc(list3);
        list4 = zzbhVar.zzc;
        this.zzc = zzc(list4);
        this.zzd = new int[size];
    }

    private static final double[] zzc(List<Double> list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    public final List<zzbg> zza() {
        ArrayList arrayList = new ArrayList(this.zza.length);
        int i = 0;
        while (true) {
            String[] strArr = this.zza;
            if (i < strArr.length) {
                String str = strArr[i];
                double d = this.zzc[i];
                double d2 = this.zzb[i];
                int i2 = this.zzd[i];
                arrayList.add(new zzbg(str, d, d2, i2 / this.zze, i2));
                i++;
            } else {
                return arrayList;
            }
        }
    }

    public final void zzb(double d) {
        this.zze++;
        int i = 0;
        while (true) {
            double[] dArr = this.zzc;
            if (i < dArr.length) {
                double d2 = dArr[i];
                if (d2 <= d && d < this.zzb[i]) {
                    int[] iArr = this.zzd;
                    iArr[i] = iArr[i] + 1;
                }
                if (d < d2) {
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }
}
