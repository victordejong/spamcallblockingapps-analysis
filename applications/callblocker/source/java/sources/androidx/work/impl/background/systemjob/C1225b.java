package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.AbstractC1293l;
import androidx.work.C1308s;
import androidx.work.impl.AbstractC1228d;
import androidx.work.impl.C1249i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p055b.C1176g;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.C1274c;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: androidx.work.impl.background.systemjob.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/b.class */
public class C1225b implements AbstractC1228d {

    /* renamed from: a */
    private static final String f4121a = AbstractC1293l.m17541a("SystemJobScheduler");

    /* renamed from: b */
    private final Context f4122b;

    /* renamed from: c */
    private final JobScheduler f4123c;

    /* renamed from: d */
    private final C1249i f4124d;

    /* renamed from: e */
    private final C1223a f4125e;

    public C1225b(Context context, C1249i c1249i) {
        this(context, c1249i, (JobScheduler) context.getSystemService("jobscheduler"), new C1223a(context));
    }

    public C1225b(Context context, C1249i c1249i, JobScheduler jobScheduler, C1223a c1223a) {
        this.f4122b = context;
        this.f4124d = c1249i;
        this.f4123c = jobScheduler;
        this.f4125e = c1223a;
    }

    /* renamed from: a */
    private static String m17723a(JobInfo jobInfo) {
        String string;
        PersistableBundle extras = jobInfo.getExtras();
        if (extras != null) {
            if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                string = extras.getString("EXTRA_WORK_SPEC_ID");
                return string;
            }
        }
        string = null;
        return string;
    }

    /* renamed from: a */
    private static List<JobInfo> m17720a(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        ArrayList arrayList;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            AbstractC1293l.m17543a().mo17536e(f4121a, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(list.size());
            ComponentName componentName = new ComponentName(context, SystemJobService.class);
            for (JobInfo jobInfo : list) {
                if (componentName.equals(jobInfo.getService())) {
                    arrayList2.add(jobInfo);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: a */
    private static List<Integer> m17719a(Context context, JobScheduler jobScheduler, String str) {
        ArrayList arrayList;
        List<JobInfo> m17720a = m17720a(context, jobScheduler);
        if (m17720a == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(2);
            for (JobInfo jobInfo : m17720a) {
                if (str.equals(m17723a(jobInfo))) {
                    arrayList.add(Integer.valueOf(jobInfo.getId()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m17722a(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            AbstractC1293l.m17543a().mo17536e(f4121a, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    /* renamed from: a */
    public static void m17721a(Context context) {
        List<JobInfo> m17720a;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (m17720a = m17720a(context, jobScheduler)) == null || m17720a.isEmpty()) {
            return;
        }
        for (JobInfo jobInfo : m17720a) {
            m17722a(jobScheduler, jobInfo.getId());
        }
    }

    /* renamed from: b */
    public static void m17717b(Context context) {
        List<JobInfo> m17720a;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (m17720a = m17720a(context, jobScheduler)) == null || m17720a.isEmpty()) {
            return;
        }
        for (JobInfo jobInfo : m17720a) {
            if (m17723a(jobInfo) == null) {
                m17722a(jobScheduler, jobInfo.getId());
            }
        }
    }

    /* renamed from: a */
    public void m17718a(C1191p c1191p, int i) {
        JobInfo m17725a = this.f4125e.m17725a(c1191p, i);
        AbstractC1293l.m17543a().mo17539b(f4121a, String.format("Scheduling work ID %s Job ID %s", c1191p.f4013a, Integer.valueOf(i)), new Throwable[0]);
        try {
            this.f4123c.schedule(m17725a);
        } catch (IllegalStateException e) {
            List<JobInfo> m17720a = m17720a(this.f4122b, this.f4123c);
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(m17720a != null ? m17720a.size() : 0), Integer.valueOf(this.f4124d.m17652c().mo17885o().mo17792c().size()), Integer.valueOf(this.f4124d.m17650d().m17950h()));
            AbstractC1293l.m17543a().mo17536e(f4121a, format, new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            AbstractC1293l.m17543a().mo17536e(f4121a, String.format("Unable to schedule %s", c1191p), th);
        }
    }

    @Override // androidx.work.impl.AbstractC1228d
    /* renamed from: a */
    public void mo17704a(String str) {
        List<Integer> m17719a = m17719a(this.f4122b, this.f4123c, str);
        if (m17719a == null || m17719a.isEmpty()) {
            return;
        }
        for (Integer num : m17719a) {
            m17722a(this.f4123c, num.intValue());
        }
        this.f4124d.m17652c().mo17882r().mo17815b(str);
    }

    @Override // androidx.work.impl.AbstractC1228d
    /* renamed from: a */
    public void mo17703a(C1191p... c1191pArr) {
        List<Integer> m17719a;
        WorkDatabase m17652c = this.f4124d.m17652c();
        C1274c c1274c = new C1274c(m17652c);
        for (C1191p c1191p : c1191pArr) {
            m17652c.m18291g();
            try {
                C1191p mo17794b = m17652c.mo17885o().mo17794b(c1191p.f4013a);
                if (mo17794b == null) {
                    AbstractC1293l.m17543a().mo17537d(f4121a, "Skipping scheduling " + c1191p.f4013a + " because it's no longer in the DB", new Throwable[0]);
                    m17652c.m18288j();
                } else if (mo17794b.f4014b != C1308s.EnumC1309a.ENQUEUED) {
                    AbstractC1293l.m17543a().mo17537d(f4121a, "Skipping scheduling " + c1191p.f4013a + " because it is no longer enqueued", new Throwable[0]);
                    m17652c.m18288j();
                    m17652c.m18290h();
                } else {
                    C1176g mo17816a = m17652c.mo17882r().mo17816a(c1191p.f4013a);
                    int m17573a = mo17816a != null ? mo17816a.f3991b : c1274c.m17573a(this.f4124d.m17650d().m17952f(), this.f4124d.m17650d().m17951g());
                    if (mo17816a == null) {
                        this.f4124d.m17652c().mo17882r().mo17817a(new C1176g(c1191p.f4013a, m17573a));
                    }
                    m17718a(c1191p, m17573a);
                    if (Build.VERSION.SDK_INT == 23 && (m17719a = m17719a(this.f4122b, this.f4123c, c1191p.f4013a)) != null) {
                        int indexOf = m17719a.indexOf(Integer.valueOf(m17573a));
                        if (indexOf >= 0) {
                            m17719a.remove(indexOf);
                        }
                        m17718a(c1191p, !m17719a.isEmpty() ? m17719a.get(0).intValue() : c1274c.m17573a(this.f4124d.m17650d().m17952f(), this.f4124d.m17650d().m17951g()));
                    }
                    m17652c.m18288j();
                    m17652c.m18290h();
                }
            } finally {
                m17652c.m18290h();
            }
        }
    }
}
