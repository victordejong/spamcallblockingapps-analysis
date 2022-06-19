package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzic.class */
public final class zzic implements Serializable, zzib {
    public final zzib zza;
    public volatile transient boolean zzb;
    public transient Object zzc;

    public zzic(zzib zzibVar) {
        Objects.requireNonNull(zzibVar);
        this.zza = zzibVar;
    }

    public final String toString() {
        String str;
        if (this.zzb) {
            String valueOf = String.valueOf(this.zzc);
            str = C22128a.m8610j(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        } else {
            str = this.zza;
        }
        String valueOf2 = String.valueOf(str);
        return C22128a.m8610j(new StringBuilder(valueOf2.length() + 19), "Suppliers.memoize(", valueOf2, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final Object zza() {
        if (!this.zzb) {
            synchronized (this) {
                if (!this.zzb) {
                    Object zza = this.zza.zza();
                    this.zzc = zza;
                    this.zzb = true;
                    return zza;
                }
            }
        }
        return this.zzc;
    }
}
