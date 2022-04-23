package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzee.class */
public final class zzee<T> implements zzec<T>, Serializable {
    public final zzec<T> zza;
    public volatile transient boolean zzb;
    public transient T zzc;

    public zzee(zzec<T> zzecVar) {
        zzeb.m9815a(zzecVar);
        this.zza = zzecVar;
    }

    public final String toString() {
        Object obj;
        if (this.zzb) {
            String valueOf = String.valueOf(this.zzc);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.zza;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzec
    public final T zza() {
        if (!this.zzb) {
            synchronized (this) {
                if (!this.zzb) {
                    T zza = this.zza.zza();
                    this.zzc = zza;
                    this.zzb = true;
                    return zza;
                }
            }
        }
        return this.zzc;
    }
}
