package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqf.class */
public final class zzfqf<T> extends dy2<T> implements Serializable {
    final dy2<? super T> zza;

    public zzfqf(dy2<? super T> dy2Var) {
        this.zza = dy2Var;
    }

    @Override // com.google.android.gms.internal.ads.dy2, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.zza.compare(t2, t);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfqf)) {
            return false;
        }
        return this.zza.equals(((zzfqf) obj).zza);
    }

    public final int hashCode() {
        return -this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString().concat(".reverse()");
    }

    @Override // com.google.android.gms.internal.ads.dy2
    public final <S extends T> dy2<S> zza() {
        return (dy2<? super T>) this.zza;
    }
}
