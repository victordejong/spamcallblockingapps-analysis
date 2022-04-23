package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/CollectionUtils.class */
public final class CollectionUtils {
    private CollectionUtils() {
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m14340a() {
        return Collections.emptyList();
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: b */
    public static <T> List<T> m14339b(T t) {
        return Collections.singletonList(t);
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: c */
    public static <T> List<T> m14338c(T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : m14339b(tArr[0]) : m14340a();
    }
}
