package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzftg.class */
public final class zzftg {
    @CheckForNull
    public static <T> T zza(Iterator<T> it2) {
        if (it2.hasNext()) {
            T next = it2.next();
            it2.remove();
            return next;
        }
        return null;
    }

    public static void zzb(Iterator<?> it2) {
        Objects.requireNonNull(it2);
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
    }
}
