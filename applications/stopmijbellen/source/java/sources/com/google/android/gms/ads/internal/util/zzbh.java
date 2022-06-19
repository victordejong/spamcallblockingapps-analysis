package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbh.class */
public final class zzbh {
    private final List<String> zza = new ArrayList();
    private final List<Double> zzb = new ArrayList();
    private final List<Double> zzc = new ArrayList();

    public final zzbh zza(String str, double d, double d2) {
        int i = 0;
        while (i < this.zza.size()) {
            double doubleValue = this.zzc.get(i).doubleValue();
            double doubleValue2 = this.zzb.get(i).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.zza.add(i, str);
        this.zzc.add(i, Double.valueOf(d));
        this.zzb.add(i, Double.valueOf(d2));
        return this;
    }

    public final zzbj zzb() {
        return new zzbj(this, null);
    }
}
