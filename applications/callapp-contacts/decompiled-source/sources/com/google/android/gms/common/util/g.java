package com.google.android.gms.common.util;

import androidx.b.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/g.class */
public final class g {
    private g() {
    }

    public static <K, V> Map<K, V> a(int i) {
        return i <= 256 ? new a<>(i) : new HashMap<>(i, 1.0f);
    }

    public static boolean a(Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }
}
