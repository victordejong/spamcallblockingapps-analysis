package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzau.class */
public final class zzau {
    private final String[] zzefq;
    private final double[] zzefr;
    private final double[] zzefs;
    private final int[] zzeft;
    private int zzefu;

    /* JADX INFO: Access modifiers changed from: private */
    public zzau(zzav zzavVar) {
        List list;
        List list2;
        List list3;
        List list4;
        list = zzavVar.zzefw;
        int size = list.size();
        list2 = zzavVar.zzefv;
        this.zzefq = (String[]) list2.toArray(new String[size]);
        list3 = zzavVar.zzefw;
        this.zzefr = zzg(list3);
        list4 = zzavVar.zzefx;
        this.zzefs = zzg(list4);
        this.zzeft = new int[size];
        this.zzefu = 0;
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
        this.zzefu++;
        int i = 0;
        while (true) {
            double[] dArr = this.zzefs;
            if (i < dArr.length) {
                if (dArr[i] <= d && d < this.zzefr[i]) {
                    int[] iArr = this.zzeft;
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

    public final List<zzaw> zzzn() {
        int[] iArr;
        ArrayList arrayList = new ArrayList(this.zzefq.length);
        int i = 0;
        while (true) {
            String[] strArr = this.zzefq;
            if (i < strArr.length) {
                arrayList.add(new zzaw(strArr[i], this.zzefs[i], this.zzefr[i], iArr[i] / this.zzefu, this.zzeft[i]));
                i++;
            } else {
                return arrayList;
            }
        }
    }
}
