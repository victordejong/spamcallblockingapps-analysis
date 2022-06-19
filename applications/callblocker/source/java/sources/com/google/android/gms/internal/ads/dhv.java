package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhv.class */
public final class dhv<K, V> extends dhq<K, V, V> {

    /* renamed from: a */
    private static final dig<Map<Object, Object>> f14385a = dhw.m9444a(Collections.emptyMap());

    /* JADX INFO: Access modifiers changed from: private */
    public dhv(Map<K, dig<V>> map) {
        super(map);
    }

    /* renamed from: a */
    public static <K, V> dhx<K, V> m9445a(int i) {
        return new dhx<>(i);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        LinkedHashMap m9449c = dhs.m9449c(m9453b().size());
        for (Map.Entry<K, dig<V>> entry : m9453b().entrySet()) {
            m9449c.put(entry.getKey(), entry.getValue().mo9430a());
        }
        return Collections.unmodifiableMap(m9449c);
    }
}
