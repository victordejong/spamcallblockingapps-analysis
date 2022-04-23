package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbac.class */
public final class zzbac {

    /* renamed from: a */
    public final String[] f24696a;

    /* renamed from: b */
    public final double[] f24697b;

    /* renamed from: c */
    public final double[] f24698c;

    /* renamed from: d */
    public final int[] f24699d;

    /* renamed from: e */
    public int f24700e;

    public zzbac(zzbah zzbahVar) {
        List list;
        List list2;
        List list3;
        List list4;
        list = zzbahVar.f24709b;
        int size = list.size();
        list2 = zzbahVar.f24708a;
        this.f24696a = (String[]) list2.toArray(new String[size]);
        list3 = zzbahVar.f24709b;
        this.f24697b = m15975a(list3);
        list4 = zzbahVar.f24710c;
        this.f24698c = m15975a(list4);
        this.f24699d = new int[size];
        this.f24700e = 0;
    }

    /* renamed from: a */
    public static double[] m15975a(List<Double> list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    /* renamed from: a */
    public final List<zzbae> m15977a() {
        ArrayList arrayList = new ArrayList(this.f24696a.length);
        int i = 0;
        while (true) {
            String[] strArr = this.f24696a;
            if (i >= strArr.length) {
                return arrayList;
            }
            String str = strArr[i];
            double d = this.f24698c[i];
            double d2 = this.f24697b[i];
            int[] iArr = this.f24699d;
            double d3 = iArr[i];
            double d4 = this.f24700e;
            Double.isNaN(d3);
            Double.isNaN(d4);
            arrayList.add(new zzbae(str, d, d2, d3 / d4, iArr[i]));
            i++;
        }
    }

    /* renamed from: a */
    public final void m15976a(double d) {
        this.f24700e++;
        int i = 0;
        while (true) {
            double[] dArr = this.f24698c;
            if (i < dArr.length) {
                if (dArr[i] <= d && d < this.f24697b[i]) {
                    int[] iArr = this.f24699d;
                    iArr[i] = iArr[i] + 1;
                }
                if (d >= this.f24698c[i]) {
                    i++;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
