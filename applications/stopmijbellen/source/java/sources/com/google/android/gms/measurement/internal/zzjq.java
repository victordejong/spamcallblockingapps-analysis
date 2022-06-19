package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjq.class */
public final class zzjq<T extends Context & zzjp> {
    private final T zza;

    public zzjq(T t) {
        Preconditions.checkNotNull(t);
        this.zza = t;
    }

    private final zzem zzk() {
        return zzfu.zzC(this.zza, null, null).zzau();
    }

    public final void zza() {
        zzfu zzC = zzfu.zzC(this.zza, null, null);
        zzem zzau = zzC.zzau();
        zzC.zzat();
        zzau.zzk().zza("Local AppMeasurementService is starting up");
    }

    public final void zzb() {
        zzfu zzC = zzfu.zzC(this.zza, null, null);
        zzem zzau = zzC.zzau();
        zzC.zzat();
        zzau.zzk().zza("Local AppMeasurementService is shutting down");
    }

    public final int zzc(Intent intent, int i, int i2) {
        zzfu zzC = zzfu.zzC(this.zza, null, null);
        zzem zzau = zzC.zzau();
        if (intent == null) {
            zzau.zze().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzC.zzat();
        zzau.zzk().zzc("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        zzd(new Runnable(this, i2, zzau, intent) { // from class: com.google.android.gms.measurement.internal.zzjm
            private final zzjq zza;
            private final int zzb;
            private final zzem zzc;
            private final Intent zzd;

            {
                this.zza = this;
                this.zzb = i2;
                this.zzc = zzau;
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
        zzkn zza = zzkn.zza(this.zza);
        zza.zzav().zzh(new zzjo(this, zza, runnable));
    }

    public final IBinder zze(Intent intent) {
        if (intent == null) {
            zzk().zzb().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzgm(zzkn.zza(this.zza), null);
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

    @TargetApi(24)
    public final boolean zzg(JobParameters jobParameters) {
        zzfu zzC = zzfu.zzC(this.zza, null, null);
        zzem zzau = zzC.zzau();
        String string = jobParameters.getExtras().getString("action");
        zzC.zzat();
        zzau.zzk().zzb("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            zzd(new Runnable(this, zzau, jobParameters) { // from class: com.google.android.gms.measurement.internal.zzjn
                private final zzjq zza;
                private final zzem zzb;
                private final JobParameters zzc;

                {
                    this.zza = this;
                    this.zzb = zzau;
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

    public final /* synthetic */ void zzi(zzem zzemVar, JobParameters jobParameters) {
        zzemVar.zzk().zza("AppMeasurementJobService processed last upload request.");
        this.zza.zzb(jobParameters, false);
    }

    public final /* synthetic */ void zzj(int i, zzem zzemVar, Intent intent) {
        if (this.zza.zza(i)) {
            zzemVar.zzk().zzb("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            zzk().zzk().zza("Completed wakeful intent.");
            this.zza.zzc(intent);
        }
    }
}
