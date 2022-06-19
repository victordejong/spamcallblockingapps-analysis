package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfun.class */
final class zzfun extends zzfuf<Comparable<?>> implements Serializable {
    public static final zzfun zza = new zzfun();

    private zzfun() {
    }

    @Override // com.google.android.gms.internal.ads.zzfuf, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        Objects.requireNonNull(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final <S extends Comparable> zzfuf<S> zza() {
        return zzfud.zza;
    }
}
