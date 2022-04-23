package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsk.class */
public final class dsk<K, V> extends dse<K, V, V> {

    /* renamed from: a  reason: collision with root package name */
    private static final dsv<Map<Object, Object>> f27158a = dsl.a(Collections.emptyMap());

    private dsk(Map<K, dsv<V>> map) {
        super(map);
    }

    public static <K, V> dsm<K, V> a(int i) {
        return new dsm<>(i);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        LinkedHashMap b2 = dsg.b(b().size());
        for (Map.Entry<K, dsv<V>> entry : b().entrySet()) {
            b2.put(entry.getKey(), entry.getValue().a());
        }
        return Collections.unmodifiableMap(b2);
    }
}
