package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sx2.class */
public final class sx2 {
    /* renamed from: a */
    public static <V> V m10891a(Map<?, V> map, Object obj) {
        Objects.requireNonNull(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException e) {
            return null;
        }
    }
}
