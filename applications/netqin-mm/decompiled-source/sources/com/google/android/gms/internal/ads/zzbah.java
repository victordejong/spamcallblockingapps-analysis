package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbah.class */
public final class zzbah {

    /* renamed from: a */
    public final List<String> f24708a = new ArrayList();

    /* renamed from: b */
    public final List<Double> f24709b = new ArrayList();

    /* renamed from: c */
    public final List<Double> f24710c = new ArrayList();

    /* renamed from: a */
    public final zzbac m15969a() {
        return new zzbac(this, null);
    }

    /* renamed from: a */
    public final zzbah m15967a(String str, double d, double d2) {
        int i = 0;
        while (i < this.f24708a.size()) {
            double doubleValue = this.f24710c.get(i).doubleValue();
            double doubleValue2 = this.f24709b.get(i).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.f24708a.add(i, str);
        this.f24710c.add(i, Double.valueOf(d));
        this.f24709b.add(i, Double.valueOf(d2));
        return this;
    }
}
