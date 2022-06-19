package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService.class */
public abstract class JobIntentService extends Service {

    /* renamed from: d */
    static final Object f2789d = new Object();

    /* renamed from: e */
    static final HashMap<ComponentName, AbstractC0546h> f2790e = new HashMap<>();

    /* renamed from: f */
    AbstractC0539b f2791f;

    /* renamed from: g */
    AbstractC0546h f2792g;

    /* renamed from: h */
    AsyncTaskC0538a f2793h;

    /* renamed from: i */
    boolean f2794i = false;

    /* renamed from: j */
    boolean f2795j = false;

    /* renamed from: k */
    boolean f2796k = false;

    /* renamed from: l */
    final ArrayList<C0541d> f2797l;

    /* renamed from: androidx.core.app.JobIntentService$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$a.class */
    public final class AsyncTaskC0538a extends AsyncTask<Void, Void, Void> {
        AsyncTaskC0538a() {
            JobIntentService.this = r4;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                AbstractC0542e m33502a = JobIntentService.this.m33502a();
                if (m33502a != null) {
                    JobIntentService.this.m33498e(m33502a.getIntent());
                    m33502a.mo33490a();
                } else {
                    return null;
                }
            }
        }

        /* renamed from: b */
        public void onCancelled(Void r3) {
            JobIntentService.this.m33496g();
        }

