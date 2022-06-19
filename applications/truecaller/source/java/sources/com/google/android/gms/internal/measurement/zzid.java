package com.google.android.gms.internal.measurement;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzid.class */
public final class zzid implements zzib {
    public volatile zzib zza;
    public volatile boolean zzb;
    public Object zzc;

    public zzid(zzib zzibVar) {
        Objects.requireNonNull(zzibVar);
        this.zza = zzibVar;
    }

    public final String toString() {
        Object obj = this.zza;
        Object obj2 = obj;
        if (obj == null) {
            String valueOf = String.valueOf(this.zzc);
            obj2 = C22128a.m8610j(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        }
        String obj3 = obj2.toString();
        return C22128a.m8610j(new StringBuilder(obj3.length() + 19), "Suppliers.memoize(", obj3, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final Object zza() {
        if (!this.zzb) {
            synchronized (this) {
                if (!this.zzb) {
                    zzib zzibVar = this.zza;
                    zzibVar.getClass();
                    Object zza = zzibVar.zza();
                    this.zzc = zza;
                    this.zzb = true;
                    this.zza = null;
                    return zza;
                }
            }
        }
        return this.zzc;
    }
}
