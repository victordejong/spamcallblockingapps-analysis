package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfq.class */
public final class zzfq {
    private final zzfr zza;

    public zzfq(zzfr zzfrVar) {
        Preconditions.checkNotNull(zzfrVar);
        this.zza = zzfrVar;
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

    public final void zza(Context context, Intent intent) {
        zzga zza = zzga.zza(context, (zzv) null);
        zzew zzr = zza.zzr();
        if (intent == null) {
            zzr.zzi().zza("Receiver called with null intent");
            return;
        }
        zza.zzu();
        String action = intent.getAction();
        zzr.zzx().zza("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzr.zzx().zza("Starting wakeful intent.");
            this.zza.doStartService(context, className);
        } else if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
        } else {
            try {
                zza.zzq().zza(new zzfp(this, zza, zzr));
            } catch (Exception e) {
                zzr.zzi().zza("Install Referrer Reporter encountered a problem", e);
            }
            BroadcastReceiver.PendingResult doGoAsync = this.zza.doGoAsync();
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra == null) {
                zzr.zzx().zza("Install referrer extras are null");
                if (doGoAsync == null) {
                    return;
                }
                doGoAsync.finish();
                return;
            }
            zzr.zzv().zza("Install referrer extras are", stringExtra);
            String str = stringExtra;
            if (!stringExtra.contains("?")) {
                String valueOf = String.valueOf(stringExtra);
                str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            Bundle zza2 = zza.zzi().zza(Uri.parse(str));
            if (zza2 == null) {
                zzr.zzx().zza("No campaign defined in install referrer broadcast");
                if (doGoAsync == null) {
                    return;
                }
                doGoAsync.finish();
                return;
            }
            long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0L) * 1000;
            if (longExtra == 0) {
                zzr.zzi().zza("Install referrer is missing timestamp");
            }
            zza.zzq().zza(new zzfs(this, zza, longExtra, zza2, context, zzr, doGoAsync));
        }
    }
}
