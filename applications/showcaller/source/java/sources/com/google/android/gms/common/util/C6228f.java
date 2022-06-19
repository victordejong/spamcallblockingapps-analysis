package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p020b.p036e.C1489a;
import p020b.p036e.C1491b;
/* renamed from: com.google.android.gms.common.util.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/f.class */
public final class C6228f {
    @RecentlyNonNull
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m16817a() {
        return Collections.emptyList();
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: b */
    public static <T> List<T> m16816b(@RecentlyNonNull T t) {
        return Collections.singletonList(t);
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: c */
    public static <T> List<T> m16815c(@RecentlyNonNull T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : m16816b(tArr[0]) : m16817a();
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static <K, V> Map<K, V> m16814d(@RecentlyNonNull K k, @RecentlyNonNull V v, @RecentlyNonNull K k2, @RecentlyNonNull V v2, @RecentlyNonNull K k3, @RecentlyNonNull V v3) {
        Map m16809i = m16809i(3, false);
        m16809i.put(k, v);
        m16809i.put(k2, v2);
        m16809i.put(k3, v3);
        return Collections.unmodifiableMap(m16809i);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static <K, V> Map<K, V> m16813e(@RecentlyNonNull K[] kArr, @RecentlyNonNull V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length != length2) {
            StringBuilder sb = new StringBuilder(66);
            sb.append("Key and values array lengths not equal: ");
            sb.append(length);
            sb.append(" != ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString());
        } else if (length == 0) {
            return Collections.emptyMap();
        } else {
            if (length == 1) {
                return Collections.singletonMap(kArr[0], vArr[0]);
            }
            Map m16809i = m16809i(length, false);
            for (int i = 0; i < kArr.length; i++) {
                m16809i.put(kArr[i], vArr[i]);
            }
            return Collections.unmodifiableMap(m16809i);
        }
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: f */
    public static <T> Set<T> m16812f(@RecentlyNonNull T t, @RecentlyNonNull T t2, @RecentlyNonNull T t3) {
        Set m16810h = m16810h(3, false);
        m16810h.add(t);
        m16810h.add(t2);
        m16810h.add(t3);
        return Collections.unmodifiableSet(m16810h);
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: g */
    public static <T> Set<T> m16811g(@RecentlyNonNull T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            if (length == 1) {
                return Collections.singleton(tArr[0]);
            }
            if (length == 2) {
                T t = tArr[0];
                T t2 = tArr[1];
                Set m16810h = m16810h(2, false);
                m16810h.add(t);
                m16810h.add(t2);
                return Collections.unmodifiableSet(m16810h);
            } else if (length == 3) {
                return m16812f(tArr[0], tArr[1], tArr[2]);
            } else {
                if (length != 4) {
                    Set m16810h2 = m16810h(length, false);
                    Collections.addAll(m16810h2, tArr);
                    return Collections.unmodifiableSet(m16810h2);
                }
                T t3 = tArr[0];
                T t4 = tArr[1];
                T t5 = tArr[2];
                T t6 = tArr[3];
                Set m16810h3 = m16810h(4, false);
                m16810h3.add(t3);
                m16810h3.add(t4);
                m16810h3.add(t5);
                m16810h3.add(t6);
                return Collections.unmodifiableSet(m16810h3);
            }
        }
        return Collections.emptySet();
    }

    /* renamed from: h */
    private static <T> Set<T> m16810h(int i, boolean z) {
        return i <= (true != z ? 256 : 128) ? new C1491b(i) : new HashSet(i, true != z ? 1.0f : 0.75f);
    }

    /* renamed from: i */
    private static <K, V> Map<K, V> m16809i(int i, boolean z) {
        return i <= 256 ? new C1489a(i) : new HashMap(i, 1.0f);
    }
}
