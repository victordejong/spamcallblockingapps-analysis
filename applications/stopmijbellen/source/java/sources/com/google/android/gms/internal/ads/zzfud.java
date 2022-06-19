package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfud.class */
public final class zzfud extends zzfuf<Comparable<?>> implements Serializable {
    public static final zzfud zza = new zzfud();

    private zzfud() {
    }

    @Override // com.google.android.gms.internal.ads.zzfuf, java.util.Comparator
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

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final <S extends Comparable> zzfuf<S> zza() {
        return zzfun.zza;
    }
}
