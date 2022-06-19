package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.LinkedHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepx.class */
public class zzepx<K, V, V2> {
    final LinkedHashMap<K, zzeqo<V>> zzjbv;

    public zzepx(int i) {
        this.zzjbv = zzeqa.zzif(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzepx<K, V, V2> zza(K k, zzeqo<V> zzeqoVar) {
        this.zzjbv.put(zzeqh.zza(k, SDKConstants.PARAM_KEY), zzeqh.zza(zzeqoVar, "provider"));
        return this;
    }
}
