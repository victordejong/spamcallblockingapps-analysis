package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.Configuration;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.a.b;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.b.a;
import androidx.work.impl.utils.e;
import androidx.work.impl.utils.h;
import androidx.work.impl.utils.i;
import androidx.work.k;
import androidx.work.n;
import androidx.work.q;
import androidx.work.t;
import androidx.work.u;
import androidx.work.v;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/j.class */
public class j extends u {
    private static final String h = k.a("WorkManagerImpl");
    private static j l = null;
    private static j m = null;
    private static final Object n = new Object();

    /* renamed from: a  reason: collision with root package name */
    public Context f6116a;

    /* renamed from: b  reason: collision with root package name */
    public Configuration f6117b;

    /* renamed from: c  reason: collision with root package name */
    public WorkDatabase f6118c;

    /* renamed from: d  reason: collision with root package name */
    public a f6119d;
    public List<e> e;
    public d f;
    public e g;
    private boolean i;
    private BroadcastReceiver.PendingResult j;
    private volatile androidx.work.a.a k;

    public j(Context context, Configuration configuration, a aVar) {
        this(context, configuration, aVar, context.getResources().getBoolean(q.a.workmanager_test_configuration));
    }

    public j(Context context, Configuration configuration, a aVar, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        k.a(new k.a(configuration.getMinimumLoggingLevel()));
        List<e> asList = Arrays.asList(f.a(applicationContext, this), new b(applicationContext, configuration, aVar, this));
        a(context, configuration, aVar, workDatabase, asList, new d(context, configuration, aVar, workDatabase, asList));
    }

    public j(Context context, Configuration configuration, a aVar, WorkDatabase workDatabase, List<e> list, d dVar) {
        a(context, configuration, aVar, workDatabase, list, dVar);
    }

    public j(Context context, Configuration configuration, a aVar, boolean z) {
        this(context, configuration, aVar, WorkDatabase.a(context.getApplicationContext(), aVar.b(), z));
    }

    private void a(Context context, Configuration configuration, a aVar, WorkDatabase workDatabase, List<e> list, d dVar) {
        Context applicationContext = context.getApplicationContext();
        this.f6116a = applicationContext;
        this.f6117b = configuration;
        this.f6119d = aVar;
        this.f6118c = workDatabase;
        this.e = list;
        this.f = dVar;
        this.g = new e(workDatabase);
        this.i = false;
        if (Build.VERSION.SDK_INT < 24 || !applicationContext.isDeviceProtectedStorage()) {
            this.f6119d.a(new ForceStopRunnable(applicationContext, this));
            return;
        }
        throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
    }

    public static j b(Context context) {
        j jVar;
        synchronized (n) {
            j e = e();
            jVar = e;
            if (e == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof Configuration.Provider) {
                    b(applicationContext, ((Configuration.Provider) applicationContext).getWorkManagerConfiguration());
                    jVar = b(applicationContext);
                } else {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
            }
        }
        return jVar;
    }

    public static void b(Context context, Configuration configuration) {
        synchronized (n) {
            j jVar = l;
            if (!(jVar == null || m == null)) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (jVar == null) {
                Context applicationContext = context.getApplicationContext();
                if (m == null) {
                    m = new j(applicationContext, configuration, new androidx.work.impl.utils.b.b(configuration.getTaskExecutor()));
                }
                l = m;
            }
        }
    }

    @Deprecated
    private static j e() {
        synchronized (n) {
            j jVar = l;
            if (jVar != null) {
                return jVar;
            }
            return m;
        }
    }

    @Override // androidx.work.u
    public final n a() {
        androidx.work.impl.utils.a b2 = androidx.work.impl.utils.a.b(this);
        this.f6119d.a(b2);
        return b2.f6138a;
    }

    @Override // androidx.work.u
    public final n a(String str) {
        androidx.work.impl.utils.a a2 = androidx.work.impl.utils.a.a(str, this);
        this.f6119d.a(a2);
        return a2.f6138a;
    }

    @Override // androidx.work.u
    public final n a(List<? extends v> list) {
        if (!list.isEmpty()) {
            g gVar = new g(this, list);
            if (!gVar.h) {
                androidx.work.impl.utils.b bVar = new androidx.work.impl.utils.b(gVar);
                gVar.f6105b.f6119d.a(bVar);
                gVar.i = bVar.f6171a;
            } else {
                k.a().a(g.f6104a, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", gVar.f)));
            }
            return gVar.i;
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    @Override // androidx.work.u
    public final n a(UUID uuid) {
        androidx.work.impl.utils.a a2 = androidx.work.impl.utils.a.a(uuid, this);
        this.f6119d.a(a2);
        return a2.f6138a;
    }

    public final void a(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (n) {
            this.j = pendingResult;
            if (this.i) {
                pendingResult.finish();
                this.j = null;
            }
        }
    }

    public final void a(String str, WorkerParameters.a aVar) {
        this.f6119d.a(new h(this, str, aVar));
    }

    public final androidx.work.a.a b() {
        if (this.k == null) {
            synchronized (n) {
                if (this.k == null) {
                    this.k = (androidx.work.a.a) Class.forName("androidx.work.multiprocess.RemoteWorkManagerClient").getConstructor(Context.class, j.class).newInstance(this.f6116a, this);
                    if (this.k == null && !TextUtils.isEmpty(this.f6117b.getDefaultProcessName())) {
                        throw new IllegalStateException("Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library");
                    }
                }
            }
        }
        return this.k;
    }

    @Override // androidx.work.u
    public final com.google.common.util.concurrent.a<List<t>> b(String str) {
        i<List<t>> a2 = i.a(this, str);
        this.f6119d.b().execute(a2);
        return a2.f6190a;
    }

    public final void c() {
        if (Build.VERSION.SDK_INT >= 23) {
            androidx.work.impl.background.systemjob.b.a(this.f6116a);
        }
        this.f6118c.j().resetScheduledState();
        f.a(this.f6117b, this.f6118c, this.e);
    }

    public final void c(String str) {
        this.f6119d.a(new androidx.work.impl.utils.j(this, str, false));
    }

    public final void d() {
        synchronized (n) {
            this.i = true;
            BroadcastReceiver.PendingResult pendingResult = this.j;
            if (pendingResult != null) {
                pendingResult.finish();
                this.j = null;
            }
        }
    }
}
