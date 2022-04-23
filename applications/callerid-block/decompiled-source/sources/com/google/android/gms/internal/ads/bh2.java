package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bh2.class */
public final class bh2 {
    /* renamed from: a */
    public static <T> List<T> m7990a(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    /* renamed from: b */
    static <T> HashSet<T> m7989b(int i) {
        return new HashSet<>(m7987d(i));
    }

    /* renamed from: c */
    public static <K, V> LinkedHashMap<K, V> m7988c(int i) {
        return new LinkedHashMap<>(m7987d(i));
    }

    /* renamed from: d */
    private static int m7987d(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }
}
