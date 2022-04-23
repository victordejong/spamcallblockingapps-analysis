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
    static final Object h = new Object();
    static final HashMap<ComponentName, h> i = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    b f1674a;

    /* renamed from: b  reason: collision with root package name */
    h f1675b;

    /* renamed from: c  reason: collision with root package name */
    a f1676c;

    /* renamed from: d  reason: collision with root package name */
    boolean f1677d = false;
    boolean e = false;
    boolean f = false;
    final ArrayList<d> g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$a.class */
    public final class a extends AsyncTask<Void, Void, Void> {
        a() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            while (true) {
                e c2 = JobIntentService.this.c();
                if (c2 == null) {
                    return null;
                }
                JobIntentService.this.a(c2.a());
                c2.b();
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onCancelled(Void r3) {
            JobIntentService.this.b();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r3) {
            JobIntentService.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$b.class */
    public interface b {
        IBinder a();

        e b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$c.class */
    public static final class c extends h {

        /* renamed from: a  reason: collision with root package name */
        boolean f1679a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1680b;
        private final Context f;
        private final PowerManager.WakeLock g;
        private final PowerManager.WakeLock h;

        c(Context context, ComponentName componentName) {
            super(componentName);
            this.f = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.g = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.h = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.h
        public final void a() {
            synchronized (this) {
                this.f1679a = false;
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        final void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f1691c);
            if (this.f.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f1679a) {
                        this.f1679a = true;
                        if (!this.f1680b) {
                            this.g.acquire(Constants.MINUTE_IN_MILLIS);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public final void b() {
            synchronized (this) {
                if (!this.f1680b) {
                    this.f1680b = true;
                    this.h.acquire(600000L);
                    this.g.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public final void c() {
            synchronized (this) {
                if (this.f1680b) {
                    if (this.f1679a) {
                        this.g.acquire(Constants.MINUTE_IN_MILLIS);
                    }
                    this.f1680b = false;
                    this.h.release();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$d.class */
    public final class d implements e {

        /* renamed from: a  reason: collision with root package name */
        final Intent f1681a;

        /* renamed from: b  reason: collision with root package name */
        final int f1682b;

        d(Intent intent, int i) {
            this.f1681a = intent;
            this.f1682b = i;
        }

        @Override // androidx.core.app.JobIntentService.e
        public final Intent a() {
            return this.f1681a;
        }

        @Override // androidx.core.app.JobIntentService.e
        public final void b() {
            JobIntentService.this.stopSelf(this.f1682b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$e.class */
    public interface e {
        Intent a();

        void b();
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$f.class */
    static final class f extends JobServiceEngine implements b {

        /* renamed from: a  reason: collision with root package name */
        final JobIntentService f1684a;

        /* renamed from: b  reason: collision with root package name */
        final Object f1685b = new Object();

        /* renamed from: c  reason: collision with root package name */
        JobParameters f1686c;

        /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$f$a.class */
        final class a implements e {

            /* renamed from: a  reason: collision with root package name */
            final JobWorkItem f1687a;

            a(JobWorkItem jobWorkItem) {
                this.f1687a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.e
            public final Intent a() {
                return this.f1687a.getIntent();
            }

            @Override // androidx.core.app.JobIntentService.e
            public final void b() {
                synchronized (f.this.f1685b) {
                    if (f.this.f1686c != null) {
                        f.this.f1686c.completeWork(this.f1687a);
                    }
                }
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f1684a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.b
        public final IBinder a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.b
        public final e b() {
            synchronized (this.f1685b) {
                JobParameters jobParameters = this.f1686c;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem dequeueWork = jobParameters.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.f1684a.getClassLoader());
                return new a(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public final boolean onStartJob(JobParameters jobParameters) {
            this.f1686c = jobParameters;
            this.f1684a.a(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public final boolean onStopJob(JobParameters jobParameters) {
            this.f1684a.a();
            synchronized (this.f1685b) {
                this.f1686c = null;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$g.class */
    public static final class g extends h {

        /* renamed from: a  reason: collision with root package name */
        private final JobInfo f1689a;

        /* renamed from: b  reason: collision with root package name */
        private final JobScheduler f1690b;

        g(Context context, ComponentName componentName, int i) {
            super(componentName);
            a(i);
            this.f1689a = new JobInfo.Builder(i, this.f1691c).setOverrideDeadline(0L).build();
            this.f1690b = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.JobIntentService.h
        final void a(Intent intent) {
            this.f1690b.enqueue(this.f1689a, new JobWorkItem(intent));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$h.class */
    public static abstract class h {

        /* renamed from: c  reason: collision with root package name */
        final ComponentName f1691c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1692d;
        int e;

        h(ComponentName componentName) {
            this.f1691c = componentName;
        }

        public void a() {
        }

        final void a(int i) {
            if (!this.f1692d) {
                this.f1692d = true;
                this.e = i;
            } else if (this.e != i) {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.e);
            }
        }

        abstract void a(Intent intent);

        public void b() {
        }

        public void c() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.g = null;
        } else {
            this.g = new ArrayList<>();
        }
    }

    private static h a(Context context, ComponentName componentName, boolean z, int i2) {
        h hVar;
        HashMap<ComponentName, h> hashMap = i;
        h hVar2 = hashMap.get(componentName);
        h hVar3 = hVar2;
        if (hVar2 == null) {
            if (Build.VERSION.SDK_INT < 26) {
                hVar = new c(context, componentName);
            } else if (z) {
                hVar = new g(context, componentName, i2);
            } else {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            hashMap.put(componentName, hVar);
            hVar3 = hVar;
        }
        return hVar3;
    }

    public static void a(Context context, Class<?> cls, int i2, Intent intent) {
        ComponentName componentName = new ComponentName(context, cls);
        if (intent != null) {
            synchronized (h) {
                h a2 = a(context, componentName, true, i2);
                a2.a(i2);
                a2.a(intent);
            }
            return;
        }
        throw new IllegalArgumentException("work must not be null");
    }

    protected abstract void a(Intent intent);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        if (this.f1676c == null) {
            this.f1676c = new a();
            h hVar = this.f1675b;
            if (hVar != null && z) {
                hVar.b();
            }
            this.f1676c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        a aVar = this.f1676c;
        if (aVar != null) {
            aVar.cancel(this.f1677d);
        }
        this.e = true;
        return true;
    }

    final void b() {
        ArrayList<d> arrayList = this.g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1676c = null;
                ArrayList<d> arrayList2 = this.g;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    a(false);
                } else if (!this.f) {
                    this.f1675b.c();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e c() {
        b bVar = this.f1674a;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.g) {
            if (this.g.size() <= 0) {
                return null;
            }
            return this.g.remove(0);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        b bVar = this.f1674a;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1674a = new f(this);
            this.f1675b = null;
            return;
        }
        this.f1674a = null;
        this.f1675b = a((Context) this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f = true;
                this.f1675b.c();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if (this.g == null) {
            return 2;
        }
        this.f1675b.a();
        synchronized (this.g) {
            ArrayList<d> arrayList = this.g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i3));
            a(true);
        }
        return 3;
    }
}
