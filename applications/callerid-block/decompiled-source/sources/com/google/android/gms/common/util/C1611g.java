package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import d.e.a;
import d.e.b;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.common.util.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/g.class */
public final class C1611g {
    @RecentlyNonNull
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m8243a() {
        return Collections.emptyList();
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: b */
    public static <T> List<T> m8242b(@RecentlyNonNull T t) {
        return Collections.singletonList(t);
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: c */
    public static <T> List<T> m8241c(@RecentlyNonNull T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : m8242b(tArr[0]) : m8243a();
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static <K, V> Map<K, V> m8240d(@RecentlyNonNull K k, @RecentlyNonNull V v, @RecentlyNonNull K k2, @RecentlyNonNull V v2, @RecentlyNonNull K k3, @RecentlyNonNull V v3) {
        Map i = m8235i(3, false);
        i.put(k, v);
        i.put(k2, v2);
        i.put(k3, v3);
        return Collections.unmodifiableMap(i);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static <K, V> Map<K, V> m8239e(@RecentlyNonNull K[] kArr, @RecentlyNonNull V[] vArr) {
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
            Map i = m8235i(length, false);
            for (int i2 = 0; i2 < kArr.length; i2++) {
                i.put(kArr[i2], vArr[i2]);
            }
            return Collections.unmodifiableMap(i);
        }
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: f */
    public static <T> Set<T> m8238f(@RecentlyNonNull T t, @RecentlyNonNull T t2, @RecentlyNonNull T t3) {
        Set h = m8236h(3, false);
        h.add(t);
        h.add(t2);
        h.add(t3);
        return Collections.unmodifiableSet(h);
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: g */
    public static <T> Set<T> m8237g(@RecentlyNonNull T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t = tArr[0];
            T t2 = tArr[1];
            Set h = m8236h(2, false);
            h.add(t);
            h.add(t2);
            return Collections.unmodifiableSet(h);
        } else if (length == 3) {
            return m8238f(tArr[0], tArr[1], tArr[2]);
        } else {
            if (length != 4) {
                Set h2 = m8236h(length, false);
                Collections.addAll(h2, tArr);
                return Collections.unmodifiableSet(h2);
            }
            T t3 = tArr[0];
            T t4 = tArr[1];
            T t5 = tArr[2];
            T t6 = tArr[3];
            Set h3 = m8236h(4, false);
            h3.add(t3);
            h3.add(t4);
            h3.add(t5);
            h3.add(t6);
            return Collections.unmodifiableSet(h3);
        }
    }

    /* renamed from: h */
    private static <T> Set<T> m8236h(int i, boolean z) {
        return i <= (true != z ? 256 : 128) ? new b(i) : new HashSet(i, true != z ? 1.0f : 0.75f);
    }

    /* renamed from: i */
    private static <K, V> Map<K, V> m8235i(int i, boolean z) {
        return i <= 256 ? new a(i) : new HashMap(i, 1.0f);
    }
}
