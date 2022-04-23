package com.google.a.b;

import java.lang.reflect.Array;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/a/b/u.class */
public final class u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] a(Iterable<?> iterable, Object[] objArr) {
        int i = 0;
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return objArr;
    }

    public static <T> T[] a(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }
}
