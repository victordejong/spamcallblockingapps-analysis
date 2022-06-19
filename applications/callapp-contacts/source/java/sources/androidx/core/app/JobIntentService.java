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
import com.callapp.contacts.model.Constants;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService.class */
public abstract class JobIntentService extends Service {

    /* renamed from: h */
    static final Object f3225h = new Object();

    /* renamed from: i */
    static final HashMap<ComponentName, AbstractC0725h> f3226i = new HashMap<>();

    /* renamed from: a */
    AbstractC0718b f3227a;

    /* renamed from: b */
    AbstractC0725h f3228b;

    /* renamed from: c */
    AsyncTaskC0717a f3229c;

    /* renamed from: d */
    boolean f3230d = false;

    /* renamed from: e */
    boolean f3231e = false;

    /* renamed from: f */
    boolean f3232f = false;

    /* renamed from: g */
    final ArrayList<C0720d> f3233g;

    /* renamed from: androidx.core.app.JobIntentService$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$a.class */
    public final class AsyncTaskC0717a extends AsyncTask<Void, Void, Void> {
        AsyncTaskC0717a() {
            JobIntentService.this = r4;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            while (true) {
                AbstractC0721e mo44619c = JobIntentService.this.mo44619c();
                if (mo44619c != null) {
                    JobIntentService.this.mo27756a(mo44619c.mo44531a());
                    mo44619c.mo44530b();
                } else {
                    return null;
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onCancelled(Void r3) {
            JobIntentService.this.m44625b();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r3) {
            JobIntentService.this.m44625b();
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$b.class */
    public interface AbstractC0718b {
        /* renamed from: a */
        IBinder mo44533a();

        /* renamed from: b */
        AbstractC0721e mo44532b();
    }

    /* renamed from: androidx.core.app.JobIntentService$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$c.class */
    public static final class C0719c extends AbstractC0725h {

        /* renamed from: a */
        boolean f3235a;

        /* renamed from: b */
        boolean f3236b;

        /* renamed from: f */
        private final Context f3237f;

        /* renamed from: g */
        private final PowerManager.WakeLock f3238g;

        /* renamed from: h */
        private final PowerManager.WakeLock f3239h;

        C0719c(Context context, ComponentName componentName) {
            super(componentName);
            this.f3237f = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f3238g = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f3239h = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0725h
        /* renamed from: a */
        public final void mo44624a() {
            synchronized (this) {
                this.f3235a = false;
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0725h
        /* renamed from: a */
        final void mo44622a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f3250c);
            if (this.f3237f.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f3235a) {
                        this.f3235a = true;
                        if (!this.f3236b) {
                            this.f3238g.acquire(Constants.MINUTE_IN_MILLIS);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0725h
        /* renamed from: b */
        public final void mo44621b() {
            synchronized (this) {
                if (!this.f3236b) {
                    this.f3236b = true;
                    this.f3239h.acquire(600000L);
                    this.f3238g.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0725h
        /* renamed from: c */
        public final void mo44620c() {
            synchronized (this) {
                if (this.f3236b) {
                    if (this.f3235a) {
                        this.f3238g.acquire(Constants.MINUTE_IN_MILLIS);
                    }
                    this.f3236b = false;
                    this.f3239h.release();
                }
            }
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$d.class */
    public final class C0720d implements AbstractC0721e {

        /* renamed from: a */
        final Intent f3240a;

        /* renamed from: b */
        final int f3241b;

        C0720d(Intent intent, int i) {
            JobIntentService.this = r4;
            this.f3240a = intent;
            this.f3241b = i;
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0721e
        /* renamed from: a */
        public final Intent mo44531a() {
            return this.f3240a;
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0721e
        /* renamed from: b */
        public final void mo44530b() {
            JobIntentService.this.stopSelf(this.f3241b);
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$e.class */
    public interface AbstractC0721e {
        /* renamed from: a */
        Intent mo44531a();

        /* renamed from: b */
        void mo44530b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.JobIntentService$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$f.class */
    public static final class jobJobServiceEngineC0722f extends JobServiceEngine implements AbstractC0718b {

        /* renamed from: a */
        final JobIntentService f3243a;

        /* renamed from: b */
        final Object f3244b = new Object();

        /* renamed from: c */
        JobParameters f3245c;

        /* renamed from: androidx.core.app.JobIntentService$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$f$a.class */
        final class C0723a implements AbstractC0721e {

            /* renamed from: a */
            final JobWorkItem f3246a;

            C0723a(JobWorkItem jobWorkItem) {
                jobJobServiceEngineC0722f.this = r4;
                this.f3246a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.AbstractC0721e
            /* renamed from: a */
            public final Intent mo44531a() {
                return this.f3246a.getIntent();
            }

            @Override // androidx.core.app.JobIntentService.AbstractC0721e
            /* renamed from: b */
            public final void mo44530b() {
                synchronized (jobJobServiceEngineC0722f.this.f3244b) {
                    if (jobJobServiceEngineC0722f.this.f3245c != null) {
                        jobJobServiceEngineC0722f.this.f3245c.completeWork(this.f3246a);
                    }
                }
            }
        }

        jobJobServiceEngineC0722f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f3243a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0718b
        /* renamed from: a */
        public final IBinder mo44533a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0718b
        /* renamed from: b */
        public final AbstractC0721e mo44532b() {
            synchronized (this.f3244b) {
                JobParameters jobParameters = this.f3245c;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem dequeueWork = jobParameters.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.f3243a.getClassLoader());
                return new C0723a(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public final boolean onStartJob(JobParameters jobParameters) {
            this.f3245c = jobParameters;
            this.f3243a.m44626a(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public final boolean onStopJob(JobParameters jobParameters) {
            this.f3243a.m44629a();
            synchronized (this.f3244b) {
                this.f3245c = null;
            }
            return true;
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$g */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$g.class */
    public static final class C0724g extends AbstractC0725h {

        /* renamed from: a */
        private final JobInfo f3248a;

        /* renamed from: b */
        private final JobScheduler f3249b;

        C0724g(Context context, ComponentName componentName, int i) {
            super(componentName);
            m44623a(i);
            this.f3248a = new JobInfo.Builder(i, this.f3250c).setOverrideDeadline(0L).build();
            this.f3249b = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0725h
        /* renamed from: a */
        final void mo44622a(Intent intent) {
            this.f3249b.enqueue(this.f3248a, new JobWorkItem(intent));
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$h */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$h.class */
    public static abstract class AbstractC0725h {

        /* renamed from: c */
        final ComponentName f3250c;

        /* renamed from: d */
        boolean f3251d;

        /* renamed from: e */
        int f3252e;

        AbstractC0725h(ComponentName componentName) {
            this.f3250c = componentName;
        }

        /* renamed from: a */
        public void mo44624a() {
        }

        /* renamed from: a */
        final void m44623a(int i) {
            if (!this.f3251d) {
                this.f3251d = true;
                this.f3252e = i;
            } else if (this.f3252e == i) {
            } else {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.f3252e);
            }
        }

        /* renamed from: a */
        abstract void mo44622a(Intent intent);

        /* renamed from: b */
        public void mo44621b() {
        }

        /* renamed from: c */
        public void mo44620c() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3233g = null;
        } else {
            this.f3233g = new ArrayList<>();
        }
    }

    /* renamed from: a */
    private static AbstractC0725h m44628a(Context context, ComponentName componentName, boolean z, int i) {
        C0724g c0724g;
        HashMap<ComponentName, AbstractC0725h> hashMap = f3226i;
        AbstractC0725h abstractC0725h = hashMap.get(componentName);
        AbstractC0725h abstractC0725h2 = abstractC0725h;
        if (abstractC0725h == null) {
            if (Build.VERSION.SDK_INT < 26) {
                c0724g = new C0719c(context, componentName);
            } else if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            } else {
                c0724g = new C0724g(context, componentName, i);
            }
            hashMap.put(componentName, c0724g);
            abstractC0725h2 = c0724g;
        }
        return abstractC0725h2;
    }

    /* renamed from: a */
    public static void m44627a(Context context, Class<?> cls, int i, Intent intent) {
        ComponentName componentName = new ComponentName(context, cls);
        if (intent != null) {
            synchronized (f3225h) {
                AbstractC0725h m44628a = m44628a(context, componentName, true, i);
                m44628a.m44623a(i);
                m44628a.mo44622a(intent);
            }
            return;
        }
        throw new IllegalArgumentException("work must not be null");
    }

    /* renamed from: a */
    protected abstract void mo27756a(Intent intent);

    /* renamed from: a */
    public final void m44626a(boolean z) {
        if (this.f3229c == null) {
            this.f3229c = new AsyncTaskC0717a();
            AbstractC0725h abstractC0725h = this.f3228b;
            if (abstractC0725h != null && z) {
                abstractC0725h.mo44621b();
            }
            this.f3229c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: a */
    public final boolean m44629a() {
        AsyncTaskC0717a asyncTaskC0717a = this.f3229c;
        if (asyncTaskC0717a != null) {
            asyncTaskC0717a.cancel(this.f3230d);
        }
        this.f3231e = true;
        return true;
    }

    /* renamed from: b */
    final void m44625b() {
        ArrayList<C0720d> arrayList = this.f3233g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f3229c = null;
                ArrayList<C0720d> arrayList2 = this.f3233g;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    m44626a(false);
                } else if (!this.f3232f) {
                    this.f3228b.mo44620c();
                }
            }
        }
    }

    /* renamed from: c */
    public AbstractC0721e mo44619c() {
        AbstractC0718b abstractC0718b = this.f3227a;
        if (abstractC0718b != null) {
            return abstractC0718b.mo44532b();
        }
        synchronized (this.f3233g) {
            if (this.f3233g.size() <= 0) {
                return null;
            }
            return this.f3233g.remove(0);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        AbstractC0718b abstractC0718b = this.f3227a;
        if (abstractC0718b != null) {
            return abstractC0718b.mo44533a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3227a = new jobJobServiceEngineC0722f(this);
            this.f3228b = null;
            return;
        }
        this.f3227a = null;
        this.f3228b = m44628a((Context) this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<C0720d> arrayList = this.f3233g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f3232f = true;
                this.f3228b.mo44620c();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f3233g != null) {
            this.f3228b.mo44624a();
            synchronized (this.f3233g) {
                ArrayList<C0720d> arrayList = this.f3233g;
                if (intent == null) {
                    intent = new Intent();
                }
                arrayList.add(new C0720d(intent, i2));
                m44626a(true);
            }
            return 3;
        }
        return 2;
    }
}
