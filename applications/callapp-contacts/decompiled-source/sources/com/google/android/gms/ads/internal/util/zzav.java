package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzav.class */
public final class zzav {
    private final List<String> zzehy = new ArrayList();
    private final List<Double> zzehz = new ArrayList();
    private final List<Double> zzeia = new ArrayList();

    public final zzav zza(String str, double d2, double d3) {
        int i = 0;
        while (i < this.zzehy.size()) {
            double doubleValue = this.zzeia.get(i).doubleValue();
            double doubleValue2 = this.zzehz.get(i).doubleValue();
            if (d2 < doubleValue || (doubleValue == d2 && d3 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.zzehy.add(i, str);
        this.zzeia.add(i, Double.valueOf(d2));
        this.zzehz.add(i, Double.valueOf(d3));
        return this;
    }

    public final zzau zzaah() {
        return new zzau(this, null);
    }
}
