package com.google.android.datatransport.runtime.e;

import android.util.SparseArray;
import com.google.android.datatransport.d;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/e/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray<d> f20443a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<d, Integer> f20444b;

    static {
        HashMap<d, Integer> hashMap = new HashMap<>();
        f20444b = hashMap;
        hashMap.put(d.DEFAULT, 0);
        f20444b.put(d.VERY_LOW, 1);
        f20444b.put(d.HIGHEST, 2);
        for (d dVar : f20444b.keySet()) {
            f20443a.append(f20444b.get(dVar).intValue(), dVar);
        }
    }

    public static int a(d dVar) {
        Integer num = f20444b.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value ".concat(String.valueOf(dVar)));
    }

    public static d a(int i) {
        d dVar = f20443a.get(i);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("Unknown Priority for value ".concat(String.valueOf(i)));
    }
}
