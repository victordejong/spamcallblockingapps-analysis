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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService.class */
public abstract class JobIntentService extends Service {

    /* renamed from: l */
    static final HashMap<ComponentName, WorkEnqueuer> f2833l = new HashMap<>();

    /* renamed from: f */
    CompatJobEngine f2834f;

    /* renamed from: g */
    WorkEnqueuer f2835g;

    /* renamed from: h */
    CommandProcessor f2836h;

    /* renamed from: i */
    boolean f2837i = false;

    /* renamed from: j */
    boolean f2838j = false;

    /* renamed from: k */
    final ArrayList<CompatWorkItem> f2839k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$CommandProcessor.class */
    public final class CommandProcessor extends AsyncTask<Void, Void, Void> {
        CommandProcessor() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                GenericWorkItem a = JobIntentService.this.m19827a();
                if (a == null) {
                    return null;
                }
                JobIntentService.this.m19823e(a.getIntent());
                a.mo19815c();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onCancelled(Void r3) {
            JobIntentService.this.m19821g();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: c */
        public void onPostExecute(Void r3) {
            JobIntentService.this.m19821g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$CompatJobEngine.class */
    public interface CompatJobEngine {
        /* renamed from: a */
        IBinder mo19817a();

        /* renamed from: b */
        GenericWorkItem mo19816b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$CompatWorkEnqueuer.class */
    public static final class CompatWorkEnqueuer extends WorkEnqueuer {

        /* renamed from: d */
        private final PowerManager.WakeLock f2841d;

        /* renamed from: e */
        private final PowerManager.WakeLock f2842e;

        /* renamed from: f */
        boolean f2843f;

        /* renamed from: g */
        boolean f2844g;

        CompatWorkEnqueuer(Context context, ComponentName componentName) {
            super(componentName);
            context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f2841d = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f2842e = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        /* renamed from: b */
        public void mo19813b() {
            synchronized (this) {
                if (this.f2844g) {
                    if (this.f2843f) {
                        this.f2841d.acquire(60000L);
                    }
                    this.f2844g = false;
                    this.f2842e.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        /* renamed from: c */
        public void mo19812c() {
            synchronized (this) {
                if (!this.f2844g) {
                    this.f2844g = true;
                    this.f2842e.acquire(600000L);
                    this.f2841d.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        /* renamed from: d */
        public void mo19811d() {
            synchronized (this) {
                this.f2843f = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$CompatWorkItem.class */
    public final class CompatWorkItem implements GenericWorkItem {

        /* renamed from: a */
        final Intent f2845a;

        /* renamed from: b */
        final int f2846b;

        CompatWorkItem(Intent intent, int i) {
            this.f2845a = intent;
            this.f2846b = i;
        }

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        /* renamed from: c */
        public void mo19815c() {
            JobIntentService.this.stopSelf(this.f2846b);
        }

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public Intent getIntent() {
            return this.f2845a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$GenericWorkItem.class */
    public interface GenericWorkItem {
        /* renamed from: c */
        void mo19815c();

        Intent getIntent();
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$JobServiceEngineImpl.class */
    static final class JobServiceEngineImpl extends JobServiceEngine implements CompatJobEngine {

        /* renamed from: a */
        final JobIntentService f2848a;

        /* renamed from: b */
        final Object f2849b = new Object();

        /* renamed from: c */
        JobParameters f2850c;

        /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem.class */
        final class WrapperWorkItem implements GenericWorkItem {

            /* renamed from: a */
            final JobWorkItem f2851a;

            WrapperWorkItem(JobWorkItem jobWorkItem) {
                this.f2851a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.GenericWorkItem
            /* renamed from: c */
            public void mo19815c() {
                synchronized (JobServiceEngineImpl.this.f2849b) {
                    if (JobServiceEngineImpl.this.f2850c != null) {
                        JobServiceEngineImpl.this.f2850c.completeWork(this.f2851a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.GenericWorkItem
            public Intent getIntent() {
                return this.f2851a.getIntent();
            }
        }

        JobServiceEngineImpl(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f2848a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.CompatJobEngine
        /* renamed from: a */
        public IBinder mo19817a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.CompatJobEngine
        /* renamed from: b */
        public GenericWorkItem mo19816b() {
            synchronized (this.f2849b) {
                if (this.f2850c == null) {
                    return null;
                }
                JobWorkItem dequeueWork = this.f2850c.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.f2848a.getClassLoader());
                return new WrapperWorkItem(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f2850c = jobParameters;
            this.f2848a.m19825c(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean b = this.f2848a.m19826b();
            synchronized (this.f2849b) {
                this.f2850c = null;
            }
            return b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$JobWorkEnqueuer.class */
    public static final class JobWorkEnqueuer extends WorkEnqueuer {

        /* renamed from: d */
        private final JobInfo f2853d;

        JobWorkEnqueuer(Context context, ComponentName componentName, int i) {
            super(componentName);
            m19814a(i);
            this.f2853d = new JobInfo.Builder(i, this.f2854a).setOverrideDeadline(0L).build();
            JobScheduler jobScheduler = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$WorkEnqueuer.class */
    public static abstract class WorkEnqueuer {

        /* renamed from: a */
        final ComponentName f2854a;

        /* renamed from: b */
        boolean f2855b;

        /* renamed from: c */
        int f2856c;

        WorkEnqueuer(ComponentName componentName) {
            this.f2854a = componentName;
        }

        /* renamed from: a */
        void m19814a(int i) {
            if (!this.f2855b) {
                this.f2855b = true;
                this.f2856c = i;
            } else if (this.f2856c != i) {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.f2856c);
            }
        }

        /* renamed from: b */
        public void mo19813b() {
        }

        /* renamed from: c */
        public void mo19812c() {
        }

        /* renamed from: d */
        public void mo19811d() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2839k = null;
        } else {
            this.f2839k = new ArrayList<>();
        }
    }

    /* renamed from: d */
    static WorkEnqueuer m19824d(Context context, ComponentName componentName, boolean z, int i) {
        WorkEnqueuer workEnqueuer;
        WorkEnqueuer workEnqueuer2 = f2833l.get(componentName);
        WorkEnqueuer workEnqueuer3 = workEnqueuer2;
        if (workEnqueuer2 == null) {
            if (Build.VERSION.SDK_INT < 26) {
                workEnqueuer = new CompatWorkEnqueuer(context, componentName);
            } else if (z) {
                workEnqueuer = new JobWorkEnqueuer(context, componentName, i);
            } else {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            f2833l.put(componentName, workEnqueuer);
            workEnqueuer3 = workEnqueuer;
        }
        return workEnqueuer3;
    }

    /* renamed from: a */
    GenericWorkItem m19827a() {
        CompatJobEngine compatJobEngine = this.f2834f;
        if (compatJobEngine != null) {
            return compatJobEngine.mo19816b();
        }
        synchronized (this.f2839k) {
            if (this.f2839k.size() <= 0) {
                return null;
            }
            return this.f2839k.remove(0);
        }
    }

    /* renamed from: b */
    boolean m19826b() {
        CommandProcessor commandProcessor = this.f2836h;
        if (commandProcessor != null) {
            commandProcessor.cancel(this.f2837i);
        }
        return m19822f();
    }

    /* renamed from: c */
    void m19825c(boolean z) {
        if (this.f2836h == null) {
            this.f2836h = new CommandProcessor();
            WorkEnqueuer workEnqueuer = this.f2835g;
            if (workEnqueuer != null && z) {
                workEnqueuer.mo19812c();
            }
            this.f2836h.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: e */
    protected abstract void m19823e(@NonNull Intent intent);

    /* renamed from: f */
    public boolean m19822f() {
        return true;
    }

    /* renamed from: g */
    void m19821g() {
        ArrayList<CompatWorkItem> arrayList = this.f2839k;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f2836h = null;
                if (this.f2839k != null && this.f2839k.size() > 0) {
                    m19825c(false);
                } else if (!this.f2838j) {
                    this.f2835g.mo19813b();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        CompatJobEngine compatJobEngine = this.f2834f;
        if (compatJobEngine != null) {
            return compatJobEngine.mo19817a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2834f = new JobServiceEngineImpl(this);
            this.f2835g = null;
            return;
        }
        this.f2834f = null;
        this.f2835g = m19824d(this, new ComponentName(this, JobIntentService.class), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<CompatWorkItem> arrayList = this.f2839k;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f2838j = true;
                this.f2835g.mo19813b();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i, int i2) {
        if (this.f2839k == null) {
            return 2;
        }
        this.f2835g.mo19811d();
        synchronized (this.f2839k) {
            ArrayList<CompatWorkItem> arrayList = this.f2839k;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new CompatWorkItem(intent, i2));
            m19825c(true);
        }
        return 3;
    }
}
