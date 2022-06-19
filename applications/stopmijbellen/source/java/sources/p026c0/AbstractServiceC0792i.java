package p026c0;

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
import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.HashMap;
@Deprecated
/* renamed from: c0.i */
/* loaded from: classes-dex2jar.jar:c0/i.class */
public abstract class AbstractServiceC0792i extends Service {

    /* renamed from: f */
    public static final Object f2926f = new Object();

    /* renamed from: g */
    public static final HashMap<ComponentName, AbstractC0801h> f2927g = new HashMap<>();

    /* renamed from: a */
    public AbstractC0794b f2928a;

    /* renamed from: b */
    public AbstractC0801h f2929b;

    /* renamed from: c */
    public AsyncTaskC0793a f2930c;

    /* renamed from: d */
    public boolean f2931d = false;

    /* renamed from: e */
    public final ArrayList<C0796d> f2932e;

    /* renamed from: c0.i$a */
    /* loaded from: classes-dex2jar.jar:c0/i$a.class */
    public final class AsyncTaskC0793a extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC0793a() {
            AbstractServiceC0792i.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0082 A[LOOP:0: B:3:0x0005->B:35:0x0082, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0098 A[SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.Void[] r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.Void[] r0 = (java.lang.Void[]) r0
                r6 = r0
            L5:
                r0 = r5
                c0.i r0 = p026c0.AbstractServiceC0792i.this
                r6 = r0
                r0 = r6
                c0.i$b r0 = r0.f2928a
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L58
                r0 = r7
                c0.i$f r0 = (p026c0.AbstractServiceC0792i.jobJobServiceEngineC0798f) r0
                r7 = r0
                r0 = r7
                java.lang.Object r0 = r0.f2943b
                r6 = r0
                r0 = r6
                monitor-enter(r0)
                r0 = r7
                android.app.job.JobParameters r0 = r0.f2944c     // Catch: java.lang.Throwable -> L53
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L2d
                r0 = r6
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
                goto L7c
            L2d:
                r0 = r8
                android.app.job.JobWorkItem r0 = r0.dequeueWork()     // Catch: java.lang.Throwable -> L53
                r8 = r0
                r0 = r6
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
                r0 = r8
                if (r0 == 0) goto L7c
                r0 = r8
                android.content.Intent r0 = r0.getIntent()
                r1 = r7
                c0.i r1 = r1.f2942a
                java.lang.ClassLoader r1 = r1.getClassLoader()
                r0.setExtrasClassLoader(r1)
                c0.i$f$a r0 = new c0.i$f$a
                r1 = r0
                r2 = r7
                r3 = r8
                r1.<init>(r3)
                r6 = r0
                goto L7e
            L53:
                r7 = move-exception
                r0 = r6
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
                r0 = r7
                throw r0
            L58:
                r0 = r6
                java.util.ArrayList<c0.i$d> r0 = r0.f2932e
                r7 = r0
                r0 = r7
                monitor-enter(r0)
                r0 = r6
                java.util.ArrayList<c0.i$d> r0 = r0.f2932e     // Catch: java.lang.Throwable -> L9a
                int r0 = r0.size()     // Catch: java.lang.Throwable -> L9a
                if (r0 <= 0) goto L7a
                r0 = r6
                java.util.ArrayList<c0.i$d> r0 = r0.f2932e     // Catch: java.lang.Throwable -> L9a
                r1 = 0
                java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> L9a
                c0.i$e r0 = (p026c0.AbstractServiceC0792i.AbstractC0797e) r0     // Catch: java.lang.Throwable -> L9a
                r6 = r0
                r0 = r7
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
                goto L7e
            L7a:
                r0 = r7
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
            L7c:
                r0 = 0
                r6 = r0
            L7e:
                r0 = r6
                if (r0 == 0) goto L98
                r0 = r5
                c0.i r0 = p026c0.AbstractServiceC0792i.this
                r1 = r6
                android.content.Intent r1 = r1.getIntent()
                r0.mo3975c(r1)
                r0 = r6
                r0.mo7369a()
                goto L5
            L98:
                r0 = 0
                return r0
            L9a:
                r6 = move-exception
                r0 = r7
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L9a
                r0 = r6
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p026c0.AbstractServiceC0792i.AsyncTaskC0793a.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public void onCancelled(Void r3) {
            AbstractServiceC0792i.this.m7370d();
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            AbstractServiceC0792i.this.m7370d();
        }
    }

    /* renamed from: c0.i$b */
    /* loaded from: classes-dex2jar.jar:c0/i$b.class */
    public interface AbstractC0794b {
    }

    /* renamed from: c0.i$c */
    /* loaded from: classes-dex2jar.jar:c0/i$c.class */
    public static final class C0795c extends AbstractC0801h {

        /* renamed from: d */
        public final Context f2934d;

        /* renamed from: e */
        public final PowerManager.WakeLock f2935e;

        /* renamed from: f */
        public final PowerManager.WakeLock f2936f;

        /* renamed from: g */
        public boolean f2937g;

        /* renamed from: h */
        public boolean f2938h;

        public C0795c(Context context, ComponentName componentName) {
            super(componentName);
            this.f2934d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f2935e = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f2936f = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // p026c0.AbstractServiceC0792i.AbstractC0801h
        /* renamed from: a */
        public void mo7368a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f2949a);
            if (this.f2934d.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f2937g) {
                        this.f2937g = true;
                        if (!this.f2938h) {
                            this.f2935e.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // p026c0.AbstractServiceC0792i.AbstractC0801h
        /* renamed from: c */
        public void mo7366c() {
            synchronized (this) {
                if (this.f2938h) {
                    if (this.f2937g) {
                        this.f2935e.acquire(60000L);
                    }
                    this.f2938h = false;
                    this.f2936f.release();
                }
            }
        }

        @Override // p026c0.AbstractServiceC0792i.AbstractC0801h
        /* renamed from: d */
        public void mo7365d() {
            synchronized (this) {
                if (!this.f2938h) {
                    this.f2938h = true;
                    this.f2936f.acquire(600000L);
                    this.f2935e.release();
                }
            }
        }

        @Override // p026c0.AbstractServiceC0792i.AbstractC0801h
        /* renamed from: e */
        public void mo7364e() {
            synchronized (this) {
                this.f2937g = false;
            }
        }
    }

    /* renamed from: c0.i$d */
    /* loaded from: classes-dex2jar.jar:c0/i$d.class */
    public final class C0796d implements AbstractC0797e {

        /* renamed from: a */
        public final Intent f2939a;

        /* renamed from: b */
        public final int f2940b;

        public C0796d(Intent intent, int i) {
            AbstractServiceC0792i.this = r4;
            this.f2939a = intent;
            this.f2940b = i;
        }

        @Override // p026c0.AbstractServiceC0792i.AbstractC0797e
        /* renamed from: a */
        public void mo7369a() {
            AbstractServiceC0792i.this.stopSelf(this.f2940b);
        }

        @Override // p026c0.AbstractServiceC0792i.AbstractC0797e
        public Intent getIntent() {
            return this.f2939a;
        }
    }

    /* renamed from: c0.i$e */
    /* loaded from: classes-dex2jar.jar:c0/i$e.class */
    public interface AbstractC0797e {
        /* renamed from: a */
        void mo7369a();

        Intent getIntent();
    }

    /* renamed from: c0.i$f */
    /* loaded from: classes-dex2jar.jar:c0/i$f.class */
    public static final class jobJobServiceEngineC0798f extends JobServiceEngine implements AbstractC0794b {

        /* renamed from: a */
        public final AbstractServiceC0792i f2942a;

        /* renamed from: b */
        public final Object f2943b = new Object();

        /* renamed from: c */
        public JobParameters f2944c;

        /* renamed from: c0.i$f$a */
        /* loaded from: classes-dex2jar.jar:c0/i$f$a.class */
        public final class C0799a implements AbstractC0797e {

            /* renamed from: a */
            public final JobWorkItem f2945a;

            public C0799a(JobWorkItem jobWorkItem) {
                jobJobServiceEngineC0798f.this = r4;
                this.f2945a = jobWorkItem;
            }

            @Override // p026c0.AbstractServiceC0792i.AbstractC0797e
            /* renamed from: a */
            public void mo7369a() {
                synchronized (jobJobServiceEngineC0798f.this.f2943b) {
                    JobParameters jobParameters = jobJobServiceEngineC0798f.this.f2944c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f2945a);
                    }
                }
            }

            @Override // p026c0.AbstractServiceC0792i.AbstractC0797e
            public Intent getIntent() {
                return this.f2945a.getIntent();
            }
        }

        public jobJobServiceEngineC0798f(AbstractServiceC0792i abstractServiceC0792i) {
            super(abstractServiceC0792i);
            this.f2942a = abstractServiceC0792i;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f2944c = jobParameters;
            this.f2942a.m7372a(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            AsyncTaskC0793a asyncTaskC0793a = this.f2942a.f2930c;
            if (asyncTaskC0793a != null) {
                asyncTaskC0793a.cancel(false);
            }
            synchronized (this.f2943b) {
                this.f2944c = null;
            }
            return true;
        }
    }

    /* renamed from: c0.i$g */
    /* loaded from: classes-dex2jar.jar:c0/i$g.class */
    public static final class C0800g extends AbstractC0801h {

        /* renamed from: d */
        public final JobInfo f2947d;

        /* renamed from: e */
        public final JobScheduler f2948e;

        public C0800g(Context context, ComponentName componentName, int i) {
            super(componentName);
            m7367b(i);
            this.f2947d = new JobInfo.Builder(i, componentName).setOverrideDeadline(0L).build();
            this.f2948e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // p026c0.AbstractServiceC0792i.AbstractC0801h
        /* renamed from: a */
        public void mo7368a(Intent intent) {
            this.f2948e.enqueue(this.f2947d, new JobWorkItem(intent));
        }
    }

    /* renamed from: c0.i$h */
    /* loaded from: classes-dex2jar.jar:c0/i$h.class */
    public static abstract class AbstractC0801h {

        /* renamed from: a */
        public final ComponentName f2949a;

        /* renamed from: b */
        public boolean f2950b;

        /* renamed from: c */
        public int f2951c;

        public AbstractC0801h(ComponentName componentName) {
            this.f2949a = componentName;
        }

        /* renamed from: a */
        public abstract void mo7368a(Intent intent);

        /* renamed from: b */
        public void m7367b(int i) {
            if (!this.f2950b) {
                this.f2950b = true;
                this.f2951c = i;
            } else if (this.f2951c == i) {
            } else {
                StringBuilder m8751k = C0082b.m8751k("Given job ID ", i, " is different than previous ");
                m8751k.append(this.f2951c);
                throw new IllegalArgumentException(m8751k.toString());
            }
        }

        /* renamed from: c */
        public void mo7366c() {
        }

        /* renamed from: d */
        public void mo7365d() {
        }

        /* renamed from: e */
        public void mo7364e() {
        }
    }

    public AbstractServiceC0792i() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2932e = null;
        } else {
            this.f2932e = new ArrayList<>();
        }
    }

    /* renamed from: b */
    public static AbstractC0801h m7371b(Context context, ComponentName componentName, boolean z, int i) {
        C0800g c0800g;
        HashMap<ComponentName, AbstractC0801h> hashMap = f2927g;
        AbstractC0801h abstractC0801h = hashMap.get(componentName);
        AbstractC0801h abstractC0801h2 = abstractC0801h;
        if (abstractC0801h == null) {
            if (Build.VERSION.SDK_INT < 26) {
                c0800g = new C0795c(context, componentName);
            } else if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            } else {
                c0800g = new C0800g(context, componentName, i);
            }
            hashMap.put(componentName, c0800g);
            abstractC0801h2 = c0800g;
        }
        return abstractC0801h2;
    }

