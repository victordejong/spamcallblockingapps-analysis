package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnu.class */
public final class zzfnu<T> extends zzfpw<T> implements Serializable {
    public final Comparator<T> zza;

    public zzfnu(Comparator<T> comparator) {
        Objects.requireNonNull(comparator);
        this.zza = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzfpw, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.zza.compare(t, t2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfnu)) {
            return false;
        }
        return this.zza.equals(((zzfnu) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString();
    }
}
