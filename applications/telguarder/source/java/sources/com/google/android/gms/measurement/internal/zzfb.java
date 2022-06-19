package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfb.class */
public final class zzfb {
    private final zza zza;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfb$zza.class */
    public interface zza {
        void doStartService(Context context, Intent intent);
    }

    public zzfb(zza zzaVar) {
        Preconditions.checkNotNull(zzaVar);
        this.zza = zzaVar;
    }

    public static boolean zza(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null) {
                return false;
            }
            return receiverInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public final void zzb(Context context, Intent intent) {
        zzfl zzC = zzfl.zzC(context, null, null);
        zzei zzat = zzC.zzat();
        if (intent == null) {
            zzat.zze().zza("Receiver called with null intent");
            return;
        }
        zzC.zzas();
        String action = intent.getAction();
        zzat.zzk().zzb("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
                return;
            }
            zzat.zze().zza("Install Referrer Broadcasts are deprecated");
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        zzat.zzk().zza("Starting wakeful intent.");
        this.zza.doStartService(context, className);
    }
}
