package p1727n3.p1807k.p1808a;

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
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.util.ArrayList;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Deprecated
/* renamed from: n3.k.a.i */
/* loaded from: classes-dex2jar.jar:n3/k/a/i.class */
public abstract class AbstractServiceC26431i extends Service {
    public static final boolean DEBUG = false;
    public static final String TAG = "JobIntentService";
    public final ArrayList<C26435d> mCompatQueue;
    public AbstractC26440h mCompatWorkEnqueuer;
    public AsyncTaskC26432a mCurProcessor;
    public AbstractC26433b mJobImpl;
    public static final Object sLock = new Object();
    public static final HashMap<ComponentName, AbstractC26440h> sClassWorkEnqueuer = new HashMap<>();
    public boolean mInterruptIfStopped = false;
    public boolean mStopped = false;
    public boolean mDestroyed = false;

    /* renamed from: n3.k.a.i$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/i$a.class */
    public final class AsyncTaskC26432a extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC26432a() {
            AbstractServiceC26431i.this = r4;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            while (true) {
                AbstractC26436e dequeueWork = AbstractServiceC26431i.this.dequeueWork();
                if (dequeueWork != null) {
                    AbstractServiceC26431i.this.onHandleWork(dequeueWork.getIntent());
                    dequeueWork.mo1883O5();
                } else {
                    return null;
                }
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled(Void r3) {
            AbstractServiceC26431i.this.processorFinished();
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            AbstractServiceC26431i.this.processorFinished();
        }
    }

    /* renamed from: n3.k.a.i$b */
    /* loaded from: classes-dex2jar.jar:n3/k/a/i$b.class */
    public interface AbstractC26433b {
    }

    /* renamed from: n3.k.a.i$c */
    /* loaded from: classes-dex2jar.jar:n3/k/a/i$c.class */
    public static final class C26434c extends AbstractC26440h {

        /* renamed from: d */
        public final Context f74063d;

        /* renamed from: e */
        public final PowerManager.WakeLock f74064e;

        /* renamed from: f */
        public final PowerManager.WakeLock f74065f;

        /* renamed from: g */
        public boolean f74066g;

        /* renamed from: h */
        public boolean f74067h;

        public C26434c(Context context, ComponentName componentName) {
            super(componentName);
            this.f74063d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f74064e = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f74065f = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26440h
        /* renamed from: a */
        public void mo1882a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f74078a);
            if (this.f74063d.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f74066g) {
                        this.f74066g = true;
                        if (!this.f74067h) {
                            this.f74064e.acquire(DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
                        }
                    }
                }
            }
        }

        @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26440h
        /* renamed from: c */
        public void mo1880c() {
            synchronized (this) {
                if (this.f74067h) {
                    if (this.f74066g) {
                        this.f74064e.acquire(DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
                    }
                    this.f74067h = false;
                    this.f74065f.release();
                }
            }
        }

        @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26440h
        /* renamed from: d */
        public void mo1879d() {
            synchronized (this) {
                if (!this.f74067h) {
                    this.f74067h = true;
                    this.f74065f.acquire(600000L);
                    this.f74064e.release();
                }
            }
        }

        @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26440h
        /* renamed from: e */
        public void mo1878e() {
            synchronized (this) {
                this.f74066g = false;
            }
        }
    }

    /* renamed from: n3.k.a.i$d */
    /* loaded from: classes-dex2jar.jar:n3/k/a/i$d.class */
    public final class C26435d implements AbstractC26436e {

        /* renamed from: a */
        public final Intent f74068a;

        /* renamed from: b */
        public final int f74069b;

        public C26435d(Intent intent, int i) {
            AbstractServiceC26431i.this = r4;
            this.f74068a = intent;
            this.f74069b = i;
        }

        @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26436e
        /* renamed from: O5 */
        public void mo1883O5() {
            AbstractServiceC26431i.this.stopSelf(this.f74069b);
        }

        @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26436e
        public Intent getIntent() {
            return this.f74068a;
        }
    }

    /* renamed from: n3.k.a.i$e */
    /* loaded from: classes-dex2jar.jar:n3/k/a/i$e.class */
    public interface AbstractC26436e {
        /* renamed from: O5 */
        void mo1883O5();

