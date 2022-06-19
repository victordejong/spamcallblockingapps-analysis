package p193e.p194a.p1187r2;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import p193e.p194a.p1187r2.ServiceC19863i;
/* renamed from: e.a.r2.s */
/* loaded from: classes5-dex2jar.jar:e/a/r2/s.class */
public class jobJobServiceEngineC19885s extends JobServiceEngine implements ServiceC19863i.AbstractC19864a {

    /* renamed from: a */
    public final ComponentName f56310a;

    /* renamed from: b */
    public final WeakReference<Callable<IBinder>> f56311b;

    /* renamed from: c */
    public JobParameters f56312c = null;

    public jobJobServiceEngineC19885s(Service service, Callable callable, C19884r c19884r) {
        super(service);
        this.f56310a = new ComponentName(service.getApplicationContext(), service.getClass());
        this.f56311b = new WeakReference<>(callable);
    }

    @Override // android.app.job.JobServiceEngine
    public boolean onStartJob(JobParameters jobParameters) {
        WeakReference<ServiceConnection> weakReference = C19858g0.f56252f.get(jobParameters.getJobId());
        ServiceConnection serviceConnection = weakReference != null ? weakReference.get() : null;
        Callable<IBinder> callable = this.f56311b.get();
        if (serviceConnection == null || callable == null) {
            return false;
        }
        try {
            IBinder call = callable.call();
            if (call == null) {
                return false;
            }
            this.f56312c = jobParameters;
            serviceConnection.onServiceConnected(this.f56310a, call);
            return true;
        } catch (Exception e) {
            throw new RuntimeException("Can't fetch binder", e);
        }
    }

    @Override // android.app.job.JobServiceEngine
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
