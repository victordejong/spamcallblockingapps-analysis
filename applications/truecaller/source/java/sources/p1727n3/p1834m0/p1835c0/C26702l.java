package p1727n3.p1834m0.p1835c0;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.lifecycle.LiveData;
import androidx.work.C0418R;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.utils.ForceStopRunnable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import n3.v.i0;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.AbstractC26844s;
import p1727n3.p1834m0.AbstractC26854w;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.AbstractC26858z;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.C26851u;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.EnumC26831g;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.p1835c0.C26691j;
import p1727n3.p1834m0.p1835c0.p1836p.p1837a.C26710c;
import p1727n3.p1834m0.p1835c0.p1836p.p1839c.C26721b;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26764q;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
import p1727n3.p1834m0.p1835c0.p1844s.CallableC26765r;
import p1727n3.p1834m0.p1835c0.p1844s.CallableC26766s;
import p1727n3.p1834m0.p1835c0.p1845t.C26781c;
import p1727n3.p1834m0.p1835c0.p1845t.C26785g;
import p1727n3.p1834m0.p1835c0.p1845t.C26787h;
import p1727n3.p1834m0.p1835c0.p1845t.C26788i;
import p1727n3.p1834m0.p1835c0.p1845t.ExecutorC26790k;
import p1727n3.p1834m0.p1835c0.p1845t.RunnableC26796p;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.l */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/l.class */
public class C26702l extends AbstractC26857y {

    /* renamed from: j */
    public static C26702l f74720j = null;

    /* renamed from: k */
    public static C26702l f74721k = null;

    /* renamed from: l */
    public static final Object f74722l = new Object();

    /* renamed from: a */
    public Context f74723a;

    /* renamed from: b */
    public C26678c f74724b;

    /* renamed from: c */
    public WorkDatabase f74725c;

    /* renamed from: d */
    public AbstractC26821a f74726d;

    /* renamed from: e */
    public List<AbstractC26686e> f74727e;

    /* renamed from: f */
    public C26684d f74728f;

    /* renamed from: g */
    public C26788i f74729g;

    /* renamed from: h */
    public boolean f74730h;

    /* renamed from: i */
    public BroadcastReceiver.PendingResult f74731i;

    /* renamed from: n3.m0.c0.l$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/l$a.class */
    public class C26703a implements AbstractC25640a<List<C26760p.C26763c>, C26855x> {
        public C26703a(C26702l c26702l) {
        }

        @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
        public C26855x apply(List<C26760p.C26763c> list) {
            List<C26760p.C26763c> list2 = list;
            return (list2 == null || list2.size() <= 0) ? null : list2.get(0).m1357a();
        }
    }

    static {
        AbstractC26839p.m1295e("WorkManagerImpl");
    }

