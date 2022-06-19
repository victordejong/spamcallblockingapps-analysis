package p197p1;

import android.app.ActivityManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import androidx.work.C0677a;
import androidx.work.impl.C0683a;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.utils.ForceStopRunnable;
import com.applovin.mediation.C1564R;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p067d1.AbstractC2151f;
import p067d1.AbstractC2160j;
import p067d1.C2140a;
import p067d1.C2159i;
import p099g1.AbstractC2796b;
import p110h1.C2999d;
import p110h1.C3001f;
import p162m.C3542a;
import p186o1.AbstractC3824h;
import p186o1.AbstractC3829k;
import p186o1.AbstractC3837n;
import p186o1.AbstractC3838o;
import p206q1.C4146c;
import p217r1.C4182b;
import p228s1.C4278b;
import p282x1.C4835r;
import p292y1.C4960g;
import p292y1.C4961h;
import p292y1.ExecutorC4963j;
import p292y1.RunnableC4958e;
import p292y1.RunnableC4966l;
/* renamed from: p1.j */
/* loaded from: classes-dex2jar.jar:p1/j.class */
public class C4006j extends AbstractC3837n {

    /* renamed from: j */
    public static C4006j f12579j = null;

    /* renamed from: k */
    public static C4006j f12580k = null;

    /* renamed from: l */
    public static final Object f12581l = new Object();

    /* renamed from: a */
    public Context f12582a;

    /* renamed from: b */
    public C0677a f12583b;

    /* renamed from: c */
    public WorkDatabase f12584c;

    /* renamed from: d */
    public AbstractC0008a f12585d;

    /* renamed from: e */
    public List<AbstractC4000d> f12586e;

    /* renamed from: f */
    public C3998c f12587f;

    /* renamed from: g */
    public C4961h f12588g;

    /* renamed from: h */
    public boolean f12589h;

    /* renamed from: i */
    public BroadcastReceiver.PendingResult f12590i;

    static {
        AbstractC3824h.m1773e("WorkManagerImpl");
    }

