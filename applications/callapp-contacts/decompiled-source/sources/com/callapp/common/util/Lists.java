package com.callapp.common.util;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Lists.class */
public class Lists {
    public static <E> ArrayList<E> a(E... eArr) {
        int length = eArr.length;
        long j = length + 5 + (length / 10);
        ArrayList<E> arrayList = new ArrayList<>(j > 2147483647L ? Integer.MAX_VALUE : j < -2147483648L ? BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW : (int) j);
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }
}
