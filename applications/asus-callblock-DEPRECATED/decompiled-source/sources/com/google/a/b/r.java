package com.google.a.b;

import com.google.a.a.d;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/a/b/r.class */
public final class r {
    public static <E> ArrayList<E> a(E... eArr) {
        d.a(eArr);
        int length = eArr.length;
        d.a(length >= 0);
        long j = (length / 10) + 5 + length;
        ArrayList<E> arrayList = new ArrayList<>(j > 2147483647L ? Integer.MAX_VALUE : j < -2147483648L ? Integer.MIN_VALUE : (int) j);
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }
}
