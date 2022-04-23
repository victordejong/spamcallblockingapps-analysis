package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.ads.internal.util.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/u.class */
public final class C1451u {

    /* renamed from: a */
    private final List<String> f5636a = new ArrayList();

    /* renamed from: b */
    private final List<Double> f5637b = new ArrayList();

    /* renamed from: c */
    private final List<Double> f5638c = new ArrayList();

    /* renamed from: a */
    public final C1451u m8719a(String str, double d, double d2) {
        int i = 0;
        while (i < this.f5636a.size()) {
            double doubleValue = this.f5638c.get(i).doubleValue();
            double doubleValue2 = this.f5637b.get(i).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.f5636a.add(i, str);
        this.f5638c.add(i, Double.valueOf(d));
        this.f5637b.add(i, Double.valueOf(d2));
        return this;
    }

    /* renamed from: b */
    public final C1453v m8718b() {
        return new C1453v(this, null);
    }
}
