package com.tenor.android.core.util;

import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractListUtils.class */
public abstract class AbstractListUtils {
    public static <T> boolean isEmpty(Collection<T> collection) {
        return collection == null || collection.isEmpty();
    }

    public static <T> boolean isEmpty(T[] tArr) {
        return tArr == null || tArr.length <= 0;
    }
}
