package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzff.class */
public final class zzff {
    private final zza zza;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzff$zza.class */
    public interface zza {
        void doStartService(Context context, Intent intent);
    }

    public zzff(zza zzaVar) {
        Preconditions.checkNotNull(zzaVar);
        this.zza = zzaVar;
    }

    public final void zza(Context context, Intent intent) {
        zzfu zzC = zzfu.zzC(context, null, null);
        zzem zzau = zzC.zzau();
        if (intent == null) {
            zzau.zze().zza("Receiver called with null intent");
            return;
        }
        zzC.zzat();
        String action = intent.getAction();
        zzau.zzk().zzb("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
                return;
            }
            zzau.zze().zza("Install Referrer Broadcasts are deprecated");
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        zzau.zzk().zza("Starting wakeful intent.");
        this.zza.doStartService(context, className);
    }
}
