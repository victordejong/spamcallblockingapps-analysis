package com.google.android.gms.internal.ads;

import java.io.Serializable;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfuo.class */
public final class zzfuo<T> extends zzfuf<T> implements Serializable {
    public final zzfuf<? super T> zza;

    public zzfuo(zzfuf<? super T> zzfufVar) {
        this.zza = zzfufVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.zza.compare(t2, t);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfuo)) {
            return false;
        }
        return this.zza.equals(((zzfuo) obj).zza);
    }

    public final int hashCode() {
        return -this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString().concat(".reverse()");
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final <S extends T> zzfuf<S> zza() {
        return (zzfuf<? super T>) this.zza;
    }
}
