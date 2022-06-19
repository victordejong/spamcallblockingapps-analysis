package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1404j;
import androidx.work.AbstractC1408l;
import androidx.work.AbstractC1418q;
import androidx.work.AbstractC1419r;
import androidx.work.C1230a;
import androidx.work.C1415n;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.systemjob.C1264b;
import androidx.work.impl.p013l.p014a.C1296b;
import androidx.work.impl.utils.AbstractRunnableC1364a;
import androidx.work.impl.utils.C1371e;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.RunnableC1385h;
import androidx.work.impl.utils.RunnableC1386i;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import androidx.work.impl.utils.p019o.C1400b;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
/* renamed from: androidx.work.impl.j */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/j.class */
public class C1289j extends AbstractC1418q {

    /* renamed from: a */
    private static final String f5443a = AbstractC1404j.m30159f("WorkManagerImpl");

    /* renamed from: b */
    private static C1289j f5444b = null;

    /* renamed from: c */
    private static C1289j f5445c = null;

    /* renamed from: d */
    private static final Object f5446d = new Object();

    /* renamed from: e */
    private Context f5447e;

    /* renamed from: f */
    private C1230a f5448f;

    /* renamed from: g */
    private WorkDatabase f5449g;

    /* renamed from: h */
    private AbstractC1399a f5450h;

    /* renamed from: i */
    private List<AbstractC1268e> f5451i;

    /* renamed from: j */
    private C1266d f5452j;

    /* renamed from: k */
    private C1371e f5453k;

    /* renamed from: l */
    private boolean f5454l;

    /* renamed from: m */
    private BroadcastReceiver.PendingResult f5455m;

    public C1289j(Context context, C1230a c1230a, AbstractC1399a abstractC1399a) {
        this(context, c1230a, abstractC1399a, context.getResources().getBoolean(C1415n.workmanager_test_configuration));
    }

    public C1289j(Context context, C1230a c1230a, AbstractC1399a abstractC1399a, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        AbstractC1404j.m30160e(new AbstractC1404j.C1405a(c1230a.m30588j()));
        List<AbstractC1268e> m30396g = m30396g(applicationContext, c1230a, abstractC1399a);
        m30386q(context, c1230a, abstractC1399a, workDatabase, m30396g, new C1266d(context, c1230a, abstractC1399a, workDatabase, m30396g));
    }

    public C1289j(Context context, C1230a c1230a, AbstractC1399a abstractC1399a, boolean z) {
        this(context, c1230a, abstractC1399a, WorkDatabase.m30533s(context.getApplicationContext(), abstractC1399a.mo30171c(), z));
    }

