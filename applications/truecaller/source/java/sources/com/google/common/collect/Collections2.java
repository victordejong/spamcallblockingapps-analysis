package com.google.common.collect;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/Collections2.class */
public final class Collections2 {
    public static int hashCodeImpl(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Object next = it.next();
                i = ((i2 + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
            } else {
                return i2;
            }
        }
    }

    @SafeVarargs
    public static <E> ArrayList<E> newArrayList(E... eArr) {
        Objects.requireNonNull(eArr);
        int length = eArr.length;
        C26232y.checkNonnegative(length, "arraySize");
        ArrayList<E> arrayList = new ArrayList<>(C26232y.saturatedCast(length + 5 + (length / 10)));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    public static <E> HashSet<E> newHashSetWithExpectedSize(int i) {
        int i2;
        if (i < 3) {
            C26232y.checkNonnegative(i, "expectedSize");
            i2 = i + 1;
        } else {
            i2 = i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Integer.MAX_VALUE;
        }
        return new HashSet<>(i2);
    }

    public static boolean removeAllImpl(Set<?> set, Iterator<?> it) {
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                z = z2 | set.remove(it.next());
            } else {
                return z2;
            }
        }
    }
}
