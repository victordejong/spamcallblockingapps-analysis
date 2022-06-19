package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.ads.internal.util.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/v.class */
public final class C1453v {

    /* renamed from: a */
    private final String[] f5642a;

    /* renamed from: b */
    private final double[] f5643b;

    /* renamed from: c */
    private final double[] f5644c;

    /* renamed from: d */
    private final int[] f5645d;

    /* renamed from: e */
    private int f5646e = 0;

    public /* synthetic */ C1453v(C1451u c1451u, C1447s c1447s) {
        List list;
        List list2;
        List list3;
        List list4;
        list = c1451u.f5637b;
        int size = list.size();
        list2 = c1451u.f5636a;
        this.f5642a = (String[]) list2.toArray(new String[size]);
        list3 = c1451u.f5637b;
        this.f5643b = m8710c(list3);
        list4 = c1451u.f5638c;
        this.f5644c = m8710c(list4);
        this.f5645d = new int[size];
    }

    /* renamed from: c */
    private static final double[] m8710c(List<Double> list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    /* renamed from: a */
    public final void m8712a(double d) {
        this.f5646e++;
        int i = 0;
        while (true) {
            double[] dArr = this.f5644c;
            if (i < dArr.length) {
                double d2 = dArr[i];
                if (d2 <= d && d < this.f5643b[i]) {
                    int[] iArr = this.f5645d;
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

    /* renamed from: b */
    public final List<C1449t> m8711b() {
        ArrayList arrayList = new ArrayList(this.f5642a.length);
        int i = 0;
        while (true) {
            String[] strArr = this.f5642a;
            if (i < strArr.length) {
                String str = strArr[i];
                double d = this.f5644c[i];
                double d2 = this.f5643b[i];
                int i2 = this.f5645d[i];
                double d3 = i2;
                double d4 = this.f5646e;
                Double.isNaN(d3);
                Double.isNaN(d4);
                arrayList.add(new C1449t(str, d, d2, d3 / d4, i2));
                i++;
            } else {
                return arrayList;
            }
        }
    }
}
