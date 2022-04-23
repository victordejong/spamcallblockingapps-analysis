package com.google.android.datatransport.p062h.p070z;

import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import java.util.HashMap;
/* renamed from: com.google.android.datatransport.h.z.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/z/a.class */
public final class C1327a {

    /* renamed from: a */
    private static SparseArray<Priority> f5395a = new SparseArray<>();

    /* renamed from: b */
    private static HashMap<Priority, Integer> f5396b;

    static {
        HashMap<Priority, Integer> hashMap = new HashMap<>();
        f5396b = hashMap;
        hashMap.put(Priority.DEFAULT, 0);
        f5396b.put(Priority.VERY_LOW, 1);
        f5396b.put(Priority.HIGHEST, 2);
        for (Priority priority : f5396b.keySet()) {
            f5395a.append(f5396b.get(priority).intValue(), priority);
        }
    }

    /* renamed from: a */
    public static int m9133a(Priority priority) {
        Integer num = f5396b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    /* renamed from: b */
    public static Priority m9132b(int i) {
        Priority priority = f5395a.get(i);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
