package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzv;
import com.google.android.gms.measurement.internal.zzjl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjh.class */
public final class zzjh<T extends Context & zzjl> {
    private final T zza;

    public zzjh(T t) {
        Preconditions.checkNotNull(t);
        this.zza = t;
    }

    private final void zza(Runnable runnable) {
        zzke zza = zzke.zza(this.zza);
        zza.zzq().zza(new zzjm(this, zza, runnable));
    }

    private final zzew zzc() {
        return zzga.zza(this.zza, (zzv) null).zzr();
    }

    public final int zza(Intent intent, int i, int i2) {
        zzga zza = zzga.zza(this.zza, (zzv) null);
        zzew zzr = zza.zzr();
        if (intent == null) {
            zzr.zzi().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zza.zzu();
        zzr.zzx().zza("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        zza(new Runnable(this, i2, zzr, intent) { // from class: com.google.android.gms.measurement.internal.zzjk
            private final zzjh zza;
            private final int zzb;
            private final zzew zzc;
            private final Intent zzd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = i2;
                this.zzc = zzr;
                this.zzd = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(this.zzb, this.zzc, this.zzd);
            }
        });
        return 2;
    }

    public final IBinder zza(Intent intent) {
        if (intent == null) {
            zzc().zzf().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzgb(zzke.zza(this.zza));
        }
        zzc().zzi().zza("onBind received unknown action", action);
        return null;
    }

    public final void zza() {
        zzga zza = zzga.zza(this.zza, (zzv) null);
        zzew zzr = zza.zzr();
        zza.zzu();
        zzr.zzx().zza("Local AppMeasurementService is starting up");
    }

    public final /* synthetic */ void zza(int i, zzew zzewVar, Intent intent) {
        if (this.zza.zza(i)) {
            zzewVar.zzx().zza("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            zzc().zzx().zza("Completed wakeful intent.");
            this.zza.zza(intent);
        }
    }

    public final /* synthetic */ void zza(zzew zzewVar, JobParameters jobParameters) {
        zzewVar.zzx().zza("AppMeasurementJobService processed last upload request.");
        this.zza.zza(jobParameters, false);
    }

    public final boolean zza(JobParameters jobParameters) {
        zzga zza = zzga.zza(this.zza, (zzv) null);
        zzew zzr = zza.zzr();
        String string = jobParameters.getExtras().getString("action");
        zza.zzu();
        zzr.zzx().zza("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            zza(new Runnable(this, zzr, jobParameters) { // from class: com.google.android.gms.measurement.internal.zzjj
                private final zzjh zza;
                private final zzew zzb;
                private final JobParameters zzc;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = this;
                    this.zzb = zzr;
                    this.zzc = jobParameters;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza(this.zzb, this.zzc);
                }
            });
            return true;
        }
        return true;
    }

    public final void zzb() {
        zzga zza = zzga.zza(this.zza, (zzv) null);
        zzew zzr = zza.zzr();
        zza.zzu();
        zzr.zzx().zza("Local AppMeasurementService is shutting down");
    }

    public final boolean zzb(Intent intent) {
        if (intent == null) {
            zzc().zzf().zza("onUnbind called with null intent");
            return true;
        }
        zzc().zzx().zza("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final void zzc(Intent intent) {
        if (intent == null) {
            zzc().zzf().zza("onRebind called with null intent");
            return;
        }
        zzc().zzx().zza("onRebind called. action", intent.getAction());
    }
}
