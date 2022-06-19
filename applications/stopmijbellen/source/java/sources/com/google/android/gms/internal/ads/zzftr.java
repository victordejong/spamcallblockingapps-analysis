package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzftr.class */
public final class zzftr {
    @CheckForNull
    public static <V> V zza(Map<?, V> map, @CheckForNull Object obj) {
        Objects.requireNonNull(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException e) {
            return null;
        }
    }
}
