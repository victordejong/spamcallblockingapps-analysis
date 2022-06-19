package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yi3.class */
public final class yi3 {
    /* renamed from: a */
    public static <T> List<T> m8819a(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    /* renamed from: b */
    public static <T> HashSet<T> m8818b(int i) {
        return new HashSet<>(m8816d(i));
    }

    /* renamed from: c */
    public static <K, V> LinkedHashMap<K, V> m8817c(int i) {
        return new LinkedHashMap<>(m8816d(i));
    }

    /* renamed from: d */
    private static int m8816d(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i >= 1073741824) {
            return Integer.MAX_VALUE;
        }
        return (int) ((i / 0.75f) + 1.0f);
    }
}