    public C4006j(Context context, C0677a c0677a, AbstractC0008a abstractC0008a) {
        AbstractC2151f.C2152a c2152a;
        String str;
        Object obj;
        Object obj2;
        Executor executor;
        boolean z = context.getResources().getBoolean(C1564R.bool.workmanager_test_configuration);
        Context applicationContext = context.getApplicationContext();
        ExecutorC4963j executorC4963j = ((C0009b) abstractC0008a).f8a;
        int i = WorkDatabase.f2643k;
        if (z) {
            c2152a = new AbstractC2151f.C2152a(applicationContext, WorkDatabase.class, null);
            c2152a.f7882h = true;
        } else {
            String str2 = C4005i.f12577a;
            c2152a = new AbstractC2151f.C2152a(applicationContext, WorkDatabase.class, "androidx.work.workdb");
            c2152a.f7881g = new C4003g(applicationContext);
        }
        c2152a.f7879e = executorC4963j;
        C4004h c4004h = new C4004h();
        if (c2152a.f7878d == null) {
            c2152a.f7878d = new ArrayList<>();
        }
        c2152a.f7878d.add(c4004h);
        c2152a.m3810a(C0683a.f2653a);
        c2152a.m3810a(new C0683a.C0691h(applicationContext, 2, 3));
        c2152a.m3810a(C0683a.f2654b);
        c2152a.m3810a(C0683a.f2655c);
        c2152a.m3810a(new C0683a.C0691h(applicationContext, 5, 6));
        c2152a.m3810a(C0683a.f2656d);
        c2152a.m3810a(C0683a.f2657e);
        c2152a.m3810a(C0683a.f2658f);
        c2152a.m3810a(new C0683a.C0692i(applicationContext));
        c2152a.m3810a(new C0683a.C0691h(applicationContext, 10, 11));
        c2152a.m3810a(C0683a.f2659g);
        c2152a.f7883i = false;
        c2152a.f7884j = true;
        Context context2 = c2152a.f7877c;
        if (context2 != null) {
            if (c2152a.f7875a == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            Executor executor2 = c2152a.f7879e;
            if (executor2 == null && c2152a.f7880f == null) {
                Executor executor3 = C3542a.f11708c;
                c2152a.f7880f = executor3;
                c2152a.f7879e = executor3;
            } else if (executor2 != null && c2152a.f7880f == null) {
                c2152a.f7880f = executor2;
            } else if (executor2 == null && (executor = c2152a.f7880f) != null) {
                c2152a.f7879e = executor;
            }
            if (c2152a.f7881g == null) {
                c2152a.f7881g = new C2999d();
            }
            String str3 = c2152a.f7876b;
            AbstractC2796b.AbstractC2799c abstractC2799c = c2152a.f7881g;
            AbstractC2151f.C2154c c2154c = c2152a.f7885k;
            ArrayList<AbstractC2151f.AbstractC2153b> arrayList = c2152a.f7878d;
            boolean z2 = c2152a.f7882h;
            ActivityManager activityManager = (ActivityManager) context2.getSystemService("activity");
            int i2 = (activityManager == null || activityManager.isLowRamDevice()) ? 2 : 3;
            Executor executor4 = c2152a.f7879e;
            C2140a c2140a = new C2140a(context2, str3, abstractC2799c, c2154c, arrayList, z2, i2, executor4, c2152a.f7880f, false, c2152a.f7883i, c2152a.f7884j, null, null, null);
            Class<T> cls = c2152a.f7875a;
            String name = cls.getPackage().getName();
            String canonicalName = cls.getCanonicalName();
            canonicalName = !name.isEmpty() ? canonicalName.substring(name.length() + 1) : canonicalName;
            String str4 = canonicalName.replace('.', '_') + "_Impl";
            try {
                if (name.isEmpty()) {
                    str = str4;
                } else {
                    str = name + "." + str4;
                }
                AbstractC2151f abstractC2151f = (AbstractC2151f) Class.forName(str).newInstance();
                AbstractC2796b mo3816f = abstractC2151f.mo3816f(c2140a);
                abstractC2151f.f7868c = mo3816f;
                if (mo3816f instanceof C2159i) {
                    ((C2159i) mo3816f).f7907f = c2140a;
                }
                boolean z3 = i2 == 3;
                mo3816f.setWriteAheadLoggingEnabled(z3);
                abstractC2151f.f7872g = arrayList;
                abstractC2151f.f7867b = executor4;
                new ArrayDeque();
                abstractC2151f.f7870e = z2;
                abstractC2151f.f7871f = z3;
                WorkDatabase workDatabase = (WorkDatabase) abstractC2151f;
                Context applicationContext2 = context.getApplicationContext();
                AbstractC3824h.C3825a c3825a = new AbstractC3824h.C3825a(c0677a.f2636f);
                synchronized (AbstractC3824h.class) {
                    try {
                        AbstractC3824h.f12311a = c3825a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                String str5 = C4001e.f12565a;
                if (Build.VERSION.SDK_INT >= 23) {
                    obj2 = new C4278b(applicationContext2, this);
                    C4960g.m174a(applicationContext2, SystemJobService.class, true);
                    AbstractC3824h.m1774c().mo1772a(C4001e.f12565a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
                } else {
                    try {
                        obj = (AbstractC4000d) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(applicationContext2);
                        AbstractC3824h.m1774c().mo1772a(C4001e.f12565a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
                    } catch (Throwable th2) {
                        AbstractC3824h.m1774c().mo1772a(C4001e.f12565a, "Unable to create GCM Scheduler", th2);
                        obj = null;
                    }
                    obj2 = obj;
                    if (obj == null) {
                        obj2 = new C4182b(applicationContext2);
                        C4960g.m174a(applicationContext2, SystemAlarmService.class, true);
                        AbstractC3824h.m1774c().mo1772a(C4001e.f12565a, "Created SystemAlarmScheduler", new Throwable[0]);
                    }
                }
                List<AbstractC4000d> asList = Arrays.asList(obj2, new C4146c(applicationContext2, c0677a, abstractC0008a, this));
                C3998c c3998c = new C3998c(context, c0677a, abstractC0008a, workDatabase, asList);
                Context applicationContext3 = context.getApplicationContext();
                this.f12582a = applicationContext3;
                this.f12583b = c0677a;
                this.f12585d = abstractC0008a;
                this.f12584c = workDatabase;
                this.f12586e = asList;
                this.f12587f = c3998c;
                this.f12588g = new C4961h(workDatabase);
                this.f12589h = false;
                if (Build.VERSION.SDK_INT >= 24 && applicationContext3.isDeviceProtectedStorage()) {
                    throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
                }
                ((C0009b) this.f12585d).f8a.execute(new ForceStopRunnable(applicationContext3, this));
                return;
            } catch (ClassNotFoundException e) {
                StringBuilder m8752j = C0082b.m8752j("cannot find implementation for ");
                m8752j.append(cls.getCanonicalName());
                m8752j.append(". ");
                m8752j.append(str4);
                m8752j.append(" does not exist");
                throw new RuntimeException(m8752j.toString());
            } catch (IllegalAccessException e2) {
                StringBuilder m8752j2 = C0082b.m8752j("Cannot access the constructor");
                m8752j2.append(cls.getCanonicalName());
                throw new RuntimeException(m8752j2.toString());
            } catch (InstantiationException e3) {
                StringBuilder m8752j3 = C0082b.m8752j("Failed to create an instance of ");
                m8752j3.append(cls.getCanonicalName());
                throw new RuntimeException(m8752j3.toString());
            }
        }
        throw new IllegalArgumentException("Cannot provide null context for the database.");
    }

    /* renamed from: c */
    public static C4006j m1535c(Context context) {
        C4006j c4006j;
        Object obj = f12581l;
        synchronized (obj) {
            synchronized (obj) {
                c4006j = f12579j;
                if (c4006j == null) {
                    c4006j = f12580k;
                }
            }
            return r6;
        }
        C4006j c4006j2 = c4006j;
        if (c4006j == null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof C0677a.AbstractC0679b)) {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
            m1534d(applicationContext, ((C0677a.AbstractC0679b) applicationContext).m7486a());
            c4006j2 = m1535c(applicationContext);
        }
        return c4006j2;
    }

    /* renamed from: d */
    public static void m1534d(Context context, C0677a c0677a) {
        synchronized (f12581l) {
            C4006j c4006j = f12579j;
            if (c4006j != null && f12580k != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (c4006j == null) {
                Context applicationContext = context.getApplicationContext();
                if (f12580k == null) {
                    f12580k = new C4006j(applicationContext, c0677a, new C0009b(c0677a.f2632b));
                }
                f12579j = f12580k;
            }
        }
    }

    @Override // p186o1.AbstractC3837n
    /* renamed from: a */
    public AbstractC3829k mo1536a(List<? extends AbstractC3838o> list) {
        if (!list.isEmpty()) {
            C4002f c4002f = new C4002f(this, list);
            if (!c4002f.f12574h) {
                RunnableC4958e runnableC4958e = new RunnableC4958e(c4002f);
                ((C0009b) this.f12585d).f8a.execute(runnableC4958e);
                c4002f.f12575i = runnableC4958e.f15124b;
            } else {
                AbstractC3824h.m1774c().mo1769f(C4002f.f12566j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", c4002f.f12571e)), new Throwable[0]);
            }
            return c4002f.f12575i;
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    /* renamed from: e */
    public void m1533e() {
        synchronized (f12581l) {
            this.f12589h = true;
            BroadcastReceiver.PendingResult pendingResult = this.f12590i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f12590i = null;
            }
        }
    }

    /* renamed from: f */
    public void m1532f() {
        List<JobInfo> m1123e;
        if (Build.VERSION.SDK_INT >= 23) {
            Context context = this.f12582a;
            String str = C4278b.f13415e;
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler != null && (m1123e = C4278b.m1123e(context, jobScheduler)) != null && !m1123e.isEmpty()) {
                for (JobInfo jobInfo : m1123e) {
                    C4278b.m1127a(jobScheduler, jobInfo.getId());
                }
            }
        }
        C4835r c4835r = (C4835r) this.f12584c.mo7475q();
        c4835r.f14851a.m3820b();
        C3001f m3800a = c4835r.f14859i.m3800a();
        c4835r.f14851a.m3819c();
        try {
            m3800a.m2768d();
            c4835r.f14851a.m3811k();
            c4835r.f14851a.m3815g();
            AbstractC2160j abstractC2160j = c4835r.f14859i;
            if (m3800a == abstractC2160j.f7911c) {
                abstractC2160j.f7909a.set(false);
            }
            C4001e.m1542a(this.f12583b, this.f12584c, this.f12586e);
        } catch (Throwable th) {
            c4835r.f14851a.m3815g();
            c4835r.f14859i.m3799c(m3800a);
            throw th;
        }
    }

    /* renamed from: g */
    public void m1531g(String str) {
        AbstractC0008a abstractC0008a = this.f12585d;
        ((C0009b) abstractC0008a).f8a.execute(new RunnableC4966l(this, str, false));
    }
}
