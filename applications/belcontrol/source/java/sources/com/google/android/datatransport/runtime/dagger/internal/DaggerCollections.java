package com.google.android.datatransport.runtime.dagger.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/dagger/internal/DaggerCollections.class */
public final class DaggerCollections {
    private static final int MAX_POWER_OF_TWO = 1073741824;

    private DaggerCollections() {
    }

    private static int calculateInitialCapacity(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i >= 1073741824) {
            return Integer.MAX_VALUE;
        }
        return (int) ((i / 0.75f) + 1.0f);
    }

    public static boolean hasDuplicates(List<?> list) {
        boolean z = false;
        if (list.size() < 2) {
            return false;
        }
        if (list.size() != new HashSet(list).size()) {
            z = true;
        }
        return z;
    }

    public static <T> HashSet<T> newHashSetWithExpectedSize(int i) {
        return new HashSet<>(calculateInitialCapacity(i));
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int i) {
        return new LinkedHashMap<>(calculateInitialCapacity(i));
    }

    public static <T> List<T> presizedList(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }
}
