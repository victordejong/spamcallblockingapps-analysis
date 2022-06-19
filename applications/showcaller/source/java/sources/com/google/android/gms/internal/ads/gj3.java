package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gj3.class */
public final class gj3<K, V> extends xi3<K, V, V> {

    /* renamed from: b */
    private static final pj3<Map<Object, Object>> f23370b = dj3.m15781a(Collections.emptyMap());

    public /* synthetic */ gj3(Map map, ej3 ej3Var) {
        super(map);
    }

    /* renamed from: c */
    public static <K, V> fj3<K, V> m14926c(int i) {
        return new fj3<>(i, null);
    }

    /* renamed from: d */
    public final Map<K, V> mo8141b() {
        LinkedHashMap m8817c = yi3.m8817c(m9149a().size());
        for (Map.Entry<K, pj3<V>> entry : m9149a().entrySet()) {
            m8817c.put(entry.getKey(), entry.getValue().mo8141b());
        }
        return Collections.unmodifiableMap(m8817c);
    }
}
