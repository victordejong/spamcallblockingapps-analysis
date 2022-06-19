package com.firebase.jobdispatcher;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Locale;
import up0;
/* loaded from: classes-dex2jar.jar:com/firebase/jobdispatcher/JobService.class */
public abstract class JobService extends Service {

    /* renamed from: c */
    public static final Handler f2706c = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public final h4<String, C0382d> f2707a = new h4<>(1);

    /* renamed from: b */
    public final up0.a f2708b = new a(this);

    /* renamed from: com.firebase.jobdispatcher.JobService$b */
    /* loaded from: classes-dex2jar.jar:com/firebase/jobdispatcher/JobService$b.class */
    public class RunnableC0380b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ zp0 f2709a;

        public RunnableC0380b(zp0 zp0Var) {
            JobService.this = r4;
            this.f2709a = zp0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0382d c0382d;
            synchronized (JobService.this.f2707a) {
                if (!JobService.this.m4848c(this.f2709a) && (c0382d = (C0382d) JobService.this.f2707a.remove(this.f2709a.getTag())) != null) {
                    c0382d.m4844a(0);
                }
            }
        }
    }

    /* renamed from: com.firebase.jobdispatcher.JobService$c */
    /* loaded from: classes-dex2jar.jar:com/firebase/jobdispatcher/JobService$c.class */
    public class RunnableC0381c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ zp0 f2711a;

        /* renamed from: b */
        public final /* synthetic */ boolean f2712b;

        /* renamed from: c */
        public final /* synthetic */ C0382d f2713c;

        public RunnableC0381c(zp0 zp0Var, boolean z, C0382d c0382d) {
            JobService.this = r4;
            this.f2711a = zp0Var;
            this.f2712b = z;
            this.f2713c = c0382d;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean m4847d = JobService.this.m4847d(this.f2711a);
            if (this.f2712b) {
                this.f2713c.m4844a(m4847d ? 1 : 0);
            }
        }
    }

    /* renamed from: com.firebase.jobdispatcher.JobService$d */
    /* loaded from: classes-dex2jar.jar:com/firebase/jobdispatcher/JobService$d.class */
    public static final class C0382d {

        /* renamed from: a */
        public final zp0 f2715a;

        /* renamed from: b */
        public final tp0 f2716b;

        public C0382d(zp0 zp0Var, tp0 tp0Var) {
            this.f2715a = zp0Var;
            this.f2716b = tp0Var;
        }

        /* renamed from: a */
        public void m4844a(int i) {
            try {
                tp0 tp0Var = this.f2716b;
                xp0 d = GooglePlayReceiver.d();
                zp0 zp0Var = this.f2715a;
                Bundle bundle = new Bundle();
                d.g(zp0Var, bundle);
                tp0Var.g(bundle, i);
            } catch (RemoteException e) {
                Log.e("FJD.JobService", "Failed to send result to driver", e);
            }
        }
    }

    /* renamed from: b */
    public final void m4849b(zp0 zp0Var, boolean z) {
        if (zp0Var == null) {
            Log.e("FJD.JobService", "jobFinished called with a null JobParameters");
            return;
        }
        synchronized (this.f2707a) {
            C0382d c0382d = (C0382d) this.f2707a.remove(zp0Var.getTag());
            if (c0382d != null) {
                c0382d.m4844a(z ? 1 : 0);
            }
        }
    }

    /* renamed from: c */
    public abstract boolean m4848c(zp0 zp0Var);

    /* renamed from: d */
    public abstract boolean m4847d(zp0 zp0Var);

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(fileDescriptor, printWriter, strArr);
    }

    /* renamed from: e */
    public void m4846e(zp0 zp0Var, tp0 tp0Var) {
        synchronized (this.f2707a) {
            if (this.f2707a.containsKey(zp0Var.getTag())) {
                Log.w("FJD.JobService", String.format(Locale.US, "Job with tag = %s was already running.", zp0Var.getTag()));
                return;
            }
            this.f2707a.put(zp0Var.getTag(), new C0382d(zp0Var, tp0Var));
            f2706c.post(new RunnableC0380b(zp0Var));
        }
    }

    /* renamed from: f */
    public void m4845f(zp0 zp0Var, boolean z) {
        synchronized (this.f2707a) {
            C0382d c0382d = (C0382d) this.f2707a.remove(zp0Var.getTag());
            if (c0382d != null) {
                f2706c.post(new RunnableC0381c(zp0Var, z, c0382d));
                return;
            }
            if (Log.isLoggable("FJD.JobService", 3)) {
                Log.d("FJD.JobService", "Provided job has already been executed.");
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f2708b;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        stopSelf(i2);
        return 2;
    }

    @Override // android.app.Service
    public final void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        synchronized (this.f2707a) {
            for (int size = this.f2707a.size() - 1; size >= 0; size--) {
                h4<String, C0382d> h4Var = this.f2707a;
                C0382d c0382d = (C0382d) h4Var.remove(h4Var.i(size));
                if (c0382d != null) {
                    c0382d.m4844a(m4847d(c0382d.f2715a) ? 1 : 2);
                }
            }
        }
        return super.onUnbind(intent);
    }
}
