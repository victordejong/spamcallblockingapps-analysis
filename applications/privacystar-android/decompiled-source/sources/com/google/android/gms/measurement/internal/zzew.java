package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import android.support.p001v4.app.NotificationCompat;
import com.google.android.gms.common.util.Clock;
import com.privacystar.core.util.BlockingManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzew.class */
public final class zzew extends zzez {
    private final zzv zzata;
    private final AlarmManager zzyt = (AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM);
    private Integer zzyu;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzew(zzfa zzfaVar) {
        super(zzfaVar);
        this.zzata = new zzex(this, zzfaVar.zzmb(), zzfaVar);
    }

    private final int getJobId() {
        if (this.zzyu == null) {
            String valueOf = String.valueOf(getContext().getPackageName());
            this.zzyu = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.zzyu.intValue();
    }

    private final PendingIntent zzeo() {
        Intent className = new Intent().setClassName(getContext(), "com.google.android.gms.measurement.AppMeasurementReceiver");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        return PendingIntent.getBroadcast(getContext(), 0, className, 0);
    }

    @TargetApi(24)
    private final void zzlm() {
        JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
        zzgo().zzjl().zzg("Cancelling job. JobID", Integer.valueOf(getJobId()));
        jobScheduler.cancel(getJobId());
    }

    public final void cancel() {
        zzcl();
        this.zzyt.cancel(zzeo());
        this.zzata.cancel();
        if (Build.VERSION.SDK_INT >= 24) {
            zzlm();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzez
    protected final boolean zzgt() {
        this.zzyt.cancel(zzeo());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        zzlm();
        return false;
    }

    public final void zzh(long j) {
        zzcl();
        zzgr();
        if (!zzbj.zza(getContext())) {
            zzgo().zzjk().zzbx("Receiver not registered/enabled");
        }
        zzgr();
        if (!zzfk.zza(getContext(), false)) {
            zzgo().zzjk().zzbx("Service not registered/enabled");
        }
        cancel();
        long elapsedRealtime = zzbx().elapsedRealtime();
        if (j < Math.max(0L, zzaf.zzaka.get().longValue()) && !this.zzata.zzej()) {
            zzgo().zzjl().zzbx("Scheduling upload with DelayedRunnable");
            this.zzata.zzh(j);
        }
        zzgr();
        if (Build.VERSION.SDK_INT >= 24) {
            zzgo().zzjl().zzbx("Scheduling upload with JobScheduler");
            ComponentName componentName = new ComponentName(getContext(), "com.google.android.gms.measurement.AppMeasurementJobService");
            JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
            JobInfo.Builder builder = new JobInfo.Builder(getJobId(), componentName);
            builder.setMinimumLatency(j);
            builder.setOverrideDeadline(j << 1);
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString(BlockingManager.ACTION_CONSTANT, "com.google.android.gms.measurement.UPLOAD");
            builder.setExtras(persistableBundle);
            JobInfo build = builder.build();
            zzgo().zzjl().zzg("Scheduling job. JobID", Integer.valueOf(getJobId()));
            jobScheduler.schedule(build);
            return;
        }
        zzgo().zzjl().zzbx("Scheduling upload with AlarmManager");
        this.zzyt.setInexactRepeating(2, elapsedRealtime + j, Math.max(zzaf.zzajv.get().longValue(), j), zzeo());
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzfg zzjo() {
        return super.zzjo();
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzj zzjp() {
        return super.zzjp();
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzq zzjq() {
        return super.zzjq();
    }
}
