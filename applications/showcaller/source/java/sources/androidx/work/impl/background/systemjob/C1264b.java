package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.AbstractC1268e;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p018n.AbstractC1347q;
import androidx.work.impl.p018n.C1329g;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.C1369c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* renamed from: androidx.work.impl.background.systemjob.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/b.class */
public class C1264b implements AbstractC1268e {

    /* renamed from: d */
    private static final String f5369d = AbstractC1404j.m30159f("SystemJobScheduler");

    /* renamed from: e */
    private final Context f5370e;

    /* renamed from: f */
    private final JobScheduler f5371f;

    /* renamed from: g */
    private final C1289j f5372g;

    /* renamed from: h */
    private final C1262a f5373h;

    public C1264b(Context context, C1289j c1289j) {
        this(context, c1289j, (JobScheduler) context.getSystemService("jobscheduler"), new C1262a(context));
    }

    public C1264b(Context context, C1289j c1289j, JobScheduler jobScheduler, C1262a c1262a) {
        this.f5370e = context;
        this.f5372g = c1289j;
        this.f5371f = jobScheduler;
        this.f5373h = c1262a;
    }

    /* renamed from: b */
    public static void m30456b(Context context) {
        List<JobInfo> m30453g;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (m30453g = m30453g(context, jobScheduler)) == null || m30453g.isEmpty()) {
            return;
        }
        for (JobInfo jobInfo : m30453g) {
            m30455d(jobScheduler, jobInfo.getId());
        }
    }

    /* renamed from: d */
    private static void m30455d(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            AbstractC1404j.m30161c().mo30157b(f5369d, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    /* renamed from: f */
    private static List<Integer> m30454f(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> m30453g = m30453g(context, jobScheduler);
        if (m30453g == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : m30453g) {
            if (str.equals(m30452h(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    private static List<JobInfo> m30453g(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            AbstractC1404j.m30161c().mo30157b(f5369d, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    private static String m30452h(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras != null) {
            try {
                if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                    return null;
                }
                return extras.getString("EXTRA_WORK_SPEC_ID");
            } catch (NullPointerException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: i */
    public static boolean m30451i(Context context, C1289j c1289j) {
        boolean z;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> m30453g = m30453g(context, jobScheduler);
        List<String> mo30298a = c1289j.m30388o().mo30510y().mo30298a();
        HashSet hashSet = new HashSet(m30453g != null ? m30453g.size() : 0);
        if (m30453g != null && !m30453g.isEmpty()) {
            for (JobInfo jobInfo : m30453g) {
                String m30452h = m30452h(jobInfo);
                if (!TextUtils.isEmpty(m30452h)) {
                    hashSet.add(m30452h);
                } else {
                    m30455d(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator<String> it = mo30298a.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            } else if (!hashSet.contains(it.next())) {
                AbstractC1404j.m30161c().mo30158a(f5369d, "Reconciling jobs", new Throwable[0]);
                z = true;
                break;
            }
        }
        if (z) {
            WorkDatabase m30388o = c1289j.m30388o();
            m30388o.m31293c();
            try {
                AbstractC1347q mo30527B = m30388o.mo30527B();
                for (String str : mo30298a) {
                    mo30527B.mo30280c(str, -1L);
                }
                m30388o.m31280r();
            } finally {
                m30388o.m31291g();
            }
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: a */
    public void mo30358a(C1344p... c1344pArr) {
        List<Integer> m30454f;
        WorkDatabase m30388o = this.f5372g.m30388o();
        C1369c c1369c = new C1369c(m30388o);
        for (C1344p c1344p : c1344pArr) {
            m30388o.m31293c();
            try {
                C1344p mo30269n = m30388o.mo30527B().mo30269n(c1344p.f5578c);
                if (mo30269n == null) {
                    AbstractC1404j.m30161c().mo30154h(f5369d, "Skipping scheduling " + c1344p.f5578c + " because it's no longer in the DB", new Throwable[0]);
                    m30388o.m31280r();
                } else if (mo30269n.f5579d != WorkInfo$State.ENQUEUED) {
                    AbstractC1404j.m30161c().mo30154h(f5369d, "Skipping scheduling " + c1344p.f5578c + " because it is no longer enqueued", new Throwable[0]);
                    m30388o.m31280r();
                } else {
                    C1329g mo30296c = m30388o.mo30510y().mo30296c(c1344p.f5578c);
                    int m30217d = mo30296c != null ? mo30296c.f5556b : c1369c.m30217d(this.f5372g.m30394i().m30589i(), this.f5372g.m30394i().m30591g());
                    if (mo30296c == null) {
                        this.f5372g.m30388o().mo30510y().mo30297b(new C1329g(c1344p.f5578c, m30217d));
                    }
                    m30450j(c1344p, m30217d);
                    if (Build.VERSION.SDK_INT == 23 && (m30454f = m30454f(this.f5370e, this.f5371f, c1344p.f5578c)) != null) {
                        int indexOf = m30454f.indexOf(Integer.valueOf(m30217d));
                        if (indexOf >= 0) {
                            m30454f.remove(indexOf);
                        }
                        m30450j(c1344p, !m30454f.isEmpty() ? m30454f.get(0).intValue() : c1369c.m30217d(this.f5372g.m30394i().m30589i(), this.f5372g.m30394i().m30591g()));
                    }
                    m30388o.m31280r();
                }
                m30388o.m31291g();
            } catch (Throwable th) {
                m30388o.m31291g();
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: c */
    public boolean mo30357c() {
        return true;
    }

    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: e */
    public void mo30355e(String str) {
        List<Integer> m30454f = m30454f(this.f5370e, this.f5371f, str);
        if (m30454f == null || m30454f.isEmpty()) {
            return;
        }
        for (Integer num : m30454f) {
            m30455d(this.f5371f, num.intValue());
        }
        this.f5372g.m30388o().mo30510y().mo30295d(str);
    }

    /* renamed from: j */
    public void m30450j(C1344p c1344p, int i) {
        JobInfo m30460a = this.f5373h.m30460a(c1344p, i);
        AbstractC1404j m30161c = AbstractC1404j.m30161c();
        String str = f5369d;
        m30161c.mo30158a(str, String.format("Scheduling work ID %s Job ID %s", c1344p.f5578c, Integer.valueOf(i)), new Throwable[0]);
        try {
            if (this.f5371f.schedule(m30460a) != 0) {
                return;
            }
            AbstractC1404j.m30161c().mo30154h(str, String.format("Unable to schedule work ID %s", c1344p.f5578c), new Throwable[0]);
            if (!c1344p.f5594s || c1344p.f5595t != OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                return;
            }
            c1344p.f5594s = false;
            AbstractC1404j.m30161c().mo30158a(str, String.format("Scheduling a non-expedited job (work ID %s)", c1344p.f5578c), new Throwable[0]);
            m30450j(c1344p, i);
        } catch (IllegalStateException e) {
            List<JobInfo> m30453g = m30453g(this.f5370e, this.f5371f);
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(m30453g != null ? m30453g.size() : 0), Integer.valueOf(this.f5372g.m30388o().mo30527B().mo30275h().size()), Integer.valueOf(this.f5372g.m30394i().m30590h()));
            AbstractC1404j.m30161c().mo30157b(f5369d, format, new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            AbstractC1404j.m30161c().mo30157b(f5369d, String.format("Unable to schedule %s", c1344p), th);
        }
    }
}