        /* renamed from: c */
        public void onPostExecute(Void r3) {
            JobIntentService.this.m33496g();
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$b.class */
    public interface AbstractC0539b {
        /* renamed from: a */
        IBinder mo33492a();

        /* renamed from: b */
        AbstractC0542e mo33491b();
    }

    /* renamed from: androidx.core.app.JobIntentService$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$c.class */
    public static final class C0540c extends AbstractC0546h {

        /* renamed from: d */
        private final Context f2799d;

        /* renamed from: e */
        private final PowerManager.WakeLock f2800e;

        /* renamed from: f */
        private final PowerManager.WakeLock f2801f;

        /* renamed from: g */
        boolean f2802g;

        /* renamed from: h */
        boolean f2803h;

        C0540c(Context context, ComponentName componentName) {
            super(componentName);
            this.f2799d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f2800e = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f2801f = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0546h
        /* renamed from: b */
        public void mo33488b() {
            synchronized (this) {
                if (this.f2803h) {
                    if (this.f2802g) {
                        this.f2800e.acquire(60000L);
                    }
                    this.f2803h = false;
                    this.f2801f.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0546h
        /* renamed from: c */
        public void mo33487c() {
            synchronized (this) {
                if (!this.f2803h) {
                    this.f2803h = true;
                    this.f2801f.acquire(600000L);
                    this.f2800e.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0546h
        /* renamed from: d */
        public void mo33486d() {
            synchronized (this) {
                this.f2802g = false;
            }
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$d.class */
    public final class C0541d implements AbstractC0542e {

        /* renamed from: a */
        final Intent f2804a;

        /* renamed from: b */
        final int f2805b;

        C0541d(Intent intent, int i) {
            JobIntentService.this = r4;
            this.f2804a = intent;
            this.f2805b = i;
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0542e
        /* renamed from: a */
        public void mo33490a() {
            JobIntentService.this.stopSelf(this.f2805b);
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0542e
        public Intent getIntent() {
            return this.f2804a;
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$e.class */
    public interface AbstractC0542e {
        /* renamed from: a */
        void mo33490a();

        Intent getIntent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.JobIntentService$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$f.class */
    public static final class jobJobServiceEngineC0543f extends JobServiceEngine implements AbstractC0539b {

        /* renamed from: a */
        final JobIntentService f2807a;

        /* renamed from: b */
        final Object f2808b = new Object();

        /* renamed from: c */
        JobParameters f2809c;

        /* renamed from: androidx.core.app.JobIntentService$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$f$a.class */
        final class C0544a implements AbstractC0542e {

            /* renamed from: a */
            final JobWorkItem f2810a;

            C0544a(JobWorkItem jobWorkItem) {
                jobJobServiceEngineC0543f.this = r4;
                this.f2810a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.AbstractC0542e
            /* renamed from: a */
            public void mo33490a() {
                synchronized (jobJobServiceEngineC0543f.this.f2808b) {
                    JobParameters jobParameters = jobJobServiceEngineC0543f.this.f2809c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f2810a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.AbstractC0542e
            public Intent getIntent() {
                return this.f2810a.getIntent();
            }
        }

        jobJobServiceEngineC0543f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f2807a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0539b
        /* renamed from: a */
        public IBinder mo33492a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0539b
        /* renamed from: b */
        public AbstractC0542e mo33491b() {
            synchronized (this.f2808b) {
                JobParameters jobParameters = this.f2809c;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem dequeueWork = jobParameters.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.f2807a.getClassLoader());
                return new C0544a(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f2809c = jobParameters;
            this.f2807a.m33500c(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean m33501b = this.f2807a.m33501b();
            synchronized (this.f2808b) {
                this.f2809c = null;
            }
            return m33501b;
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$g */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$g.class */
    public static final class C0545g extends AbstractC0546h {

        /* renamed from: d */
        private final JobInfo f2812d;

        /* renamed from: e */
        private final JobScheduler f2813e;

        C0545g(Context context, ComponentName componentName, int i) {
            super(componentName);
            m33489a(i);
            this.f2812d = new JobInfo.Builder(i, this.f2814a).setOverrideDeadline(0L).build();
            this.f2813e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$h */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$h.class */
    public static abstract class AbstractC0546h {

        /* renamed from: a */
        final ComponentName f2814a;

        /* renamed from: b */
        boolean f2815b;

        /* renamed from: c */
        int f2816c;

        AbstractC0546h(ComponentName componentName) {
            this.f2814a = componentName;
        }

        /* renamed from: a */
        void m33489a(int i) {
            if (!this.f2815b) {
                this.f2815b = true;
                this.f2816c = i;
            } else if (this.f2816c == i) {
            } else {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.f2816c);
            }
        }

        /* renamed from: b */
        public void mo33488b() {
        }

        /* renamed from: c */
        public void mo33487c() {
        }

        /* renamed from: d */
        public void mo33486d() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2797l = null;
        } else {
            this.f2797l = new ArrayList<>();
        }
    }

    /* renamed from: d */
    static AbstractC0546h m33499d(Context context, ComponentName componentName, boolean z, int i) {
        C0545g c0545g;
        HashMap<ComponentName, AbstractC0546h> hashMap = f2790e;
        AbstractC0546h abstractC0546h = hashMap.get(componentName);
        AbstractC0546h abstractC0546h2 = abstractC0546h;
        if (abstractC0546h == null) {
            if (Build.VERSION.SDK_INT < 26) {
                c0545g = new C0540c(context, componentName);
            } else if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            } else {
                c0545g = new C0545g(context, componentName, i);
            }
            hashMap.put(componentName, c0545g);
            abstractC0546h2 = c0545g;
        }
        return abstractC0546h2;
    }

    /* renamed from: a */
    AbstractC0542e m33502a() {
        AbstractC0539b abstractC0539b = this.f2791f;
        if (abstractC0539b != null) {
            return abstractC0539b.mo33491b();
        }
        synchronized (this.f2797l) {
            if (this.f2797l.size() <= 0) {
                return null;
            }
            return this.f2797l.remove(0);
        }
    }

    /* renamed from: b */
    boolean m33501b() {
        AsyncTaskC0538a asyncTaskC0538a = this.f2793h;
        if (asyncTaskC0538a != null) {
            asyncTaskC0538a.cancel(this.f2794i);
        }
        this.f2795j = true;
        return m33497f();
    }

    /* renamed from: c */
    void m33500c(boolean z) {
        if (this.f2793h == null) {
            this.f2793h = new AsyncTaskC0538a();
            AbstractC0546h abstractC0546h = this.f2792g;
            if (abstractC0546h != null && z) {
                abstractC0546h.mo33487c();
            }
            this.f2793h.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: e */
    protected abstract void m33498e(Intent intent);

    /* renamed from: f */
    public boolean m33497f() {
        return true;
    }

    /* renamed from: g */
    void m33496g() {
        ArrayList<C0541d> arrayList = this.f2797l;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f2793h = null;
                ArrayList<C0541d> arrayList2 = this.f2797l;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    m33500c(false);
                } else if (!this.f2796k) {
                    this.f2792g.mo33488b();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        AbstractC0539b abstractC0539b = this.f2791f;
        if (abstractC0539b != null) {
            return abstractC0539b.mo33492a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2791f = new jobJobServiceEngineC0543f(this);
            this.f2792g = null;
            return;
        }
        this.f2791f = null;
        this.f2792g = m33499d(this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<C0541d> arrayList = this.f2797l;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f2796k = true;
                this.f2792g.mo33488b();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f2797l != null) {
            this.f2792g.mo33486d();
            synchronized (this.f2797l) {
                ArrayList<C0541d> arrayList = this.f2797l;
                if (intent == null) {
                    intent = new Intent();
                }
                arrayList.add(new C0541d(intent, i2));
                m33500c(true);
            }
            return 3;
        }
        return 2;
    }
}
