package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhs.class */
public final class dhs {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* renamed from: a */
    public static <T> List<T> m9451a(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    /* renamed from: b */
    public static <T> HashSet<T> m9450b(int i) {
        return new HashSet<>(m9448d(i));
    }

    /* renamed from: c */
    public static <K, V> LinkedHashMap<K, V> m9449c(int i) {
        return new LinkedHashMap<>(m9448d(i));
    }

    /* renamed from: d */
    private static int m9448d(int i) {
        return i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Integer.MAX_VALUE;
    }
}
