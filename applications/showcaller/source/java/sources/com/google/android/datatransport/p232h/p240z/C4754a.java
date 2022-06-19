package com.google.android.datatransport.p232h.p240z;

import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import java.util.HashMap;
/* renamed from: com.google.android.datatransport.h.z.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/z/a.class */
public final class C4754a {

    /* renamed from: a */
    private static SparseArray<Priority> f14353a = new SparseArray<>();

    /* renamed from: b */
    private static HashMap<Priority, Integer> f14354b;

    static {
        HashMap<Priority, Integer> hashMap = new HashMap<>();
        f14354b = hashMap;
        hashMap.put(Priority.DEFAULT, 0);
        f14354b.put(Priority.VERY_LOW, 1);
        f14354b.put(Priority.HIGHEST, 2);
        for (Priority priority : f14354b.keySet()) {
            f14353a.append(f14354b.get(priority).intValue(), priority);
        }
    }

    /* renamed from: a */
    public static int m21846a(Priority priority) {
        Integer num = f14354b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    /* renamed from: b */
    public static Priority m21845b(int i) {
        Priority priority = f14353a.get(i);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
