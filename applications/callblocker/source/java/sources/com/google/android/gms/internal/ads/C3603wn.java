package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.wn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wn.class */
public final class C3603wn {

    /* renamed from: a */
    private final List<String> f17557a = new ArrayList();

    /* renamed from: b */
    private final List<Double> f17558b = new ArrayList();

    /* renamed from: c */
    private final List<Double> f17559c = new ArrayList();

    /* renamed from: a */
    public final C3602wm m6877a() {
        return new C3602wm(this);
    }

    /* renamed from: a */
    public final C3603wn m6875a(String str, double d, double d2) {
        int i = 0;
        while (i < this.f17557a.size()) {
            double doubleValue = this.f17559c.get(i).doubleValue();
            double doubleValue2 = this.f17558b.get(i).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.f17557a.add(i, str);
        this.f17559c.add(i, Double.valueOf(d));
        this.f17558b.add(i, Double.valueOf(d2));
        return this;
    }
}
