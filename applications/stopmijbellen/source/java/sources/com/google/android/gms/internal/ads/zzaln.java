package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaln.class */
public final class zzaln implements Runnable {
    public final /* synthetic */ zzalo zza;

    public zzaln(zzalo zzaloVar) {
        this.zza = zzaloVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        zzams zzamsVar;
        ConditionVariable conditionVariable2;
        if (this.zza.zzb != null) {
            return;
        }
        conditionVariable = zzalo.zzc;
        synchronized (conditionVariable) {
            if (this.zza.zzb != null) {
                return;
            }
            try {
                z = zzblj.zzbL.zze().booleanValue();
            } catch (IllegalStateException e) {
                z = false;
            }
            if (z) {
                try {
                    zzamsVar = this.zza.zze;
                    zzalo.zza = zzfoj.zzb(zzamsVar.zza, "ADSHIELD", null);
                } catch (Throwable th) {
                    z = false;
                }
            }
            this.zza.zzb = Boolean.valueOf(z);
            conditionVariable2 = zzalo.zzc;
            conditionVariable2.open();
        }
    }
}
