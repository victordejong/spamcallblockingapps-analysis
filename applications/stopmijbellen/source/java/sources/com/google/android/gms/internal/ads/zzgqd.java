package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgqd.class */
public final class zzgqd<T> implements zzgqe<T> {
    private static final Object zza = new Object();
    private volatile zzgqe<T> zzb;
    private volatile Object zzc = zza;

    private zzgqd(zzgqe<T> zzgqeVar) {
        this.zzb = zzgqeVar;
    }

    public static <P extends zzgqe<T>, T> zzgqe<T> zza(P p) {
        if ((p instanceof zzgqd) || (p instanceof zzgpq)) {
            return p;
        }
        Objects.requireNonNull(p);
        return new zzgqd(p);
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final T zzb() {
        Object obj = this.zzc;
        T t = obj;
        if (obj == zza) {
            zzgqe<T> zzgqeVar = this.zzb;
            if (zzgqeVar == null) {
                t = this.zzc;
            } else {
                t = zzgqeVar.zzb();
                this.zzc = t;
                this.zzb = null;
            }
        }
        return (T) t;
    }
}
