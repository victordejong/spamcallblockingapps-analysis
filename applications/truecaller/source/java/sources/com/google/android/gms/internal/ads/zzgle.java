package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgle.class */
public final class zzgle<K, V> extends zzgkw<K, V, V> {
    private static final zzgln<Map<Object, Object>> zza = zzglb.zza(Collections.emptyMap());

    public /* synthetic */ zzgle(Map map, zzglc zzglcVar) {
        super(map);
    }

    public static <K, V> zzgld<K, V> zzc(int i) {
        return new zzgld<>(i, null);
    }

    /* renamed from: zzd */
    public final Map<K, V> zzb() {
        LinkedHashMap zzc = zzgkx.zzc(zza().size());
        for (Map.Entry<K, zzgln<V>> entry : zza().entrySet()) {
            zzc.put(entry.getKey(), entry.getValue().zzb());
        }
        return Collections.unmodifiableMap(zzc);
    }
}
