package com.google.common.collect;

import java.lang.reflect.Array;
import java.util.Arrays;
/* renamed from: com.google.common.collect.n */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/n.class */
final class C8818n {
    /* renamed from: a */
    public static <T> T[] m2604a(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }

    /* renamed from: b */
    public static <T> T[] m2603b(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }
}
