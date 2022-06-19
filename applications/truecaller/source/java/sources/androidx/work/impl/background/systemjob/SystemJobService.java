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
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.AbstractC26682b;
import p1727n3.p1834m0.p1835c0.C26684d;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1845t.RunnableC26792l;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/SystemJobService.class */
public class SystemJobService extends JobService implements AbstractC26682b {

    /* renamed from: c */
    public static final String f1578c = AbstractC26839p.m1295e("SystemJobService");

    /* renamed from: a */
    public C26702l f1579a;

    /* renamed from: b */
    public final Map<String, JobParameters> f1580b = new HashMap();

    /* renamed from: a */
    public static String m42604a(JobParameters jobParameters) {
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

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26682b
    /* renamed from: b */
    public void mo1376b(String str, boolean z) {
        JobParameters remove;
        AbstractC26839p.m1296c().mo1294a(f1578c, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f1580b) {
            remove = this.f1580b.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            C26702l m1431n = C26702l.m1431n(getApplicationContext());
            this.f1579a = m1431n;
            m1431n.f74728f.m1447a(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            AbstractC26839p.m1296c().mo1291f(f1578c, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C26702l c26702l = this.f1579a;
        if (c26702l != null) {
            c26702l.f74728f.m1444e(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.f1579a == null) {
            AbstractC26839p.m1296c().mo1294a(f1578c, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String m42604a = m42604a(jobParameters);
        if (TextUtils.isEmpty(m42604a)) {
            AbstractC26839p.m1296c().mo1293b(f1578c, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f1580b) {
            if (this.f1580b.containsKey(m42604a)) {
                AbstractC26839p.m1296c().mo1294a(f1578c, String.format("Job is already being executed by SystemJobService: %s", m42604a), new Throwable[0]);
                return false;
            }
            AbstractC26839p.m1296c().mo1294a(f1578c, String.format("onStartJob for %s", m42604a), new Throwable[0]);
            this.f1580b.put(m42604a, jobParameters);
            WorkerParameters.C0420a c0420a = null;
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                WorkerParameters.C0420a c0420a2 = new WorkerParameters.C0420a();
                if (jobParameters.getTriggeredContentUris() != null) {
                    c0420a2.f1567b = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    c0420a2.f1566a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                c0420a = c0420a2;
                if (i >= 28) {
                    c0420a2.f1568c = jobParameters.getNetwork();
                    c0420a = c0420a2;
                }
            }
            C26702l c26702l = this.f1579a;
            ((C26822b) c26702l.f74726d).f75051a.execute(new RunnableC26792l(c26702l, m42604a, c0420a));
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        boolean contains;
        if (this.f1579a == null) {
            AbstractC26839p.m1296c().mo1294a(f1578c, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String m42604a = m42604a(jobParameters);
        if (TextUtils.isEmpty(m42604a)) {
            AbstractC26839p.m1296c().mo1293b(f1578c, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        AbstractC26839p.m1296c().mo1294a(f1578c, String.format("onStopJob for %s", m42604a), new Throwable[0]);
        synchronized (this.f1580b) {
            this.f1580b.remove(m42604a);
        }
        this.f1579a.m1427r(m42604a);
        C26684d c26684d = this.f1579a.f74728f;
        synchronized (c26684d.f74693k) {
            contains = c26684d.f74691i.contains(m42604a);
        }
        return !contains;
    }
}
