package com.callapp.common.util;

import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Lists.class */
public class Lists {
    /* renamed from: a */
    public static <E> ArrayList<E> m31916a(E... eArr) {
        int length = eArr.length;
        long j = length + 5 + (length / 10);
        ArrayList<E> arrayList = new ArrayList<>(j > 2147483647L ? Integer.MAX_VALUE : j < -2147483648L ? Integer.MIN_VALUE : (int) j);
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }
}
