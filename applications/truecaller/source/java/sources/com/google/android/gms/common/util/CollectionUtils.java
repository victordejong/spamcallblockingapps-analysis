package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.HashSet;
import java.util.Set;
import p1727n3.p1788g.C26177c;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/CollectionUtils.class */
public final class CollectionUtils {
    private CollectionUtils() {
    }

    /* renamed from: a */
    public static <T> Set<T> m38791a(int i, boolean z) {
        return i <= (true != z ? 256 : 128) ? new C26177c(i) : new HashSet(i, true != z ? 1.0f : 0.75f);
    }
}
