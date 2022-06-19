package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.wm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wm.class */
public final class C3602wm {

    /* renamed from: a */
    private final String[] f17552a;

    /* renamed from: b */
    private final double[] f17553b;

    /* renamed from: c */
    private final double[] f17554c;

    /* renamed from: d */
    private final int[] f17555d;

    /* renamed from: e */
    private int f17556e;

    /* JADX INFO: Access modifiers changed from: private */
    public C3602wm(C3603wn c3603wn) {
        List list;
        List list2;
        List list3;
        List list4;
        list = c3603wn.f17558b;
        int size = list.size();
        list2 = c3603wn.f17557a;
        this.f17552a = (String[]) list2.toArray(new String[size]);
        list3 = c3603wn.f17558b;
        this.f17553b = m6878a(list3);
        list4 = c3603wn.f17559c;
        this.f17554c = m6878a(list4);
        this.f17555d = new int[size];
        this.f17556e = 0;
    }

    /* renamed from: a */
    private static double[] m6878a(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    /* renamed from: a */
    public final List<C3604wo> m6880a() {
        ArrayList arrayList = new ArrayList(this.f17552a.length);
        for (int i = 0; i < this.f17552a.length; i++) {
            arrayList.add(new C3604wo(this.f17552a[i], this.f17554c[i], this.f17553b[i], this.f17555d[i] / this.f17556e, this.f17555d[i]));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m6879a(double d) {
        this.f17556e++;
        for (int i = 0; i < this.f17554c.length; i++) {
            if (this.f17554c[i] <= d && d < this.f17553b[i]) {
                int[] iArr = this.f17555d;
                iArr[i] = iArr[i] + 1;
            }
            if (d < this.f17554c[i]) {
                return;
            }
        }
    }
}
