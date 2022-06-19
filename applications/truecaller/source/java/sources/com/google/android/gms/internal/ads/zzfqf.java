package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqf.class */
public final class zzfqf<T> extends zzfpw<T> implements Serializable {
    public final zzfpw<? super T> zza;

    public zzfqf(zzfpw<? super T> zzfpwVar) {
        this.zza = zzfpwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpw, java.util.Comparator
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

    @Override // com.google.android.gms.internal.ads.zzfpw
    public final <S extends T> zzfpw<S> zza() {
        return (zzfpw<? super T>) this.zza;
    }
}
