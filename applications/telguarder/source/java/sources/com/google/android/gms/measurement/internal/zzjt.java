package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.measurement.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjt.class */
public final class zzjt extends zzjv {
    private final AlarmManager zzb = (AlarmManager) this.zzx.zzaw().getSystemService(NotificationCompat.CATEGORY_ALARM);
    private zzal zzc;
    private Integer zzd;

    public zzjt(zzkd zzkdVar) {
        super(zzkdVar);
    }

    private final zzal zzf() {
        if (this.zzc == null) {
            this.zzc = new zzjs(this, this.zza.zzR());
        }
        return this.zzc;
    }

    private final void zzh() {
        JobScheduler jobScheduler = (JobScheduler) this.zzx.zzaw().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(zzi());
        }
    }

    private final int zzi() {
        if (this.zzd == null) {
            String valueOf = String.valueOf(this.zzx.zzaw().getPackageName());
            this.zzd = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.zzd.intValue();
    }

    private final PendingIntent zzj() {
        Context zzaw = this.zzx.zzaw();
        return PendingIntent.getBroadcast(zzaw, 0, new Intent().setClassName(zzaw, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    protected final boolean zzaz() {
        AlarmManager alarmManager = this.zzb;
        if (alarmManager != null) {
            alarmManager.cancel(zzj());
        }
        if (Build.VERSION.SDK_INT >= 24) {
            zzh();
            return false;
        }
        return false;
    }

    public final void zzc(long j) {
        zzX();
        this.zzx.zzas();
        Context zzaw = this.zzx.zzaw();
        if (!zzfb.zza(zzaw)) {
            this.zzx.zzat().zzj().zza("Receiver not registered/enabled");
        }
        if (!zzkk.zzP(zzaw, false)) {
            this.zzx.zzat().zzj().zza("Service not registered/enabled");
        }
        zzd();
        this.zzx.zzat().zzk().zzb("Scheduling upload, millis", Long.valueOf(j));
        long elapsedRealtime = this.zzx.zzax().elapsedRealtime();
        this.zzx.zzc();
        if (j < Math.max(0L, zzdw.zzw.zzb(null).longValue()) && !zzf().zzc()) {
            zzf().zzb(j);
        }
        this.zzx.zzas();
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.zzb;
            if (alarmManager == null) {
                return;
            }
            this.zzx.zzc();
            alarmManager.setInexactRepeating(2, elapsedRealtime + j, Math.max(zzdw.zzr.zzb(null).longValue(), j), zzj());
            return;
        }
        Context zzaw2 = this.zzx.zzaw();
        ComponentName componentName = new ComponentName(zzaw2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int zzi = zzi();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        zzg.zza(zzaw2, new JobInfo.Builder(zzi, componentName).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }

    public final void zzd() {
        zzX();
        this.zzx.zzat().zzk().zza("Unscheduling upload");
        AlarmManager alarmManager = this.zzb;
        if (alarmManager != null) {
            alarmManager.cancel(zzj());
        }
        zzf().zzd();
        if (Build.VERSION.SDK_INT >= 24) {
            zzh();
        }
    }
}
