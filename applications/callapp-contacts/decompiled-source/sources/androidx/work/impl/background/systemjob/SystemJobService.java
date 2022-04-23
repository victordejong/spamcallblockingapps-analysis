package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.WorkerParameters;
import androidx.work.impl.b;
import androidx.work.impl.j;
import androidx.work.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/SystemJobService.class */
public class SystemJobService extends JobService implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6063a = k.a("SystemJobService");

    /* renamed from: b  reason: collision with root package name */
    private j f6064b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, JobParameters> f6065c = new HashMap();

    private static String a(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return extras.getString("EXTRA_WORK_SPEC_ID");
        } catch (NullPointerException e) {
            return null;
        }
    }

    @Override // androidx.work.impl.b
    public final void a(String str, boolean z) {
        JobParameters remove;
        k.a();
        String.format("%s executed on JobScheduler", str);
        synchronized (this.f6065c) {
            remove = this.f6065c.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            j b2 = j.b(getApplicationContext());
            this.f6064b = b2;
            b2.f.a(this);
        } catch (IllegalStateException e) {
            if (Application.class.equals(getApplication().getClass())) {
                k.a().a(f6063a, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
                return;
            }
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        j jVar = this.f6064b;
        if (jVar != null) {
            jVar.f.b(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.f6064b == null) {
            k.a();
            jobFinished(jobParameters, true);
            return false;
        }
        String a2 = a(jobParameters);
        if (TextUtils.isEmpty(a2)) {
            k.a().a(f6063a, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f6065c) {
            if (this.f6065c.containsKey(a2)) {
                k.a();
                String.format("Job is already being executed by SystemJobService: %s", a2);
                return false;
            }
            k.a();
            String.format("onStartJob for %s", a2);
            this.f6065c.put(a2, jobParameters);
            WorkerParameters.a aVar = null;
            if (Build.VERSION.SDK_INT >= 24) {
                WorkerParameters.a aVar2 = new WorkerParameters.a();
                if (jobParameters.getTriggeredContentUris() != null) {
                    aVar2.f5963b = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    aVar2.f5962a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                aVar = aVar2;
                if (Build.VERSION.SDK_INT >= 28) {
                    aVar2.f5964c = jobParameters.getNetwork();
                    aVar = aVar2;
                }
            }
            this.f6064b.a(a2, aVar);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f6064b == null) {
            k.a();
            return true;
        }
        String a2 = a(jobParameters);
        if (TextUtils.isEmpty(a2)) {
            k.a().a(f6063a, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        k.a();
        String.format("onStopJob for %s", a2);
        synchronized (this.f6065c) {
            this.f6065c.remove(a2);
        }
        this.f6064b.c(a2);
        return !this.f6064b.f.e(a2);
    }
}
