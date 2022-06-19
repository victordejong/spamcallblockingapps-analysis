package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.WorkerParameters;
import androidx.work.impl.AbstractC3027b;
import androidx.work.impl.C3068j;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/SystemJobService.class */
public class SystemJobService extends JobService implements AbstractC3027b {

    /* renamed from: a */
    private static final String f11270a = AbstractC3145k.m39275a("SystemJobService");

    /* renamed from: b */
    private C3068j f11271b;

    /* renamed from: c */
    private final Map<String, JobParameters> f11272c = new HashMap();

    /* renamed from: a */
    private static String m39409a(JobParameters jobParameters) {
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

    @Override // androidx.work.impl.AbstractC3027b
    /* renamed from: a */
    public final void mo39374a(String str, boolean z) {
        JobParameters remove;
        AbstractC3145k.m39277a();
        String.format("%s executed on JobScheduler", str);
        synchronized (this.f11272c) {
            remove = this.f11272c.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            C3068j m39359b = C3068j.m39359b(getApplicationContext());
            this.f11271b = m39359b;
            m39359b.f11358f.m39398a(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            AbstractC3145k.m39277a().mo39274a(f11270a, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C3068j c3068j = this.f11271b;
        if (c3068j != null) {
            c3068j.f11358f.m39394b(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.f11271b == null) {
            AbstractC3145k.m39277a();
            jobFinished(jobParameters, true);
            return false;
        }
        String m39409a = m39409a(jobParameters);
        if (TextUtils.isEmpty(m39409a)) {
            AbstractC3145k.m39277a().mo39273a(f11270a, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f11272c) {
            if (this.f11272c.containsKey(m39409a)) {
                AbstractC3145k.m39277a();
                String.format("Job is already being executed by SystemJobService: %s", m39409a);
                return false;
            }
            AbstractC3145k.m39277a();
            String.format("onStartJob for %s", m39409a);
            this.f11272c.put(m39409a, jobParameters);
            WorkerParameters.C2985a c2985a = null;
            if (Build.VERSION.SDK_INT >= 24) {
                WorkerParameters.C2985a c2985a2 = new WorkerParameters.C2985a();
                if (jobParameters.getTriggeredContentUris() != null) {
                    c2985a2.f11127b = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    c2985a2.f11126a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                c2985a = c2985a2;
                if (Build.VERSION.SDK_INT >= 28) {
                    c2985a2.f11128c = jobParameters.getNetwork();
                    c2985a = c2985a2;
                }
            }
            this.f11271b.m39361a(m39409a, c2985a);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f11271b == null) {
            AbstractC3145k.m39277a();
            return true;
        }
        String m39409a = m39409a(jobParameters);
        if (TextUtils.isEmpty(m39409a)) {
            AbstractC3145k.m39277a().mo39273a(f11270a, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        AbstractC3145k.m39277a();
        String.format("onStopJob for %s", m39409a);
        synchronized (this.f11272c) {
            this.f11272c.remove(m39409a);
        }
        this.f11271b.m39356c(m39409a);
        return !this.f11271b.f11358f.m39391e(m39409a);
    }
}
