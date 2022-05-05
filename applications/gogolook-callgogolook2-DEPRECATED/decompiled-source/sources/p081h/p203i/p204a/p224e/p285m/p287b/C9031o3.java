package p081h.p203i.p204a.p224e.p285m.p287b;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;
/* renamed from: h.i.a.e.m.b.o3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/o3.class */
public final class C9031o3 extends AbstractC9049r3 {

    /* renamed from: d */
    public final AlarmManager f20543d = (AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM);

    /* renamed from: e */
    public final AbstractC9056s4 f20544e;

    /* renamed from: f */
    public Integer f20545f;

    public C9031o3(C9061t3 t3Var) {
        super(t3Var);
        this.f20544e = new C9037p3(this, t3Var.m16215A(), t3Var);
    }

    /* renamed from: a */
    public final void m16348a(long j) {
        m16316q();
        mo16187b();
        if (!C8998j0.m16549a(getContext())) {
            mo16178c().m16368z().m16338a("Receiver not registered/enabled");
        }
        mo16187b();
        if (!C8959c4.m16739a(getContext(), false)) {
            mo16178c().m16368z().m16338a("Service not registered/enabled");
        }
        m16347t();
        long elapsedRealtime = mo16174e().elapsedRealtime();
        if (j < Math.max(0L, C8966e.f20282H.m16678a().longValue()) && !this.f20544e.m16216d()) {
            mo16178c().m16389A().m16338a("Scheduling upload with DelayedRunnable");
            this.f20544e.m16220a(j);
        }
        mo16187b();
        if (Build.VERSION.SDK_INT >= 24) {
            mo16178c().m16389A().m16338a("Scheduling upload with JobScheduler");
            ComponentName componentName = new ComponentName(getContext(), "com.google.android.gms.measurement.AppMeasurementJobService");
            JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
            JobInfo.Builder builder = new JobInfo.Builder(m16346u(), componentName);
            builder.setMinimumLatency(j);
            builder.setOverrideDeadline(j << 1);
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            builder.setExtras(persistableBundle);
            JobInfo build = builder.build();
            mo16178c().m16389A().m16337a("Scheduling job. JobID", Integer.valueOf(m16346u()));
            jobScheduler.schedule(build);
            return;
        }
        mo16178c().m16389A().m16338a("Scheduling upload with AlarmManager");
        this.f20543d.setInexactRepeating(2, elapsedRealtime + j, Math.max(C8966e.f20277C.m16678a().longValue(), j), m16345v());
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9049r3
    /* renamed from: r */
    public final boolean mo16085r() {
        this.f20543d.cancel(m16345v());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        m16344w();
        return false;
    }

    /* renamed from: t */
    public final void m16347t() {
        m16316q();
        this.f20543d.cancel(m16345v());
        this.f20544e.m16221a();
        if (Build.VERSION.SDK_INT >= 24) {
            m16344w();
        }
    }

    /* renamed from: u */
    public final int m16346u() {
        if (this.f20545f == null) {
            String valueOf = String.valueOf(getContext().getPackageName());
            this.f20545f = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f20545f.intValue();
    }

    /* renamed from: v */
    public final PendingIntent m16345v() {
        Intent className = new Intent().setClassName(getContext(), "com.google.android.gms.measurement.AppMeasurementReceiver");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        return PendingIntent.getBroadcast(getContext(), 0, className, 0);
    }

    @TargetApi(24)
    /* renamed from: w */
    public final void m16344w() {
        JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
        mo16178c().m16389A().m16337a("Cancelling job. JobID", Integer.valueOf(m16346u()));
        jobScheduler.cancel(m16346u());
    }
}
