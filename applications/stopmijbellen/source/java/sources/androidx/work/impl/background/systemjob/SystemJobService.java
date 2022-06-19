package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.WorkerParameters;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import p003a2.C0009b;
import p186o1.AbstractC3824h;
import p197p1.AbstractC3996a;
import p197p1.C3998c;
import p197p1.C4006j;
import p292y1.RunnableC4965k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/SystemJobService.class */
public class SystemJobService extends JobService implements AbstractC3996a {

    /* renamed from: c */
    public static final String f2706c = AbstractC3824h.m1773e("SystemJobService");

    /* renamed from: a */
    public C4006j f2707a;

    /* renamed from: b */
    public final Map<String, JobParameters> f2708b = new HashMap();

    /* renamed from: b */
    public static String m7460b(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras != null && extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return extras.getString("EXTRA_WORK_SPEC_ID");
            }
            return null;
        } catch (NullPointerException e) {
            return null;
        }
    }

    @Override // p197p1.AbstractC3996a
    /* renamed from: a */
    public void mo1352a(String str, boolean z) {
        JobParameters remove;
        AbstractC3824h.m1774c().mo1772a(f2706c, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f2708b) {
            remove = this.f2708b.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            C4006j m1535c = C4006j.m1535c(getApplicationContext());
            this.f2707a = m1535c;
            m1535c.f12587f.m1551b(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            AbstractC3824h.m1774c().mo1769f(f2706c, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C4006j c4006j = this.f2707a;
        if (c4006j != null) {
            c4006j.f12587f.m1548e(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.f2707a == null) {
            AbstractC3824h.m1774c().mo1772a(f2706c, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String m7460b = m7460b(jobParameters);
        if (TextUtils.isEmpty(m7460b)) {
            AbstractC3824h.m1774c().mo1771b(f2706c, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f2708b) {
            if (this.f2708b.containsKey(m7460b)) {
                AbstractC3824h.m1774c().mo1772a(f2706c, String.format("Job is already being executed by SystemJobService: %s", m7460b), new Throwable[0]);
                return false;
            }
            AbstractC3824h.m1774c().mo1772a(f2706c, String.format("onStartJob for %s", m7460b), new Throwable[0]);
            this.f2708b.put(m7460b, jobParameters);
            WorkerParameters.C0676a c0676a = null;
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                WorkerParameters.C0676a c0676a2 = new WorkerParameters.C0676a();
                if (jobParameters.getTriggeredContentUris() != null) {
                    c0676a2.f2629b = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    c0676a2.f2628a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                c0676a = c0676a2;
                if (i >= 28) {
                    c0676a2.f2630c = jobParameters.getNetwork();
                    c0676a = c0676a2;
                }
            }
            C4006j c4006j = this.f2707a;
            ((C0009b) c4006j.f12585d).f8a.execute(new RunnableC4965k(c4006j, m7460b, c0676a));
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        boolean contains;
        if (this.f2707a == null) {
            AbstractC3824h.m1774c().mo1772a(f2706c, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String m7460b = m7460b(jobParameters);
        if (TextUtils.isEmpty(m7460b)) {
            AbstractC3824h.m1774c().mo1771b(f2706c, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        AbstractC3824h.m1774c().mo1772a(f2706c, String.format("onStopJob for %s", m7460b), new Throwable[0]);
        synchronized (this.f2708b) {
            this.f2708b.remove(m7460b);
        }
        this.f2707a.m1531g(m7460b);
        C3998c c3998c = this.f2707a.f12587f;
        synchronized (c3998c.f12561k) {
            contains = c3998c.f12559i.contains(m7460b);
        }
        return !contains;
    }
}
