package com.google.common.collect;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.common.collect.l */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/l.class */
public final class C8814l {

    /* renamed from: com.google.common.collect.l$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/l$a.class */
    public static final class C8815a extends AbstractC8820p<Map.Entry<K, V>, K> {
        C8815a(Iterator it) {
            super(it);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, K] */
        /* renamed from: b */
        public K mo2600a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /* renamed from: com.google.common.collect.l$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/l$b.class */
    public static final class C8816b extends AbstractC8820p<Map.Entry<K, V>, V> {
        C8816b(Iterator it) {
            super(it);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
        /* renamed from: b */
        public V mo2600a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /* renamed from: a */
    public static boolean m2617a(Map<?, ?> map, Object obj) {
        return C8811j.m2628c(m2614d(map.entrySet().iterator()), obj);
    }

    /* renamed from: b */
    public static boolean m2616b(Map<?, ?> map, Object obj) {
        return C8811j.m2628c(m2611g(map.entrySet().iterator()), obj);
    }

    /* renamed from: c */
    public static boolean m2615c(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return map.entrySet().equals(((Map) obj).entrySet());
    }

    /* renamed from: d */
    static <K, V> Iterator<K> m2614d(Iterator<Map.Entry<K, V>> it) {
        return new C8815a(it);
    }

    /* renamed from: e */
    public static <K, V> void m2613e(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: f */
    public static String m2612f(Map<?, ?> map) {
        StringBuilder m2636a = C8805d.m2636a(map.size());
        m2636a.append('{');
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                m2636a.append(", ");
            }
            z = false;
            m2636a.append(entry.getKey());
            m2636a.append('=');
            m2636a.append(entry.getValue());
        }
        m2636a.append('}');
        return m2636a.toString();
    }

    /* renamed from: g */
    static <K, V> Iterator<V> m2611g(Iterator<Map.Entry<K, V>> it) {
        return new C8816b(it);
    }
}
