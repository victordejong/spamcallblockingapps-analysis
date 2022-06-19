package com.google.android.gms.common.util;

import androidx.p013b.C0373a;
import androidx.p013b.C0375b;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.common.util.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/f.class */
public final class C2709f {
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m13873a() {
        return Collections.emptyList();
    }

    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m13871a(T t) {
        return Collections.singletonList(t);
    }

    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m13868a(T... tArr) {
        List<T> m13871a;
        switch (tArr.length) {
            case 0:
                m13871a = m13873a();
                break;
            case 1:
                m13871a = m13871a(tArr[0]);
                break;
            default:
                m13871a = Collections.unmodifiableList(Arrays.asList(tArr));
                break;
        }
        return m13871a;
    }

    /* renamed from: a */
    public static <K, V> Map<K, V> m13869a(K k, V v, K k2, V v2, K k3, V v3) {
        Map m13866b = m13866b(3, false);
        m13866b.put(k, v);
        m13866b.put(k2, v2);
        m13866b.put(k3, v3);
        return Collections.unmodifiableMap(m13866b);
    }

    /* renamed from: a */
    public static <K, V> Map<K, V> m13867a(K[] kArr, V[] vArr) {
        Map<K, V> singletonMap;
        if (kArr.length != vArr.length) {
            throw new IllegalArgumentException(new StringBuilder(66).append("Key and values array lengths not equal: ").append(kArr.length).append(" != ").append(vArr.length).toString());
        }
        switch (kArr.length) {
            case 0:
                singletonMap = Collections.emptyMap();
                break;
            case 1:
                singletonMap = Collections.singletonMap(kArr[0], vArr[0]);
                break;
            default:
                Map m13866b = m13866b(kArr.length, false);
                for (int i = 0; i < kArr.length; i++) {
                    m13866b.put(kArr[i], vArr[i]);
                }
                singletonMap = Collections.unmodifiableMap(m13866b);
                break;
        }
        return singletonMap;
    }

    /* renamed from: a */
    private static <T> Set<T> m13872a(int i, boolean z) {
        return i <= (z ? 128 : 256) ? new C0375b(i) : new HashSet(i, z ? 0.75f : 1.0f);
    }

    @Deprecated
    /* renamed from: a */
    public static <T> Set<T> m13870a(T t, T t2, T t3) {
        Set m13872a = m13872a(3, false);
        m13872a.add(t);
        m13872a.add(t2);
        m13872a.add(t3);
        return Collections.unmodifiableSet(m13872a);
    }

    /* renamed from: b */
    private static <K, V> Map<K, V> m13866b(int i, boolean z) {
        return i <= 256 ? new C0373a(i) : new HashMap(i, 1.0f);
    }

    @Deprecated
    /* renamed from: b */
    public static <T> Set<T> m13865b(T... tArr) {
        Set<T> unmodifiableSet;
        switch (tArr.length) {
            case 0:
                unmodifiableSet = Collections.emptySet();
                break;
            case 1:
                unmodifiableSet = Collections.singleton(tArr[0]);
                break;
            case 2:
                T t = tArr[0];
                T t2 = tArr[1];
                Set m13872a = m13872a(2, false);
                m13872a.add(t);
                m13872a.add(t2);
                unmodifiableSet = Collections.unmodifiableSet(m13872a);
                break;
            case 3:
                unmodifiableSet = m13870a(tArr[0], tArr[1], tArr[2]);
                break;
            case 4:
                T t3 = tArr[0];
                T t4 = tArr[1];
                T t5 = tArr[2];
                T t6 = tArr[3];
                Set m13872a2 = m13872a(4, false);
                m13872a2.add(t3);
                m13872a2.add(t4);
                m13872a2.add(t5);
                m13872a2.add(t6);
                unmodifiableSet = Collections.unmodifiableSet(m13872a2);
                break;
            default:
                Set m13872a3 = m13872a(tArr.length, false);
                Collections.addAll(m13872a3, tArr);
                unmodifiableSet = Collections.unmodifiableSet(m13872a3);
                break;
        }
        return unmodifiableSet;
    }
}
