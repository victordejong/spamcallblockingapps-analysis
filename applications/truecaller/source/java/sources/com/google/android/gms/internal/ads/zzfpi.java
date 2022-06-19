package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpi.class */
public final class zzfpi {
    public static <V> V zza(Map<?, V> map, Object obj) {
        Objects.requireNonNull(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException e) {
            return null;
        }
    }
}
