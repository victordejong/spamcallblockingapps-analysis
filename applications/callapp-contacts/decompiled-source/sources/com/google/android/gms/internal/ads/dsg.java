package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsg.class */
public final class dsg {
    public static <T> List<T> a(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    public static <K, V> LinkedHashMap<K, V> b(int i) {
        return new LinkedHashMap<>(c(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }
}
