package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqd.class */
public final class zzeqd<K, V> extends zzepy<K, V, V> {
    private static final zzeqo<Map<Object, Object>> zzjca = zzeqe.zzbb(Collections.emptyMap());

    /* JADX INFO: Access modifiers changed from: private */
    public zzeqd(Map<K, zzeqo<V>> map) {
        super(map);
    }

    public static <K, V> zzeqf<K, V> zzih(int i) {
        return new zzeqf<>(i);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        LinkedHashMap zzif = zzeqa.zzif(zzbmm().size());
        for (Map.Entry<K, zzeqo<V>> entry : zzbmm().entrySet()) {
            zzif.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(zzif);
    }
}