        Intent getIntent();
    }

    /* renamed from: n3.k.a.i$f */
    /* loaded from: classes-dex2jar.jar:n3/k/a/i$f.class */
    public static final class jobJobServiceEngineC26437f extends JobServiceEngine implements AbstractC26433b {

        /* renamed from: a */
        public final AbstractServiceC26431i f74071a;

        /* renamed from: b */
        public final Object f74072b = new Object();

        /* renamed from: c */
        public JobParameters f74073c;

        /* renamed from: n3.k.a.i$f$a */
        /* loaded from: classes-dex2jar.jar:n3/k/a/i$f$a.class */
        public final class C26438a implements AbstractC26436e {

            /* renamed from: a */
            public final JobWorkItem f74074a;

            public C26438a(JobWorkItem jobWorkItem) {
                jobJobServiceEngineC26437f.this = r4;
                this.f74074a = jobWorkItem;
            }

            @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26436e
            /* renamed from: O5 */
            public void mo1883O5() {
                synchronized (jobJobServiceEngineC26437f.this.f74072b) {
                    JobParameters jobParameters = jobJobServiceEngineC26437f.this.f74073c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f74074a);
                    }
                }
            }

            @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26436e
            public Intent getIntent() {
                return this.f74074a.getIntent();
            }
        }

        public jobJobServiceEngineC26437f(AbstractServiceC26431i abstractServiceC26431i) {
            super(abstractServiceC26431i);
            this.f74071a = abstractServiceC26431i;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f74073c = jobParameters;
            this.f74071a.ensureProcessorRunningLocked(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean doStopCurrentWork = this.f74071a.doStopCurrentWork();
            synchronized (this.f74072b) {
                this.f74073c = null;
            }
            return doStopCurrentWork;
        }
    }

    /* renamed from: n3.k.a.i$g */
    /* loaded from: classes-dex2jar.jar:n3/k/a/i$g.class */
    public static final class C26439g extends AbstractC26440h {

        /* renamed from: d */
        public final JobInfo f74076d;

        /* renamed from: e */
        public final JobScheduler f74077e;

        public C26439g(Context context, ComponentName componentName, int i) {
            super(componentName);
            m1881b(i);
            this.f74076d = new JobInfo.Builder(i, this.f74078a).setOverrideDeadline(0L).build();
            this.f74077e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26440h
        /* renamed from: a */
        public void mo1882a(Intent intent) {
            this.f74077e.enqueue(this.f74076d, new JobWorkItem(intent));
        }
    }

    /* renamed from: n3.k.a.i$h */
    /* loaded from: classes-dex2jar.jar:n3/k/a/i$h.class */
    public static abstract class AbstractC26440h {

        /* renamed from: a */
        public final ComponentName f74078a;

        /* renamed from: b */
        public boolean f74079b;

        /* renamed from: c */
        public int f74080c;

        public AbstractC26440h(ComponentName componentName) {
            this.f74078a = componentName;
        }

        /* renamed from: a */
        public abstract void mo1882a(Intent intent);

        /* renamed from: b */
        public void m1881b(int i) {
            if (!this.f74079b) {
                this.f74079b = true;
                this.f74080c = i;
            } else if (this.f74080c == i) {
            } else {
                StringBuilder m8720E = C22128a.m8720E("Given job ID ", i, " is different than previous ");
                m8720E.append(this.f74080c);
                throw new IllegalArgumentException(m8720E.toString());
            }
        }

        /* renamed from: c */
        public void mo1880c() {
        }

        /* renamed from: d */
        public void mo1879d() {
        }

        /* renamed from: e */
        public void mo1878e() {
        }
    }

    public AbstractServiceC26431i() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mCompatQueue = null;
        } else {
            this.mCompatQueue = new ArrayList<>();
        }
    }

    public static void enqueueWork(Context context, ComponentName componentName, int i, Intent intent) {
        if (intent != null) {
            synchronized (sLock) {
                AbstractC26440h workEnqueuer = getWorkEnqueuer(context, componentName, true, i);
                workEnqueuer.m1881b(i);
                workEnqueuer.mo1882a(intent);
            }
            return;
        }
        throw new IllegalArgumentException("work must not be null");
    }

    public static void enqueueWork(Context context, Class<?> cls, int i, Intent intent) {
        enqueueWork(context, new ComponentName(context, cls), i, intent);
    }

    public static AbstractC26440h getWorkEnqueuer(Context context, ComponentName componentName, boolean z, int i) {
        C26439g c26439g;
        HashMap<ComponentName, AbstractC26440h> hashMap = sClassWorkEnqueuer;
        AbstractC26440h abstractC26440h = hashMap.get(componentName);
        AbstractC26440h abstractC26440h2 = abstractC26440h;
        if (abstractC26440h == null) {
            if (Build.VERSION.SDK_INT < 26) {
                c26439g = new C26434c(context, componentName);
            } else if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            } else {
                c26439g = new C26439g(context, componentName, i);
            }
            hashMap.put(componentName, c26439g);
            abstractC26440h2 = c26439g;
        }
        return abstractC26440h2;
    }

    public AbstractC26436e dequeueWork() {
        AbstractC26433b abstractC26433b = this.mJobImpl;
        jobJobServiceEngineC26437f.C26438a c26438a = null;
        if (abstractC26433b == null) {
            synchronized (this.mCompatQueue) {
                if (this.mCompatQueue.size() <= 0) {
                    return null;
                }
                return this.mCompatQueue.remove(0);
            }
        }
        jobJobServiceEngineC26437f jobjobserviceenginec26437f = (jobJobServiceEngineC26437f) abstractC26433b;
        synchronized (jobjobserviceenginec26437f.f74072b) {
            JobParameters jobParameters = jobjobserviceenginec26437f.f74073c;
            if (jobParameters != null) {
                JobWorkItem dequeueWork = jobParameters.dequeueWork();
                if (dequeueWork != null) {
                    dequeueWork.getIntent().setExtrasClassLoader(jobjobserviceenginec26437f.f74071a.getClassLoader());
                    c26438a = new jobJobServiceEngineC26437f.C26438a(dequeueWork);
                }
            }
        }
        return c26438a;
    }

    public boolean doStopCurrentWork() {
        AsyncTaskC26432a asyncTaskC26432a = this.mCurProcessor;
        if (asyncTaskC26432a != null) {
            asyncTaskC26432a.cancel(this.mInterruptIfStopped);
        }
        this.mStopped = true;
        return onStopCurrentWork();
    }

    public void ensureProcessorRunningLocked(boolean z) {
        if (this.mCurProcessor == null) {
            this.mCurProcessor = new AsyncTaskC26432a();
            AbstractC26440h abstractC26440h = this.mCompatWorkEnqueuer;
            if (abstractC26440h != null && z) {
                abstractC26440h.mo1879d();
            }
            this.mCurProcessor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public boolean isStopped() {
        return this.mStopped;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        AbstractC26433b abstractC26433b = this.mJobImpl;
        if (abstractC26433b != null) {
            return ((jobJobServiceEngineC26437f) abstractC26433b).getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.mJobImpl = new jobJobServiceEngineC26437f(this);
            this.mCompatWorkEnqueuer = null;
            return;
        }
        this.mJobImpl = null;
        this.mCompatWorkEnqueuer = getWorkEnqueuer(this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<C26435d> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mDestroyed = true;
                this.mCompatWorkEnqueuer.mo1880c();
            }
        }
    }

    public abstract void onHandleWork(Intent intent);

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.mCompatQueue != null) {
            this.mCompatWorkEnqueuer.mo1878e();
            synchronized (this.mCompatQueue) {
                ArrayList<C26435d> arrayList = this.mCompatQueue;
                if (intent == null) {
                    intent = new Intent();
                }
                arrayList.add(new C26435d(intent, i2));
                ensureProcessorRunningLocked(true);
            }
            return 3;
        }
        return 2;
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    public void processorFinished() {
        ArrayList<C26435d> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mCurProcessor = null;
                ArrayList<C26435d> arrayList2 = this.mCompatQueue;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    ensureProcessorRunningLocked(false);
                } else if (!this.mDestroyed) {
                    this.mCompatWorkEnqueuer.mo1880c();
                }
            }
        }
    }

    public void setInterruptIfStopped(boolean z) {
        this.mInterruptIfStopped = z;
    }
}