    /* renamed from: a */
    public void m7372a(boolean z) {
        if (this.f2930c == null) {
            this.f2930c = new AsyncTaskC0793a();
            AbstractC0801h abstractC0801h = this.f2929b;
            if (abstractC0801h != null && z) {
                abstractC0801h.mo7365d();
            }
            this.f2930c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: c */
    public abstract void mo3975c(Intent intent);

    /* renamed from: d */
    public void m7370d() {
        ArrayList<C0796d> arrayList = this.f2932e;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f2930c = null;
                ArrayList<C0796d> arrayList2 = this.f2932e;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    m7372a(false);
                } else if (!this.f2931d) {
                    this.f2929b.mo7366c();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        AbstractC0794b abstractC0794b = this.f2928a;
        if (abstractC0794b != null) {
            return ((jobJobServiceEngineC0798f) abstractC0794b).getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2928a = new jobJobServiceEngineC0798f(this);
            this.f2929b = null;
            return;
        }
        this.f2928a = null;
        this.f2929b = m7371b(this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<C0796d> arrayList = this.f2932e;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f2931d = true;
                this.f2929b.mo7366c();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f2932e != null) {
            this.f2929b.mo7364e();
            synchronized (this.f2932e) {
                ArrayList<C0796d> arrayList = this.f2932e;
                if (intent == null) {
                    intent = new Intent();
                }
                arrayList.add(new C0796d(intent, i2));
                m7372a(true);
            }
            return 3;
        }
        return 2;
    }
}
