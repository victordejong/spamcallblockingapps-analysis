package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjh.class */
public final class zzjh<T extends Context & zzjg> {
    private final T zza;

    public zzjh(T t) {
        Preconditions.checkNotNull(t);
        this.zza = t;
    }

    private final zzei zzk() {
        return zzfl.zzC(this.zza, null, null).zzat();
    }

    public final void zza() {
        zzfl zzC = zzfl.zzC(this.zza, null, null);
        zzei zzat = zzC.zzat();
        zzC.zzas();
        zzat.zzk().zza("Local AppMeasurementService is starting up");
    }

    public final void zzb() {
        zzfl zzC = zzfl.zzC(this.zza, null, null);
        zzei zzat = zzC.zzat();
        zzC.zzas();
        zzat.zzk().zza("Local AppMeasurementService is shutting down");
    }

    public final int zzc(Intent intent, int i, int i2) {
        zzfl zzC = zzfl.zzC(this.zza, null, null);
        zzei zzat = zzC.zzat();
        if (intent == null) {
            zzat.zze().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzC.zzas();
        zzat.zzk().zzc("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        zzd(new Runnable(this, i2, zzat, intent) { // from class: com.google.android.gms.measurement.internal.zzjd
            private final zzjh zza;
            private final int zzb;
            private final zzei zzc;
            private final Intent zzd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = i2;
                this.zzc = zzat;
                this.zzd = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzj(this.zzb, this.zzc, this.zzd);
            }
        });
        return 2;
    }

    public final void zzd(Runnable runnable) {
        zzkd zza = zzkd.zza(this.zza);
        zza.zzau().zzh(new zzjf(this, zza, runnable));
    }

    public final IBinder zze(Intent intent) {
        if (intent == null) {
            zzk().zzb().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzgd(zzkd.zza(this.zza), null);
        }
        zzk().zze().zzb("onBind received unknown action", action);
        return null;
    }

    public final boolean zzf(Intent intent) {
        if (intent == null) {
            zzk().zzb().zza("onUnbind called with null intent");
            return true;
        }
        zzk().zzk().zzb("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final boolean zzg(JobParameters jobParameters) {
        zzfl zzC = zzfl.zzC(this.zza, null, null);
        zzei zzat = zzC.zzat();
        String string = jobParameters.getExtras().getString("action");
        zzC.zzas();
        zzat.zzk().zzb("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            zzd(new Runnable(this, zzat, jobParameters) { // from class: com.google.android.gms.measurement.internal.zzje
                private final zzjh zza;
                private final zzei zzb;
                private final JobParameters zzc;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = this;
                    this.zzb = zzat;
                    this.zzc = jobParameters;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzi(this.zzb, this.zzc);
                }
            });
            return true;
        }
        return true;
    }

    public final void zzh(Intent intent) {
        if (intent == null) {
            zzk().zzb().zza("onRebind called with null intent");
            return;
        }
        zzk().zzk().zzb("onRebind called. action", intent.getAction());
    }

    public final /* synthetic */ void zzi(zzei zzeiVar, JobParameters jobParameters) {
        zzeiVar.zzk().zza("AppMeasurementJobService processed last upload request.");
        this.zza.zzb(jobParameters, false);
    }

    public final /* synthetic */ void zzj(int i, zzei zzeiVar, Intent intent) {
        if (this.zza.zza(i)) {
            zzeiVar.zzk().zzb("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            zzk().zzk().zza("Completed wakeful intent.");
            this.zza.zzc(intent);
        }
    }
}
