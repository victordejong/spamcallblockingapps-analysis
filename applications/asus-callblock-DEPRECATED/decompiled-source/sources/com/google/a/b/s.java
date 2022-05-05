package com.google.a.b;

import com.google.a.a.b;
import com.google.a.a.d;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/a/b/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    static final b.a f3724a = new b.a(e.f3692a, "=", (byte) 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        int i2;
        if (i < 3) {
            d.a(i >= 0);
            i2 = i + 1;
        } else {
            i2 = i < 1073741824 ? (i / 3) + i : Integer.MAX_VALUE;
        }
        return i2;
    }

    public static <K, V> HashMap<K, V> a() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> a(Map<? extends K, ? extends V> map) {
        return new HashMap<>(map);
    }

    public static <K, V> Map.Entry<K, V> a(K k, V v) {
        return new l(k, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(Map<?, ?> map) {
        StringBuilder append = e.a(map.size()).append('{');
        f3724a.a(append, map.entrySet().iterator());
        return append.append('}').toString();
    }
}