    public C26702l(Context context, C26678c c26678c, AbstractC26821a abstractC26821a) {
        AbstractC25677q.C25678a c25678a;
        boolean z = context.getResources().getBoolean(C0418R.bool.workmanager_test_configuration);
        Context applicationContext = context.getApplicationContext();
        ExecutorC26790k executorC26790k = ((C26822b) abstractC26821a).f75051a;
        int i = WorkDatabase.f1570b;
        if (z) {
            c25678a = new AbstractC25677q.C25678a(applicationContext, WorkDatabase.class, null);
            c25678a.f71934h = true;
        } else {
            String str = C26701k.f74718a;
            c25678a = MediaSessionCompat.m43274R(applicationContext, WorkDatabase.class, "androidx.work.workdb");
            c25678a.f71933g = new C26689h(applicationContext);
        }
        c25678a.f71931e = executorC26790k;
        c25678a.m3066a(new C26690i());
        c25678a.m3065b(C26691j.f74709a);
        c25678a.m3065b(new C26691j.C26699h(applicationContext, 2, 3));
        c25678a.m3065b(C26691j.f74710b);
        c25678a.m3065b(C26691j.f74711c);
        c25678a.m3065b(new C26691j.C26699h(applicationContext, 5, 6));
        c25678a.m3065b(C26691j.f74712d);
        c25678a.m3065b(C26691j.f74713e);
        c25678a.m3065b(C26691j.f74714f);
        c25678a.m3065b(new C26691j.C26700i(applicationContext));
        c25678a.m3065b(new C26691j.C26699h(applicationContext, 10, 11));
        c25678a.m3065b(C26691j.f74715g);
        c25678a.m3063d();
        WorkDatabase workDatabase = (WorkDatabase) c25678a.m3064c();
        Context applicationContext2 = context.getApplicationContext();
        AbstractC26839p.C26840a c26840a = new AbstractC26839p.C26840a(c26678c.f74671f);
        synchronized (AbstractC26839p.class) {
            try {
                AbstractC26839p.f75094a = c26840a;
            } catch (Throwable th) {
                throw th;
            }
        }
        String str2 = C26687f.f74697a;
        C26721b c26721b = new C26721b(applicationContext2, this);
        C26787h.m1330a(applicationContext2, SystemJobService.class, true);
        AbstractC26839p.m1296c().mo1294a(C26687f.f74697a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        List<AbstractC26686e> asList = Arrays.asList(c26721b, new C26710c(applicationContext2, c26678c, abstractC26821a, this));
        C26684d c26684d = new C26684d(context, c26678c, abstractC26821a, workDatabase, asList);
        Context applicationContext3 = context.getApplicationContext();
        this.f74723a = applicationContext3;
        this.f74724b = c26678c;
        this.f74726d = abstractC26821a;
        this.f74725c = workDatabase;
        this.f74727e = asList;
        this.f74728f = c26684d;
        this.f74729g = new C26788i(workDatabase);
        this.f74730h = false;
        if (Build.VERSION.SDK_INT < 24 || !applicationContext3.isDeviceProtectedStorage()) {
            ((C26822b) this.f74726d).f75051a.execute(new ForceStopRunnable(applicationContext3, this));
            return;
        }
        throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
    }

    /* renamed from: n */
    public static C26702l m1431n(Context context) {
        C26702l c26702l;
        Object obj = f74722l;
        synchronized (obj) {
            synchronized (obj) {
                c26702l = f74720j;
                if (c26702l == null) {
                    c26702l = f74721k;
                }
            }
            return r6;
        }
        C26702l c26702l2 = c26702l;
        if (c26702l == null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof C26678c.AbstractC26680b)) {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
            m1430o(applicationContext, ((C26678c.AbstractC26680b) applicationContext).mo1449C());
            c26702l2 = m1431n(applicationContext);
        }
        return c26702l2;
    }

