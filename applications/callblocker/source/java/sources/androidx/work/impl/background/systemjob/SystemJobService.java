package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.AbstractC1293l;
import androidx.work.WorkerParameters;
import androidx.work.impl.AbstractC1142a;
import androidx.work.impl.C1249i;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/SystemJobService.class */
public class SystemJobService extends JobService implements AbstractC1142a {

    /* renamed from: a */
    private static final String f4115a = AbstractC1293l.m17541a("SystemJobService");

    /* renamed from: b */
    private C1249i f4116b;

    /* renamed from: c */
    private final Map<String, JobParameters> f4117c = new HashMap();

    /* renamed from: a */
    private static String m17727a(JobParameters jobParameters) {
        String str;
        PersistableBundle extras;
        try {
            extras = jobParameters.getExtras();
        } catch (NullPointerException e) {
        }
        if (extras != null && extras.containsKey("EXTRA_WORK_SPEC_ID")) {
            str = extras.getString("EXTRA_WORK_SPEC_ID");
            return str;
        }
        str = null;
        return str;
    }

    @Override // androidx.work.impl.AbstractC1142a
    /* renamed from: a */
    public void mo17680a(String str, boolean z) {
        JobParameters remove;
        AbstractC1293l.m17543a().mo17539b(f4115a, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f4117c) {
            remove = this.f4117c.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            this.f4116b = C1249i.m17656b(getApplicationContext());
            this.f4116b.m17648f().m17715a(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            AbstractC1293l.m17543a().mo17537d(f4115a, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.f4116b != null) {
            this.f4116b.m17648f().m17711b(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        boolean z;
        boolean z2 = false;
        if (this.f4116b == null) {
            AbstractC1293l.m17543a().mo17539b(f4115a, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
        } else {
            String m17727a = m17727a(jobParameters);
            if (TextUtils.isEmpty(m17727a)) {
                AbstractC1293l.m17543a().mo17536e(f4115a, "WorkSpec id not found!", new Throwable[0]);
            } else {
                WorkerParameters.C1124a c1124a = this.f4117c;
                synchronized (c1124a) {
                    try {
                        if (this.f4117c.containsKey(m17727a)) {
                            AbstractC1293l.m17543a().mo17539b(f4115a, String.format("Job is already being executed by SystemJobService: %s", m17727a), new Throwable[0]);
                        } else {
                            AbstractC1293l.m17543a().mo17539b(f4115a, String.format("onStartJob for %s", m17727a), new Throwable[0]);
                            this.f4117c.put(m17727a, jobParameters);
                            c1124a = null;
                            if (Build.VERSION.SDK_INT >= 24) {
                                WorkerParameters.C1124a c1124a2 = new WorkerParameters.C1124a();
                                if (jobParameters.getTriggeredContentUris() != null) {
                                    c1124a2.f3873b = Arrays.asList(jobParameters.getTriggeredContentUris());
                                }
                                if (jobParameters.getTriggeredContentAuthorities() != null) {
                                    c1124a2.f3872a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                                }
                                c1124a = c1124a2;
                                if (Build.VERSION.SDK_INT >= 28) {
                                    c1124a2.f3874c = jobParameters.getNetwork();
                                    c1124a = c1124a2;
                                }
                            }
                            this.f4116b.m17659a(m17727a, c1124a);
                            c1124a = true;
                        }
                    } finally {
                        z = c1124a;
                    }
                }
            }
        }
        return z2;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        boolean z = true;
        if (this.f4116b == null) {
            AbstractC1293l.m17543a().mo17539b(f4115a, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
        } else {
            String m17727a = m17727a(jobParameters);
            if (TextUtils.isEmpty(m17727a)) {
                AbstractC1293l.m17543a().mo17536e(f4115a, "WorkSpec id not found!", new Throwable[0]);
                z = false;
            } else {
                AbstractC1293l.m17543a().mo17539b(f4115a, String.format("onStopJob for %s", m17727a), new Throwable[0]);
                synchronized (this.f4117c) {
                    this.f4117c.remove(m17727a);
                }
                this.f4116b.m17654b(m17727a);
                if (this.f4116b.m17648f().m17707f(m17727a)) {
                    z = false;
                }
            }
        }
        return z;
    }
}
