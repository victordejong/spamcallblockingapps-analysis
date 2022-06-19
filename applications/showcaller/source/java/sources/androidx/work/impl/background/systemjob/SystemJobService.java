package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.WorkerParameters;
import androidx.work.impl.AbstractC1250b;
import androidx.work.impl.C1289j;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/SystemJobService.class */
public class SystemJobService extends JobService implements AbstractC1250b {

    /* renamed from: d */
    private static final String f5363d = AbstractC1404j.m30159f("SystemJobService");

    /* renamed from: e */
    private C1289j f5364e;

    /* renamed from: f */
    private final Map<String, JobParameters> f5365f = new HashMap();

    /* renamed from: a */
    private static String m30461a(JobParameters jobParameters) {
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

    @Override // androidx.work.impl.AbstractC1250b
    /* renamed from: d */
    public void mo30356d(String str, boolean z) {
        JobParameters remove;
        AbstractC1404j.m30161c().mo30158a(f5363d, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f5365f) {
            remove = this.f5365f.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            C1289j m30392k = C1289j.m30392k(getApplicationContext());
            this.f5364e = m30392k;
            m30392k.m30390m().m30448c(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            AbstractC1404j.m30161c().mo30154h(f5363d, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C1289j c1289j = this.f5364e;
        if (c1289j != null) {
            c1289j.m30390m().m30443i(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.f5364e == null) {
            AbstractC1404j.m30161c().mo30158a(f5363d, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String m30461a = m30461a(jobParameters);
        if (TextUtils.isEmpty(m30461a)) {
            AbstractC1404j.m30161c().mo30157b(f5363d, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f5365f) {
            if (this.f5365f.containsKey(m30461a)) {
                AbstractC1404j.m30161c().mo30158a(f5363d, String.format("Job is already being executed by SystemJobService: %s", m30461a), new Throwable[0]);
                return false;
            }
            AbstractC1404j.m30161c().mo30158a(f5363d, String.format("onStartJob for %s", m30461a), new Throwable[0]);
            this.f5365f.put(m30461a, jobParameters);
            WorkerParameters.C1229a c1229a = null;
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                WorkerParameters.C1229a c1229a2 = new WorkerParameters.C1229a();
                if (jobParameters.getTriggeredContentUris() != null) {
                    c1229a2.f5248b = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    c1229a2.f5247a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                c1229a = c1229a2;
                if (i >= 28) {
                    c1229a2.f5249c = jobParameters.getNetwork();
                    c1229a = c1229a2;
                }
            }
            this.f5364e.m30381v(m30461a, c1229a);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f5364e == null) {
            AbstractC1404j.m30161c().mo30158a(f5363d, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String m30461a = m30461a(jobParameters);
        if (TextUtils.isEmpty(m30461a)) {
            AbstractC1404j.m30161c().mo30157b(f5363d, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        AbstractC1404j.m30161c().mo30158a(f5363d, String.format("onStopJob for %s", m30461a), new Throwable[0]);
        synchronized (this.f5365f) {
            this.f5365f.remove(m30461a);
        }
        this.f5364e.m30379x(m30461a);
        return !this.f5364e.m30390m().m30446f(m30461a);
    }
}