    /* renamed from: o */
    public static void m1430o(Context context, C26678c c26678c) {
        synchronized (f74722l) {
            C26702l c26702l = f74720j;
            if (c26702l != null && f74721k != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (c26702l == null) {
                Context applicationContext = context.getApplicationContext();
                if (f74721k == null) {
                    f74721k = new C26702l(applicationContext, c26678c, new C26822b(c26678c.f74667b));
                }
                f74720j = f74721k;
            }
        }
    }

    @Override // p1727n3.p1834m0.AbstractC26857y
    /* renamed from: b */
    public AbstractC26854w mo1286b(String str, EnumC26832h enumC26832h, List<C26842r> list) {
        if (!list.isEmpty()) {
            return new C26688g(this, str, enumC26832h, list);
        }
        throw new IllegalArgumentException("beginUniqueWork needs at least one OneTimeWorkRequest.");
    }

    @Override // p1727n3.p1834m0.AbstractC26857y
    /* renamed from: d */
    public AbstractC26854w mo1284d(List<C26842r> list) {
        if (!list.isEmpty()) {
            return new C26688g(this, null, EnumC26832h.KEEP, list, null);
        }
        throw new IllegalArgumentException("beginWith needs at least one OneTimeWorkRequest.");
    }

    @Override // p1727n3.p1834m0.AbstractC26857y
    /* renamed from: e */
    public AbstractC26844s mo1283e(String str) {
        C26781c c26781c = new C26781c(this, str, true);
        ((C26822b) this.f74726d).f75051a.execute(c26781c);
        return c26781c.f74952a;
    }

    @Override // p1727n3.p1834m0.AbstractC26857y
    /* renamed from: g */
    public AbstractC26844s mo1281g(List<? extends AbstractC26858z> list) {
        if (!list.isEmpty()) {
            return new C26688g(this, null, EnumC26832h.KEEP, list, null).mo1290a();
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    @Override // p1727n3.p1834m0.AbstractC26857y
    /* renamed from: h */
    public AbstractC26844s mo1280h(String str, EnumC26831g enumC26831g, C26851u c26851u) {
        return new C26688g(this, str, enumC26831g == EnumC26831g.KEEP ? EnumC26832h.KEEP : EnumC26832h.REPLACE, Collections.singletonList(c26851u)).mo1290a();
    }

    @Override // p1727n3.p1834m0.AbstractC26857y
    /* renamed from: j */
    public AbstractC26844s mo1278j(String str, EnumC26832h enumC26832h, List<C26842r> list) {
        return new C26688g(this, str, enumC26832h, list).mo1290a();
    }

    @Override // p1727n3.p1834m0.AbstractC26857y
    /* renamed from: l */
    public LiveData<C26855x> mo1276l(UUID uuid) {
        AbstractC26764q m42606f = this.f74725c.m42606f();
        List<String> singletonList = Collections.singletonList(uuid.toString());
        C26767t c26767t = (C26767t) m42606f;
        Objects.requireNonNull(c26767t);
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
        int size = singletonList.size();
        C25655d.m3086a(sb, size);
        sb.append(")");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (String str : singletonList) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        LiveData m3076b = c26767t.f74932a.getInvalidationTracker().m3076b(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new CallableC26765r(c26767t, m3059j));
        C26703a c26703a = new C26703a(this);
        AbstractC26821a abstractC26821a = this.f74726d;
        Object obj = new Object();
        i0 i0Var = new i0();
        i0Var.m(m3076b, new C26785g(abstractC26821a, obj, c26703a, i0Var));
        return i0Var;
    }

    @Override // p1727n3.p1834m0.AbstractC26857y
    /* renamed from: m */
    public LiveData<List<C26855x>> mo1275m(String str) {
        C26767t c26767t = (C26767t) this.f74725c.m42606f();
        Objects.requireNonNull(c26767t);
        C25686y m3059j = C25686y.m3059j("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        LiveData m3076b = c26767t.f74932a.getInvalidationTracker().m3076b(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, new CallableC26766s(c26767t, m3059j));
        AbstractC25640a<List<C26760p.C26763c>, List<C26855x>> abstractC25640a = C26760p.f74901t;
        AbstractC26821a abstractC26821a = this.f74726d;
        Object obj = new Object();
        i0 i0Var = new i0();
        i0Var.m(m3076b, new C26785g(abstractC26821a, obj, abstractC25640a, i0Var));
        return i0Var;
    }

    /* renamed from: p */
    public void m1429p() {
        synchronized (f74722l) {
            this.f74730h = true;
            BroadcastReceiver.PendingResult pendingResult = this.f74731i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f74731i = null;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: q */
    public void m1428q() {
        List<JobInfo> m1398f;
        Context context = this.f74723a;
        String str = C26721b.f74819e;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler != null && (m1398f = C26721b.m1398f(context, jobScheduler)) != null && !m1398f.isEmpty()) {
            for (JobInfo jobInfo : m1398f) {
                C26721b.m1402b(jobScheduler, jobInfo.getId());
            }
        }
        C26767t c26767t = (C26767t) this.f74725c.m42606f();
        c26767t.f74932a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = c26767t.f74940i.acquire();
        c26767t.f74932a.beginTransaction();
        try {
            acquire.m2673A();
            c26767t.f74932a.setTransactionSuccessful();
            c26767t.f74932a.endTransaction();
            c26767t.f74940i.release(acquire);
            C26687f.m1438a(this.f74724b, this.f74725c, this.f74727e);
        } catch (Throwable th) {
            c26767t.f74932a.endTransaction();
            c26767t.f74940i.release(acquire);
            throw th;
        }
    }

    /* renamed from: r */
    public void m1427r(String str) {
        AbstractC26821a abstractC26821a = this.f74726d;
        ((C26822b) abstractC26821a).f75051a.execute(new RunnableC26796p(this, str, false));
    }
}