    /* renamed from: e */
    public static void m30398e(Context context, C1230a c1230a) {
        synchronized (f5446d) {
            C1289j c1289j = f5444b;
            if (c1289j != null && f5445c != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (c1289j == null) {
                Context applicationContext = context.getApplicationContext();
                if (f5445c == null) {
                    f5445c = new C1289j(applicationContext, c1230a, new C1400b(c1230a.m30586l()));
                }
                f5444b = f5445c;
            }
        }
    }

    @Deprecated
    /* renamed from: j */
    public static C1289j m30393j() {
        synchronized (f5446d) {
            C1289j c1289j = f5444b;
            if (c1289j != null) {
                return c1289j;
            }
            return f5445c;
        }
    }

    /* renamed from: k */
    public static C1289j m30392k(Context context) {
        C1289j c1289j;
        synchronized (f5446d) {
            C1289j m30393j = m30393j();
            c1289j = m30393j;
            if (m30393j == null) {
                Context applicationContext = context.getApplicationContext();
                if (!(applicationContext instanceof C1230a.AbstractC1233c)) {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
                m30398e(applicationContext, ((C1230a.AbstractC1233c) applicationContext).m30583a());
                c1289j = m30392k(applicationContext);
            }
        }
        return c1289j;
    }

    /* renamed from: q */
    private void m30386q(Context context, C1230a c1230a, AbstractC1399a abstractC1399a, WorkDatabase workDatabase, List<AbstractC1268e> list, C1266d c1266d) {
        Context applicationContext = context.getApplicationContext();
        this.f5447e = applicationContext;
        this.f5448f = c1230a;
        this.f5450h = abstractC1399a;
        this.f5449g = workDatabase;
        this.f5451i = list;
        this.f5452j = c1266d;
        this.f5453k = new C1371e(workDatabase);
        this.f5454l = false;
        if (Build.VERSION.SDK_INT < 24 || !applicationContext.isDeviceProtectedStorage()) {
            this.f5450h.mo30172b(new ForceStopRunnable(applicationContext, this));
            return;
        }
        throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
    }

    @Override // androidx.work.AbstractC1418q
    /* renamed from: a */
    public AbstractC1408l mo30146a(String str) {
        AbstractRunnableC1364a m30233d = AbstractRunnableC1364a.m30233d(str, this);
        this.f5450h.mo30172b(m30233d);
        return m30233d.m30232e();
    }

    @Override // androidx.work.AbstractC1418q
    /* renamed from: c */
    public AbstractC1408l mo30144c(List<? extends AbstractC1419r> list) {
        if (!list.isEmpty()) {
            return new C1277g(this, list).m30417a();
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    /* renamed from: f */
    public AbstractC1408l m30397f(UUID uuid) {
        AbstractRunnableC1364a m30235b = AbstractRunnableC1364a.m30235b(uuid, this);
        this.f5450h.mo30172b(m30235b);
        return m30235b.m30232e();
    }

    /* renamed from: g */
    public List<AbstractC1268e> m30396g(Context context, C1230a c1230a, AbstractC1399a abstractC1399a) {
        return Arrays.asList(C1269f.m30436a(context, this), new C1296b(context, c1230a, abstractC1399a, this));
    }

    /* renamed from: h */
    public Context m30395h() {
        return this.f5447e;
    }

    /* renamed from: i */
    public C1230a m30394i() {
        return this.f5448f;
    }

    /* renamed from: l */
    public C1371e m30391l() {
        return this.f5453k;
    }

    /* renamed from: m */
    public C1266d m30390m() {
        return this.f5452j;
    }

    /* renamed from: n */
    public List<AbstractC1268e> m30389n() {
        return this.f5451i;
    }

    /* renamed from: o */
    public WorkDatabase m30388o() {
        return this.f5449g;
    }

    /* renamed from: p */
    public AbstractC1399a m30387p() {
        return this.f5450h;
    }

    /* renamed from: r */
    public void m30385r() {
        synchronized (f5446d) {
            this.f5454l = true;
            BroadcastReceiver.PendingResult pendingResult = this.f5455m;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f5455m = null;
            }
        }
    }

    /* renamed from: s */
    public void m30384s() {
        if (Build.VERSION.SDK_INT >= 23) {
            C1264b.m30456b(m30395h());
        }
        m30388o().mo30527B().mo30262u();
        C1269f.m30435b(m30394i(), m30388o(), m30389n());
    }

    /* renamed from: t */
    public void m30383t(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f5446d) {
            this.f5455m = pendingResult;
            if (this.f5454l) {
                pendingResult.finish();
                this.f5455m = null;
            }
        }
    }

    /* renamed from: u */
    public void m30382u(String str) {
        m30381v(str, null);
    }

    /* renamed from: v */
    public void m30381v(String str, WorkerParameters.C1229a c1229a) {
        this.f5450h.mo30172b(new RunnableC1385h(this, str, c1229a));
    }

    /* renamed from: w */
    public void m30380w(String str) {
        this.f5450h.mo30172b(new RunnableC1386i(this, str, true));
    }

    /* renamed from: x */
    public void m30379x(String str) {
        this.f5450h.mo30172b(new RunnableC1386i(this, str, false));
    }
}
