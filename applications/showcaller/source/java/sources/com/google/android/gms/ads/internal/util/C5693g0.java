package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.ads.internal.util.g0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/g0.class */
public final class C5693g0 {

    /* renamed from: a */
    private final List<String> f18475a = new ArrayList();

    /* renamed from: b */
    private final List<Double> f18476b = new ArrayList();

    /* renamed from: c */
    private final List<Double> f18477c = new ArrayList();

    /* renamed from: d */
    public final C5693g0 m18020d(String str, double d, double d2) {
        int i = 0;
        while (i < this.f18475a.size()) {
            double doubleValue = this.f18477c.get(i).doubleValue();
            double doubleValue2 = this.f18476b.get(i).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.f18475a.add(i, str);
        this.f18477c.add(i, Double.valueOf(d));
        this.f18476b.add(i, Double.valueOf(d2));
        return this;
    }

    /* renamed from: e */
    public final C5701i0 m18019e() {
        return new C5701i0(this, null);
    }
}
