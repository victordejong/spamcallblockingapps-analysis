package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqe.class */
final class zzfqe extends dy2<Comparable<?>> implements Serializable {

    /* renamed from: d */
    static final zzfqe f34101d = new zzfqe();

    private zzfqe() {
    }

    @Override // com.google.android.gms.internal.ads.dy2, java.util.Comparator
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

    @Override // com.google.android.gms.internal.ads.dy2
    public final <S extends Comparable> dy2<S> zza() {
        return zzfpu.f34078d;
    }
}
