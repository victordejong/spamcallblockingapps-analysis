package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsg.class */
public final class dsg {
    /* renamed from: a */
    public static <T> List<T> m15777a(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    /* renamed from: b */
    public static <K, V> LinkedHashMap<K, V> m15776b(int i) {
        return new LinkedHashMap<>(m15775c(i));
    }

    /* renamed from: c */
    public static int m15775c(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i >= 1073741824) {
            return Integer.MAX_VALUE;
        }
        return (int) ((i / 0.75f) + 1.0f);
    }
}
