package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqe.class */
public final class zzfqe extends zzfpw<Comparable<?>> implements Serializable {
    public static final zzfqe zza = new zzfqe();

    private zzfqe() {
    }

    @Override // com.google.android.gms.internal.ads.zzfpw, java.util.Comparator
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

    @Override // com.google.android.gms.internal.ads.zzfpw
    public final <S extends Comparable> zzfpw<S> zza() {
        return zzfpu.zza;
    }
}
