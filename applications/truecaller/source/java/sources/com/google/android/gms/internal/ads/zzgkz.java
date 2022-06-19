package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkz.class */
public final class zzgkz<T> implements zzgln, zzgku {
    private static final Object zza = new Object();
    private volatile zzgln<T> zzb;
    private volatile Object zzc = zza;

    private zzgkz(zzgln<T> zzglnVar) {
        this.zzb = zzglnVar;
    }

    public static <P extends zzgln<T>, T> zzgln<T> zza(P p) {
        Objects.requireNonNull(p);
        return p instanceof zzgkz ? p : new zzgkz(p);
    }

    public static <P extends zzgln<T>, T> zzgku<T> zzc(P p) {
        if (p instanceof zzgku) {
            return (zzgku) p;
        }
        Objects.requireNonNull(p);
        return new zzgkz(p);
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final T zzb() {
        Object obj = this.zzc;
        Object obj2 = zza;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.zzc;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.zzb.zzb();
                    Object obj4 = this.zzc;
                    if (obj4 != obj2 && obj4 != t) {
                        String valueOf = String.valueOf(obj4);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 118 + valueOf2.length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.zzc = t;
                    this.zzb = null;
                }
            }
        }
        return (T) t;
    }
}
