package com.google.common.collect;
/* renamed from: com.google.common.collect.m */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/m.class */
public final class C8817m {
    /* renamed from: a */
    public static Object m2608a(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i);
    }

    /* renamed from: b */
    public static Object[] m2607b(Object... objArr) {
        return m2606c(objArr, objArr.length);
    }

    /* renamed from: c */
    static Object[] m2606c(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m2608a(objArr[i2], i2);
        }
        return objArr;
    }

    /* renamed from: d */
    public static <T> T[] m2605d(T[] tArr, int i) {
        return (T[]) C8818n.m2603b(tArr, i);
    }
}
