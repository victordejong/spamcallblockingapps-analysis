package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzcq.class */
public final class zzcq<T> implements zzct<T> {
    private static final Object zza = new Object();
    private volatile zzct<T> zzb;
    private volatile Object zzc = zza;

    private zzcq(zzct<T> zzctVar) {
        this.zzb = zzctVar;
    }

    public static <P extends zzct<T>, T> zzct<T> zza(P p) {
        zzcu.zza(p);
        return p instanceof zzcq ? p : new zzcq(p);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzct
    public final T zza() {
        Object obj = this.zzc;
        Object obj2 = zza;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.zzc;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.zzb.zza();
                    Object obj4 = this.zzc;
                    if ((obj4 != obj2 && !(obj4 instanceof zzcr)) && obj4 != t) {
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
