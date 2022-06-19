package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.AbstractC3150n;
import androidx.work.AbstractC3165u;
import androidx.work.AbstractC3166v;
import androidx.work.C3159q;
import androidx.work.C3163t;
import androidx.work.Configuration;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.p088a.C3030b;
import androidx.work.impl.background.systemjob.C3044b;
import androidx.work.impl.utils.AbstractRunnableC3100a;
import androidx.work.impl.utils.AbstractRunnableC3129i;
import androidx.work.impl.utils.C3124e;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.RunnableC3118b;
import androidx.work.impl.utils.RunnableC3128h;
import androidx.work.impl.utils.RunnableC3131j;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import androidx.work.impl.utils.p090b.C3120b;
import androidx.work.p084a.AbstractC2987a;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
/* renamed from: androidx.work.impl.j */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/j.class */
public class C3068j extends AbstractC3165u {

    /* renamed from: h */
    private static final String f11349h = AbstractC3145k.m39275a("WorkManagerImpl");

    /* renamed from: l */
    private static C3068j f11350l = null;

    /* renamed from: m */
    private static C3068j f11351m = null;

    /* renamed from: n */
    private static final Object f11352n = new Object();

    /* renamed from: a */
    public Context f11353a;

    /* renamed from: b */
    public Configuration f11354b;

    /* renamed from: c */
    public WorkDatabase f11355c;

    /* renamed from: d */
    public AbstractC3119a f11356d;

    /* renamed from: e */
    public List<AbstractC3048e> f11357e;

    /* renamed from: f */
    public C3046d f11358f;

    /* renamed from: g */
    public C3124e f11359g;

    /* renamed from: i */
    private boolean f11360i;

    /* renamed from: j */
    private BroadcastReceiver.PendingResult f11361j;

    /* renamed from: k */
    private volatile AbstractC2987a f11362k;

    public C3068j(Context context, Configuration configuration, AbstractC3119a abstractC3119a) {
        this(context, configuration, abstractC3119a, context.getResources().getBoolean(C3159q.C3160a.workmanager_test_configuration));
    }

    public C3068j(Context context, Configuration configuration, AbstractC3119a abstractC3119a, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        AbstractC3145k.m39276a(new AbstractC3145k.C3146a(configuration.getMinimumLoggingLevel()));
        List<AbstractC3048e> asList = Arrays.asList(C3049f.m39384a(applicationContext, this), new C3030b(applicationContext, configuration, abstractC3119a, this));
        m39362a(context, configuration, abstractC3119a, workDatabase, asList, new C3046d(context, configuration, abstractC3119a, workDatabase, asList));
    }

    public C3068j(Context context, Configuration configuration, AbstractC3119a abstractC3119a, WorkDatabase workDatabase, List<AbstractC3048e> list, C3046d c3046d) {
        m39362a(context, configuration, abstractC3119a, workDatabase, list, c3046d);
    }

    public C3068j(Context context, Configuration configuration, AbstractC3119a abstractC3119a, boolean z) {
        this(context, configuration, abstractC3119a, WorkDatabase.m39491a(context.getApplicationContext(), abstractC3119a.mo39301b(), z));
    }

    /* renamed from: a */
    private void m39362a(Context context, Configuration configuration, AbstractC3119a abstractC3119a, WorkDatabase workDatabase, List<AbstractC3048e> list, C3046d c3046d) {
        Context applicationContext = context.getApplicationContext();
        this.f11353a = applicationContext;
        this.f11354b = configuration;
        this.f11356d = abstractC3119a;
        this.f11355c = workDatabase;
        this.f11357e = list;
        this.f11358f = c3046d;
        this.f11359g = new C3124e(workDatabase);
        this.f11360i = false;
        if (Build.VERSION.SDK_INT < 24 || !applicationContext.isDeviceProtectedStorage()) {
            this.f11356d.mo39302a(new ForceStopRunnable(applicationContext, this));
            return;
        }
        throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
    }

