package com.google.android.datatransport.runtime.p321e;

import android.util.SparseArray;
import com.google.android.datatransport.EnumC10676d;
import java.util.HashMap;
/* renamed from: com.google.android.datatransport.runtime.e.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/e/a.class */
public final class C10727a {

    /* renamed from: a */
    private static SparseArray<EnumC10676d> f34590a = new SparseArray<>();

    /* renamed from: b */
    private static HashMap<EnumC10676d, Integer> f34591b;

    static {
        HashMap<EnumC10676d, Integer> hashMap = new HashMap<>();
        f34591b = hashMap;
        hashMap.put(EnumC10676d.DEFAULT, 0);
        f34591b.put(EnumC10676d.VERY_LOW, 1);
        f34591b.put(EnumC10676d.HIGHEST, 2);
        for (EnumC10676d enumC10676d : f34591b.keySet()) {
            f34590a.append(f34591b.get(enumC10676d).intValue(), enumC10676d);
        }
    }

    /* renamed from: a */
    public static int m22487a(EnumC10676d enumC10676d) {
        Integer num = f34591b.get(enumC10676d);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value ".concat(String.valueOf(enumC10676d)));
    }

    /* renamed from: a */
    public static EnumC10676d m22488a(int i) {
        EnumC10676d enumC10676d = f34590a.get(i);
        if (enumC10676d != null) {
            return enumC10676d;
        }
        throw new IllegalArgumentException("Unknown Priority for value ".concat(String.valueOf(i)));
    }
}
