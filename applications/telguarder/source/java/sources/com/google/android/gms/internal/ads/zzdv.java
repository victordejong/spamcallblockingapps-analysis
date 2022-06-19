package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdv.class */
public final class zzdv implements Runnable {
    private final /* synthetic */ zzdw zzwb;

    public zzdv(zzdw zzdwVar) {
        this.zzwb = zzdwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        zzfc zzfcVar;
        ConditionVariable conditionVariable2;
        if (this.zzwb.zzwf != null) {
            return;
        }
        conditionVariable = zzdw.zzwd;
        synchronized (conditionVariable) {
            if (this.zzwb.zzwf != null) {
                return;
            }
            try {
                z = zzabp.zzcrw.get().booleanValue();
            } catch (IllegalStateException e) {
                z = false;
            }
            if (z) {
                try {
                    zzfcVar = this.zzwb.zzwc;
                    zzdw.zzwe = new zztz(zzfcVar.context, "ADSHIELD", null);
                } catch (Throwable th) {
                    z = false;
                }
            }
            this.zzwb.zzwf = Boolean.valueOf(z);
            conditionVariable2 = zzdw.zzwd;
            conditionVariable2.open();
        }
    }
}
