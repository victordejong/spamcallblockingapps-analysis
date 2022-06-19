package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzav.class */
public final class zzav {
    private final List<String> zzefv = new ArrayList();
    private final List<Double> zzefw = new ArrayList();
    private final List<Double> zzefx = new ArrayList();

    public final zzav zza(String str, double d, double d2) {
        int i = 0;
        while (i < this.zzefv.size()) {
            double doubleValue = this.zzefx.get(i).doubleValue();
            double doubleValue2 = this.zzefw.get(i).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.zzefv.add(i, str);
        this.zzefx.add(i, Double.valueOf(d));
        this.zzefw.add(i, Double.valueOf(d2));
        return this;
    }

    public final zzau zzzo() {
        return new zzau(this);
    }
}
