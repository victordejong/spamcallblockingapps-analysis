package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1293l;
import androidx.work.AbstractC1296n;
import androidx.work.AbstractC1310t;
import androidx.work.C1126b;
import androidx.work.C1302o;
import androidx.work.C1305q;
import androidx.work.EnumC1135f;
import androidx.work.EnumC1136g;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.p056a.C1211a;
import androidx.work.impl.background.systemjob.C1225b;
import androidx.work.impl.utils.AbstractRunnableC1254a;
import androidx.work.impl.utils.C1276e;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.RunnableC1279g;
import androidx.work.impl.utils.RunnableC1280h;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import androidx.work.impl.utils.p058b.C1272b;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: androidx.work.impl.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/i.class */
public class C1249i extends AbstractC1310t {

    /* renamed from: j */
    private static C1249i f4193j = null;

    /* renamed from: k */
    private static C1249i f4194k = null;

    /* renamed from: l */
    private static final Object f4195l = new Object();

    /* renamed from: a */
    private Context f4196a;

    /* renamed from: b */
    private C1126b f4197b;

    /* renamed from: c */
    private WorkDatabase f4198c;

    /* renamed from: d */
    private AbstractC1271a f4199d;

    /* renamed from: e */
    private List<AbstractC1228d> f4200e;

    /* renamed from: f */
    private C1226c f4201f;

    /* renamed from: g */
    private C1276e f4202g;

    /* renamed from: h */
    private boolean f4203h;

    /* renamed from: i */
    private BroadcastReceiver.PendingResult f4204i;

    public C1249i(Context context, C1126b c1126b, AbstractC1271a abstractC1271a) {
        this(context, c1126b, abstractC1271a, context.getResources().getBoolean(C1305q.C1306a.workmanager_test_configuration));
    }

    public C1249i(Context context, C1126b c1126b, AbstractC1271a abstractC1271a, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        AbstractC1293l.m17542a(new AbstractC1293l.C1294a(c1126b.m17953e()));
        List<AbstractC1228d> m17661a = m17661a(applicationContext, abstractC1271a);
        m17662a(context, c1126b, abstractC1271a, workDatabase, m17661a, new C1226c(context, c1126b, abstractC1271a, workDatabase, m17661a));
    }

    public C1249i(Context context, C1126b c1126b, AbstractC1271a abstractC1271a, boolean z) {
        this(context, c1126b, abstractC1271a, WorkDatabase.m17904a(context.getApplicationContext(), abstractC1271a.mo17576b(), z));
    }

    @Deprecated
    /* renamed from: a */
    public static C1249i m17664a() {
        C1249i c1249i;
        synchronized (f4195l) {
            c1249i = f4193j != null ? f4193j : f4194k;
        }
        return c1249i;
    }

    /* renamed from: a */
    private void m17662a(Context context, C1126b c1126b, AbstractC1271a abstractC1271a, WorkDatabase workDatabase, List<AbstractC1228d> list, C1226c c1226c) {
        Context applicationContext = context.getApplicationContext();
        this.f4196a = applicationContext;
        this.f4197b = c1126b;
        this.f4199d = abstractC1271a;
        this.f4198c = workDatabase;
        this.f4200e = list;
        this.f4201f = c1226c;
        this.f4202g = new C1276e(workDatabase);
        this.f4203h = false;
        this.f4199d.mo17577a(new ForceStopRunnable(applicationContext, this));
    }

    /* renamed from: b */
    private C1230f m17653b(String str, EnumC1135f enumC1135f, C1302o c1302o) {
        return new C1230f(this, str, enumC1135f == EnumC1135f.KEEP ? EnumC1136g.KEEP : EnumC1136g.REPLACE, Collections.singletonList(c1302o));
    }

    /* renamed from: b */
    public static C1249i m17656b(Context context) {
        C1249i c1249i;
        synchronized (f4195l) {
            C1249i m17664a = m17664a();
            c1249i = m17664a;
            if (m17664a == null) {
                Context applicationContext = context.getApplicationContext();
                if (!(applicationContext instanceof C1126b.AbstractC1128b)) {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
                m17655b(applicationContext, ((C1126b.AbstractC1128b) applicationContext).m17947a());
                c1249i = m17656b(applicationContext);
            }
        }
        return c1249i;
    }

    /* renamed from: b */
    public static void m17655b(Context context, C1126b c1126b) {
        synchronized (f4195l) {
            if (f4193j != null && f4194k != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (f4193j == null) {
                Context applicationContext = context.getApplicationContext();
                if (f4194k == null) {
                    f4194k = new C1249i(applicationContext, c1126b, new C1272b(c1126b.m17956b()));
                }
                f4193j = f4194k;
            }
        }
    }

    @Override // androidx.work.AbstractC1310t
    /* renamed from: a */
    public AbstractC1296n mo17529a(String str, EnumC1135f enumC1135f, C1302o c1302o) {
        return m17653b(str, enumC1135f, c1302o).m17689i();
    }

    /* renamed from: a */
    public AbstractC1296n m17658a(UUID uuid) {
        AbstractRunnableC1254a m17614a = AbstractRunnableC1254a.m17614a(uuid, this);
        this.f4199d.mo17577a(m17614a);
        return m17614a.m17619a();
    }

    /* renamed from: a */
    public List<AbstractC1228d> m17661a(Context context, AbstractC1271a abstractC1271a) {
        return Arrays.asList(C1229e.m17701a(context, this), new C1211a(context, abstractC1271a, this));
    }

    /* renamed from: a */
    public void m17663a(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f4195l) {
            this.f4204i = pendingResult;
            if (this.f4203h) {
                this.f4204i.finish();
                this.f4204i = null;
            }
        }
    }

    /* renamed from: a */
    public void m17660a(String str) {
        m17659a(str, (WorkerParameters.C1124a) null);
    }

    /* renamed from: a */
    public void m17659a(String str, WorkerParameters.C1124a c1124a) {
        this.f4199d.mo17577a(new RunnableC1279g(this, str, c1124a));
    }

    /* renamed from: b */
    public Context m17657b() {
        return this.f4196a;
    }

    /* renamed from: b */
    public void m17654b(String str) {
        this.f4199d.mo17577a(new RunnableC1280h(this, str, false));
    }

    /* renamed from: c */
    public WorkDatabase m17652c() {
        return this.f4198c;
    }

    /* renamed from: c */
    public void m17651c(String str) {
        this.f4199d.mo17577a(new RunnableC1280h(this, str, true));
    }

    /* renamed from: d */
    public C1126b m17650d() {
        return this.f4197b;
    }

    /* renamed from: e */
    public List<AbstractC1228d> m17649e() {
        return this.f4200e;
    }

    /* renamed from: f */
    public C1226c m17648f() {
        return this.f4201f;
    }

    /* renamed from: g */
    public AbstractC1271a m17647g() {
        return this.f4199d;
    }

    /* renamed from: h */
    public C1276e m17646h() {
        return this.f4202g;
    }

    /* renamed from: i */
    public void m17645i() {
        if (Build.VERSION.SDK_INT >= 23) {
            C1225b.m17721a(m17657b());
        }
        m17652c().mo17885o().mo17795b();
        C1229e.m17700a(m17650d(), m17652c(), m17649e());
    }

    /* renamed from: j */
    public void m17644j() {
        synchronized (f4195l) {
            this.f4203h = true;
            if (this.f4204i != null) {
                this.f4204i.finish();
                this.f4204i = null;
            }
        }
    }
}
