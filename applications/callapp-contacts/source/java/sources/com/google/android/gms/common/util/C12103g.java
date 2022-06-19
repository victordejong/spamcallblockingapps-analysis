package com.google.android.gms.common.util;

import androidx.p023b.C0428a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.common.util.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/g.class */
public final class C12103g {
    private C12103g() {
    }

    /* renamed from: a */
    public static <K, V> Map<K, V> m19042a(int i) {
        return i <= 256 ? new C0428a(i) : new HashMap(i, 1.0f);
    }

    /* renamed from: a */
    public static boolean m19041a(Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }
}
