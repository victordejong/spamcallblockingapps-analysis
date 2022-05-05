package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.stats.WakeLock;
import com.privacystar.core.util.BlockingManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcx.class */
public final class zzcx<T extends Context & zzdb> {
    private static Boolean zzabz;
    private final Handler handler = new zzdx();
    private final T zzaby;

    public zzcx(T t) {
        Preconditions.checkNotNull(t);
        this.zzaby = t;
    }

    private final void zzb(Runnable runnable) {
        zzaw.zzc(this.zzaby).zzcc().zza(new zzda(this, runnable));
    }

    public static boolean zze(Context context) {
        Preconditions.checkNotNull(context);
        if (zzabz != null) {
            return zzabz.booleanValue();
        }
        boolean zzc = zzdg.zzc(context, "com.google.android.gms.analytics.AnalyticsService");
        zzabz = Boolean.valueOf(zzc);
        return zzc;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onCreate() {
        zzaw.zzc(this.zzaby).zzby().zzq("Local AnalyticsService is starting up");
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onDestroy() {
        zzaw.zzc(this.zzaby).zzby().zzq("Local AnalyticsService is shutting down");
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final int onStartCommand(Intent intent, int i, final int i2) {
        try {
            synchronized (zzcw.lock) {
                WakeLock wakeLock = zzcw.zzabx;
                if (wakeLock != null && wakeLock.isHeld()) {
                    wakeLock.release();
                }
            }
        } catch (SecurityException e) {
        }
        final zzcp zzby = zzaw.zzc(this.zzaby).zzby();
        if (intent == null) {
            zzby.zzt("AnalyticsService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzby.zza("Local AnalyticsService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            return 2;
        }
        zzb(new Runnable(this, i2, zzby) { // from class: com.google.android.gms.internal.measurement.zzcy
            private final zzcx zzaca;
            private final int zzacb;
            private final zzcp zzacc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzaca = this;
                this.zzacb = i2;
                this.zzacc = zzby;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzaca.zza(this.zzacb, this.zzacc);
            }
        });
        return 2;
    }

    @TargetApi(24)
    public final boolean onStartJob(final JobParameters jobParameters) {
        final zzcp zzby = zzaw.zzc(this.zzaby).zzby();
        String string = jobParameters.getExtras().getString(BlockingManager.ACTION_CONSTANT);
        zzby.zza("Local AnalyticsJobService called. action", string);
        if (!"com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(string)) {
            return true;
        }
        zzb(new Runnable(this, zzby, jobParameters) { // from class: com.google.android.gms.internal.measurement.zzcz
            private final zzcx zzaca;
            private final zzcp zzacd;
            private final JobParameters zzace;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzaca = this;
                this.zzacd = zzby;
                this.zzace = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzaca.zza(this.zzacd, this.zzace);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(int i, zzcp zzcpVar) {
        if (this.zzaby.callServiceStopSelfResult(i)) {
            zzcpVar.zzq("Local AnalyticsService processed last dispatch request");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzcp zzcpVar, JobParameters jobParameters) {
        zzcpVar.zzq("AnalyticsJobService processed last dispatch request");
        this.zzaby.zza(jobParameters, false);
    }
}
