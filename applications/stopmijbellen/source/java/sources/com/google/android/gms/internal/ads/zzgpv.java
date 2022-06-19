package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpv.class */
public final class zzgpv<K, V> extends zzgpn<K, V, V> {
    private static final zzgqe<Map<Object, Object>> zza = zzgps.zza(Collections.emptyMap());

    public /* synthetic */ zzgpv(Map map, zzgpt zzgptVar) {
        super(map);
    }

    public static <K, V> zzgpu<K, V> zzc(int i) {
        return new zzgpu<>(i, null);
    }

    /* renamed from: zzd */
    public final Map<K, V> zzb() {
        LinkedHashMap zzb = zzgpo.zzb(zza().size());
        for (Map.Entry<K, zzgqe<V>> entry : zza().entrySet()) {
            zzb.put(entry.getKey(), entry.getValue().zzb());
        }
        return Collections.unmodifiableMap(zzb);
    }
}
