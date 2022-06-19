package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaam.class */
public final class zzaam implements Runnable {
    public final /* synthetic */ zzaan zza;

    public zzaam(zzaan zzaanVar) {
        this.zza = zzaanVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        zzabr zzabrVar;
        ConditionVariable conditionVariable2;
        if (this.zza.zzb != null) {
            return;
        }
        conditionVariable = zzaan.zzd;
        synchronized (conditionVariable) {
            if (this.zza.zzb != null) {
                return;
            }
            try {
                z = zzbjl.zzbF.zze().booleanValue();
            } catch (IllegalStateException e) {
                z = false;
            }
            if (z) {
                try {
                    zzabrVar = this.zza.zzc;
                    zzaan.zza = new zzfkk(zzabrVar.zza, "ADSHIELD", null);
                } catch (Throwable th) {
                    z = false;
                }
            }
            this.zza.zzb = Boolean.valueOf(z);
            conditionVariable2 = zzaan.zzd;
            conditionVariable2.open();
        }
    }
}
