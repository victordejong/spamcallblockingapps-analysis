package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpu.class */
public final class zzfpu extends zzfpw<Comparable<?>> implements Serializable {
    public static final zzfpu zza = new zzfpu();

    private zzfpu() {
    }

    @Override // com.google.android.gms.internal.ads.zzfpw, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        Objects.requireNonNull(comparable);
        Objects.requireNonNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }

    @Override // com.google.android.gms.internal.ads.zzfpw
    public final <S extends Comparable> zzfpw<S> zza() {
        return zzfqe.zza;
    }
}
