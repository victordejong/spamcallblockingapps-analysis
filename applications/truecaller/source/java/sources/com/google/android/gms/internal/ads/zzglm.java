package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzglm.class */
public final class zzglm<T> implements zzgln<T> {
    private static final Object zza = new Object();
    private volatile zzgln<T> zzb;
    private volatile Object zzc = zza;

    private zzglm(zzgln<T> zzglnVar) {
        this.zzb = zzglnVar;
    }

    public static <P extends zzgln<T>, T> zzgln<T> zza(P p) {
        if ((p instanceof zzglm) || (p instanceof zzgkz)) {
            return p;
        }
        Objects.requireNonNull(p);
        return new zzglm(p);
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final T zzb() {
        Object obj = this.zzc;
        T t = obj;
        if (obj == zza) {
            zzgln<T> zzglnVar = this.zzb;
            if (zzglnVar == null) {
                t = this.zzc;
            } else {
                t = zzglnVar.zzb();
                this.zzc = t;
                this.zzb = null;
            }
        }
        return (T) t;
    }
}
