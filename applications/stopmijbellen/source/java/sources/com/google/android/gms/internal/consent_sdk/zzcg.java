package com.google.android.gms.internal.consent_sdk;

import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzcg.class */
public final class zzcg<T> implements zzcl<T> {
    private static final Object zza = new Object();
    private volatile zzcl<T> zzb;
    private volatile Object zzc = zza;

    private zzcg(zzcl<T> zzclVar) {
        this.zzb = zzclVar;
    }

    public static <P extends zzcl<T>, T> zzcl<T> zza(P p) {
        Objects.requireNonNull(p);
        return p instanceof zzcg ? p : new zzcg(p);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzcl
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
                    if (obj4 != obj2 && !(obj4 instanceof zzcj) && obj4 != t) {
                        String valueOf = String.valueOf(obj4);
                        String valueOf2 = String.valueOf(t);
                        int length = valueOf.length();
                        StringBuilder sb = new StringBuilder(length + C3681R.styleable.AppCompatTheme_windowActionBarOverlay + valueOf2.length());
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