    /* renamed from: b */
    public static C3068j m39359b(Context context) {
        C3068j c3068j;
        synchronized (f11352n) {
            C3068j m39354e = m39354e();
            c3068j = m39354e;
            if (m39354e == null) {
                Context applicationContext = context.getApplicationContext();
                if (!(applicationContext instanceof Configuration.Provider)) {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
                m39358b(applicationContext, ((Configuration.Provider) applicationContext).getWorkManagerConfiguration());
                c3068j = m39359b(applicationContext);
            }
        }
        return c3068j;
    }

    /* renamed from: b */
    public static void m39358b(Context context, Configuration configuration) {
        synchronized (f11352n) {
            C3068j c3068j = f11350l;
            if (c3068j != null && f11351m != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (c3068j == null) {
                Context applicationContext = context.getApplicationContext();
                if (f11351m == null) {
                    f11351m = new C3068j(applicationContext, configuration, new C3120b(configuration.getTaskExecutor()));
                }
                f11350l = f11351m;
            }
        }
    }

    @Deprecated
    /* renamed from: e */
    private static C3068j m39354e() {
        synchronized (f11352n) {
            C3068j c3068j = f11350l;
            if (c3068j != null) {
                return c3068j;
            }
            return f11351m;
        }
    }

    @Override // androidx.work.AbstractC3165u
    /* renamed from: a */
    public final AbstractC3150n mo39268a() {
        AbstractRunnableC3100a m39335b = AbstractRunnableC3100a.m39335b(this);
        this.f11356d.mo39302a(m39335b);
        return m39335b.f11407a;
    }

    @Override // androidx.work.AbstractC3165u
    /* renamed from: a */
    public final AbstractC3150n mo39264a(String str) {
        AbstractRunnableC3100a m39337a = AbstractRunnableC3100a.m39337a(str, this);
        this.f11356d.mo39302a(m39337a);
        return m39337a.f11407a;
    }

    @Override // androidx.work.AbstractC3165u
    /* renamed from: a */
    public final AbstractC3150n mo39263a(List<? extends AbstractC3166v> list) {
        if (!list.isEmpty()) {
            C3057g c3057g = new C3057g(this, list);
            if (!c3057g.f11336h) {
                RunnableC3118b runnableC3118b = new RunnableC3118b(c3057g);
                c3057g.f11330b.f11356d.mo39302a(runnableC3118b);
                c3057g.f11337i = runnableC3118b.f11444a;
            } else {
                AbstractC3145k.m39277a().mo39274a(C3057g.f11329a, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", c3057g.f11334f)));
            }
            return c3057g.f11337i;
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    @Override // androidx.work.AbstractC3165u
    /* renamed from: a */
    public final AbstractC3150n mo39262a(UUID uuid) {
        AbstractRunnableC3100a m39336a = AbstractRunnableC3100a.m39336a(uuid, this);
        this.f11356d.mo39302a(m39336a);
        return m39336a.f11407a;
    }

    /* renamed from: a */
    public final void m39363a(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f11352n) {
            this.f11361j = pendingResult;
            if (this.f11360i) {
                pendingResult.finish();
                this.f11361j = null;
            }
        }
    }

    /* renamed from: a */
    public final void m39361a(String str, WorkerParameters.C2985a c2985a) {
        this.f11356d.mo39302a(new RunnableC3128h(this, str, c2985a));
    }

    /* renamed from: b */
    public final AbstractC2987a m39360b() {
        if (this.f11362k == null) {
            synchronized (f11352n) {
                if (this.f11362k == null) {
                    this.f11362k = (AbstractC2987a) Class.forName("androidx.work.multiprocess.RemoteWorkManagerClient").getConstructor(Context.class, C3068j.class).newInstance(this.f11353a, this);
                    if (this.f11362k == null && !TextUtils.isEmpty(this.f11354b.getDefaultProcessName())) {
                        throw new IllegalStateException("Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library");
                    }
                }
            }
        }
        return this.f11362k;
    }

    @Override // androidx.work.AbstractC3165u
    /* renamed from: b */
    public final AbstractFutureC15579a<List<C3163t>> mo39261b(String str) {
        AbstractRunnableC3129i<List<C3163t>> m39290a = AbstractRunnableC3129i.m39290a(this, str);
        this.f11356d.mo39301b().execute(m39290a);
        return m39290a.f11463a;
    }

    /* renamed from: c */
    public final void m39357c() {
        if (Build.VERSION.SDK_INT >= 23) {
            C3044b.m39405a(this.f11353a);
        }
        this.f11355c.mo39474j().resetScheduledState();
        C3049f.m39383a(this.f11354b, this.f11355c, this.f11357e);
    }

    /* renamed from: c */
    public final void m39356c(String str) {
        this.f11356d.mo39302a(new RunnableC3131j(this, str, false));
    }

    /* renamed from: d */
    public final void m39355d() {
        synchronized (f11352n) {
            this.f11360i = true;
            BroadcastReceiver.PendingResult pendingResult = this.f11361j;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f11361j = null;
            }
        }
    }
}
