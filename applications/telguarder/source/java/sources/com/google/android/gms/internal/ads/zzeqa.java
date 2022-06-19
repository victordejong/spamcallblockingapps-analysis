package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqa.class */
public final class zzeqa {
    public static <T> List<T> zzid(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    public static <T> HashSet<T> zzie(int i) {
        return new HashSet<>(zzig(i));
    }

    public static <K, V> LinkedHashMap<K, V> zzif(int i) {
        return new LinkedHashMap<>(zzig(i));
    }

    private static int zzig(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i >= 1073741824) {
            return Integer.MAX_VALUE;
        }
        return (int) ((i / 0.75f) + 1.0f);
    }
}
