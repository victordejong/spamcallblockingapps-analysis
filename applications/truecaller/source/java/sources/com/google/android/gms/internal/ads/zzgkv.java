package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkv.class */
public class zzgkv<K, V, V2> {
    public final LinkedHashMap<K, zzgln<V>> zza;

    public zzgkv(int i) {
        this.zza = zzgkx.zzc(i);
    }

    public final zzgkv<K, V, V2> zza(K k, zzgln<V> zzglnVar) {
        LinkedHashMap<K, zzgln<V>> linkedHashMap = this.zza;
        zzgli.zza(k, AnalyticsConstants.KEY);
        zzgli.zza(zzglnVar, "provider");
        linkedHashMap.put(k, zzglnVar);
        return this;
    }
}
