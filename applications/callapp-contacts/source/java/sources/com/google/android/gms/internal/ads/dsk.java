package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsk.class */
public final class dsk<K, V> extends dse<K, V, V> {

    /* renamed from: a */
    private static final dsv<Map<Object, Object>> f47514a = dsl.m15771a(Collections.emptyMap());

    /* JADX INFO: Access modifiers changed from: private */
    public dsk(Map<K, dsv<V>> map) {
        super(map);
    }

    /* renamed from: a */
    public static <K, V> dsm<K, V> m15772a(int i) {
        return new dsm<>(i);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        LinkedHashMap m15776b = dsg.m15776b(m15779b().size());
        for (Map.Entry<K, dsv<V>> entry : m15779b().entrySet()) {
            m15776b.put(entry.getKey(), entry.getValue().mo14005a());
        }
        return Collections.unmodifiableMap(m15776b);
    }
}
