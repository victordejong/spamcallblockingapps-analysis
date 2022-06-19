package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzau.class */
public final class zzau {
    private final String[] zzeht;
    private final double[] zzehu;
    private final double[] zzehv;
    private final int[] zzehw;
    private int zzehx;

    /* JADX INFO: Access modifiers changed from: private */
    public zzau(zzav zzavVar) {
        List list;
        List list2;
        List list3;
        List list4;
        list = zzavVar.zzehz;
        int size = list.size();
        list2 = zzavVar.zzehy;
        this.zzeht = (String[]) list2.toArray(new String[size]);
        list3 = zzavVar.zzehz;
        this.zzehu = zzg(list3);
        list4 = zzavVar.zzeia;
        this.zzehv = zzg(list4);
        this.zzehw = new int[size];
        this.zzehx = 0;
    }

    private static double[] zzg(List<Double> list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    public final void zza(double d) {
        this.zzehx++;
        int i = 0;
        while (true) {
            double[] dArr = this.zzehv;
            if (i < dArr.length) {
                if (dArr[i] <= d && d < this.zzehu[i]) {
                    int[] iArr = this.zzehw;
                    iArr[i] = iArr[i] + 1;
                }
                if (d < dArr[i]) {
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public final List<zzaw> zzaag() {
        int[] iArr;
        ArrayList arrayList = new ArrayList(this.zzeht.length);
        int i = 0;
        while (true) {
            String[] strArr = this.zzeht;
            if (i < strArr.length) {
                arrayList.add(new zzaw(strArr[i], this.zzehv[i], this.zzehu[i], iArr[i] / this.zzehx, this.zzehw[i]));
                i++;
            } else {
                return arrayList;
            }
        }
    }
}
