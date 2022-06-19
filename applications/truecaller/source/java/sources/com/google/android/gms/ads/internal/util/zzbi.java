package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbi.class */
public final class zzbi {
    private final String[] zza;
    private final double[] zzb;
    private final double[] zzc;
    private final int[] zzd;
    private int zze = 0;

    public /* synthetic */ zzbi(zzbg zzbgVar, zzbh zzbhVar) {
        List list;
        List list2;
        List list3;
        List list4;
        list = zzbgVar.zzb;
        int size = list.size();
        list2 = zzbgVar.zza;
        this.zza = (String[]) list2.toArray(new String[size]);
        list3 = zzbgVar.zzb;
        this.zzb = zzc(list3);
        list4 = zzbgVar.zzc;
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

    public final void zza(double d) {
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

    public final List<zzbf> zzb() {
        ArrayList arrayList = new ArrayList(this.zza.length);
        int i = 0;
        while (true) {
            String[] strArr = this.zza;
            if (i < strArr.length) {
                String str = strArr[i];
                double d = this.zzc[i];
                double d2 = this.zzb[i];
                int i2 = this.zzd[i];
                arrayList.add(new zzbf(str, d, d2, i2 / this.zze, i2));
                i++;
            } else {
                return arrayList;
            }
        }
    }
}
