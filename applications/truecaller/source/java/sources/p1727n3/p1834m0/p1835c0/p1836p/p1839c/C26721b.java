package p1727n3.p1834m0.p1835c0.p1836p.p1839c;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.AbstractC26686e;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1844s.C26748g;
import p1727n3.p1834m0.p1835c0.p1844s.C26750i;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
import p1727n3.p1834m0.p1835c0.p1845t.C26784f;
/* renamed from: n3.m0.c0.p.c.b */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/p/c/b.class */
public class C26721b implements AbstractC26686e {

    /* renamed from: e */
    public static final String f74819e = AbstractC26839p.m1295e("SystemJobScheduler");

    /* renamed from: a */
    public final Context f74820a;

    /* renamed from: b */
    public final JobScheduler f74821b;

    /* renamed from: c */
    public final C26702l f74822c;

    /* renamed from: d */
    public final C26720a f74823d;

    public C26721b(Context context, C26702l c26702l) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        C26720a c26720a = new C26720a(context);
        this.f74820a = context;
        this.f74822c = c26702l;
        this.f74821b = jobScheduler;
        this.f74823d = c26720a;
    }

    /* renamed from: b */
    public static void m1402b(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            AbstractC26839p.m1296c().mo1293b(f74819e, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    /* renamed from: c */
    public static List<Integer> m1401c(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> m1398f = m1398f(context, jobScheduler);
        if (m1398f == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : m1398f) {
            if (str.equals(m1397g(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static List<JobInfo> m1398f(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            AbstractC26839p.m1296c().mo1293b(f74819e, "getAllPendingJobs() is not reliable on this device.", th);
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

    /* renamed from: g */
    public static String m1397g(JobInfo jobInfo) {
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

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26686e
    /* renamed from: a */
    public boolean mo1403a() {
        return true;
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26686e
    /* renamed from: d */
    public void mo1400d(String str) {
        List<Integer> m1401c = m1401c(this.f74820a, this.f74821b, str);
        if (m1401c == null || m1401c.isEmpty()) {
            return;
        }
        for (Integer num : m1401c) {
            m1402b(this.f74821b, num.intValue());
        }
        ((C26750i) this.f74822c.f74725c.m42609c()).m1364c(str);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p1727n3.p1834m0.p1835c0.AbstractC26686e
    /* renamed from: e */
    public void mo1399e(C26760p... c26760pArr) {
        int i;
        List<Integer> m1401c;
        int i2;
        WorkDatabase workDatabase = this.f74822c.f74725c;
        C26784f c26784f = new C26784f(workDatabase);
        for (C26760p c26760p : c26760pArr) {
            workDatabase.beginTransaction();
            try {
                C26760p m1346k = ((C26767t) workDatabase.m42606f()).m1346k(c26760p.f74902a);
                if (m1346k == null) {
                    AbstractC26839p.m1296c().mo1291f(f74819e, "Skipping scheduling " + c26760p.f74902a + " because it's no longer in the DB", new Throwable[0]);
                    workDatabase.setTransactionSuccessful();
                } else if (m1346k.f74903b != C26855x.EnumC26856a.ENQUEUED) {
                    AbstractC26839p.m1296c().mo1291f(f74819e, "Skipping scheduling " + c26760p.f74902a + " because it is no longer enqueued", new Throwable[0]);
                    workDatabase.setTransactionSuccessful();
                } else {
                    C26748g m1366a = ((C26750i) workDatabase.m42609c()).m1366a(c26760p.f74902a);
                    if (m1366a != null) {
                        i = m1366a.f74886b;
                    } else {
                        C26678c c26678c = this.f74822c.f74724b;
                        i = c26784f.m1331b(c26678c.f74672g, c26678c.f74673h);
                    }
                    if (m1366a == null) {
                        ((C26750i) this.f74822c.f74725c.m42609c()).m1365b(new C26748g(c26760p.f74902a, i));
                    }
                    m1396h(c26760p, i);
                    if (Build.VERSION.SDK_INT == 23 && (m1401c = m1401c(this.f74820a, this.f74821b, c26760p.f74902a)) != null) {
                        int indexOf = m1401c.indexOf(Integer.valueOf(i));
                        if (indexOf >= 0) {
                            m1401c.remove(indexOf);
                        }
                        if (!m1401c.isEmpty()) {
                            i2 = m1401c.get(0).intValue();
                        } else {
                            C26678c c26678c2 = this.f74822c.f74724b;
                            i2 = c26784f.m1331b(c26678c2.f74672g, c26678c2.f74673h);
                        }
                        m1396h(c26760p, i2);
                    }
                    workDatabase.setTransactionSuccessful();
                }
                workDatabase.endTransaction();
            } catch (Throwable th) {
                workDatabase.endTransaction();
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b4, code lost:
        if (r0 < 26) goto L22;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1396h(p1727n3.p1834m0.p1835c0.p1844s.C26760p r9, int r10) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1834m0.p1835c0.p1836p.p1839c.C26721b.m1396h(n3.m0.c0.s.p, int):void");
    }
}
