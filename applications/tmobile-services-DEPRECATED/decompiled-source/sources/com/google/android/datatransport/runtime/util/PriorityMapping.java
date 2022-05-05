package com.google.android.datatransport.runtime.util;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.google.android.datatransport.Priority;
import java.util.EnumMap;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/util/PriorityMapping.class */
public final class PriorityMapping {

    /* renamed from: a */
    private static SparseArray<Priority> f6839a = new SparseArray<>();

    /* renamed from: b */
    private static EnumMap<Priority, Integer> f6840b;

    static {
        EnumMap<Priority, Integer> enumMap = new EnumMap<>(Priority.class);
        f6840b = enumMap;
        enumMap.put((EnumMap<Priority, Integer>) Priority.DEFAULT, (Priority) 0);
        f6840b.put((EnumMap<Priority, Integer>) Priority.VERY_LOW, (Priority) 1);
        f6840b.put((EnumMap<Priority, Integer>) Priority.HIGHEST, (Priority) 2);
        for (Priority priority : f6840b.keySet()) {
            f6839a.append(f6840b.get(priority).intValue(), priority);
        }
    }

    /* renamed from: a */
    public static int m15187a(@NonNull Priority priority) {
        Integer num = f6840b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    @NonNull
    /* renamed from: b */
    public static Priority m15186b(int i) {
        Priority priority = f6839a.get(i);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
