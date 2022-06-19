package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.ads.internal.util.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/i0.class */
public final class C5701i0 {

    /* renamed from: a */
    private final String[] f18484a;

    /* renamed from: b */
    private final double[] f18485b;

    /* renamed from: c */
    private final double[] f18486c;

    /* renamed from: d */
    private final int[] f18487d;

    /* renamed from: e */
    private int f18488e = 0;

    public /* synthetic */ C5701i0(C5693g0 c5693g0, C5697h0 c5697h0) {
        List list;
        List list2;
        List list3;
        List list4;
        list = c5693g0.f18476b;
        int size = list.size();
        list2 = c5693g0.f18475a;
        this.f18484a = (String[]) list2.toArray(new String[size]);
        list3 = c5693g0.f18476b;
        this.f18485b = m18010c(list3);
        list4 = c5693g0.f18477c;
        this.f18486c = m18010c(list4);
        this.f18487d = new int[size];
    }

    /* renamed from: c */
    private static final double[] m18010c(List<Double> list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    /* renamed from: a */
    public final void m18012a(double d) {
        this.f18488e++;
        int i = 0;
        while (true) {
            double[] dArr = this.f18486c;
            if (i < dArr.length) {
                double d2 = dArr[i];
                if (d2 <= d && d < this.f18485b[i]) {
                    int[] iArr = this.f18487d;
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
    public final List<C5689f0> m18011b() {
        ArrayList arrayList = new ArrayList(this.f18484a.length);
        int i = 0;
        while (true) {
            String[] strArr = this.f18484a;
            if (i < strArr.length) {
                String str = strArr[i];
                double d = this.f18486c[i];
                double d2 = this.f18485b[i];
                int i2 = this.f18487d[i];
                arrayList.add(new C5689f0(str, d, d2, i2 / this.f18488e, i2));
                i++;
            } else {
                return arrayList;
            }
        }
    }
}
