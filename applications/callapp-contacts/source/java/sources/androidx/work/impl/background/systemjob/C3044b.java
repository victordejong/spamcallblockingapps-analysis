package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.C3163t;
import androidx.work.impl.AbstractC3048e;
import androidx.work.impl.C3068j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.C3122c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* renamed from: androidx.work.impl.background.systemjob.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/b.class */
public final class C3044b implements AbstractC3048e {

    /* renamed from: a */
    private static final String f11276a = AbstractC3145k.m39275a("SystemJobScheduler");

    /* renamed from: b */
    private final Context f11277b;

    /* renamed from: c */
    private final JobScheduler f11278c;

    /* renamed from: d */
    private final C3068j f11279d;

    /* renamed from: e */
    private final C3042a f11280e;

    public C3044b(Context context, C3068j c3068j) {
        this(context, c3068j, (JobScheduler) context.getSystemService("jobscheduler"), new C3042a(context));
    }

    public C3044b(Context context, C3068j c3068j, JobScheduler jobScheduler, C3042a c3042a) {
        this.f11277b = context;
        this.f11279d = c3068j;
        this.f11278c = jobScheduler;
        this.f11280e = c3042a;
    }

    /* renamed from: a */
    private static String m39407a(JobInfo jobInfo) {
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

    /* renamed from: a */
    private static List<JobInfo> m39404a(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            AbstractC3145k.m39277a().mo39273a(f11276a, "getAllPendingJobs() is not reliable on this device.", th);
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

    /* renamed from: a */
    private static List<Integer> m39403a(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> m39404a = m39404a(context, jobScheduler);
        if (m39404a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : m39404a) {
            if (str.equals(m39407a(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m39406a(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            AbstractC3145k.m39277a().mo39273a(f11276a, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    /* renamed from: a */
    public static void m39405a(Context context) {
        List<JobInfo> m39404a;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (m39404a = m39404a(context, jobScheduler)) == null || m39404a.isEmpty()) {
            return;
        }
        for (JobInfo jobInfo : m39404a) {
            m39406a(jobScheduler, jobInfo.getId());
        }
    }

    /* renamed from: a */
    private void m39401a(WorkSpec workSpec, int i) {
        JobInfo m39408a = this.f11280e.m39408a(workSpec, i);
        AbstractC3145k.m39277a();
        String.format("Scheduling work ID %s Job ID %s", workSpec.f11397id, Integer.valueOf(i));
        try {
            this.f11278c.schedule(m39408a);
        } catch (IllegalStateException e) {
            List<JobInfo> m39404a = m39404a(this.f11277b, this.f11278c);
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(m39404a != null ? m39404a.size() : 0), Integer.valueOf(this.f11279d.f11355c.mo39474j().getScheduledWork().size()), Integer.valueOf(this.f11279d.f11354b.getMaxSchedulerLimit()));
            AbstractC3145k.m39277a().mo39273a(f11276a, format, new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            AbstractC3145k.m39277a().mo39273a(f11276a, String.format("Unable to schedule %s", workSpec), th);
        }
    }

    /* renamed from: a */
    public static boolean m39402a(Context context, C3068j c3068j) {
        boolean z;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> m39404a = m39404a(context, jobScheduler);
        List<String> workSpecIds = c3068j.f11355c.mo39471m().getWorkSpecIds();
        HashSet hashSet = new HashSet(m39404a != null ? m39404a.size() : 0);
        if (m39404a != null && !m39404a.isEmpty()) {
            for (JobInfo jobInfo : m39404a) {
                String m39407a = m39407a(jobInfo);
                if (!TextUtils.isEmpty(m39407a)) {
                    hashSet.add(m39407a);
                } else {
                    m39406a(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator<String> it2 = workSpecIds.iterator();
        while (true) {
            z = false;
            if (!it2.hasNext()) {
                break;
            } else if (!hashSet.contains(it2.next())) {
                AbstractC3145k.m39277a();
                z = true;
                break;
            }
        }
        if (z) {
            WorkDatabase workDatabase = c3068j.f11355c;
            workDatabase.m39959e();
            try {
                WorkSpecDao mo39474j = workDatabase.mo39474j();
                for (String str : workSpecIds) {
                    mo39474j.markWorkSpecScheduled(str, -1L);
                }
                workDatabase.m39957g();
            } finally {
                workDatabase.m39958f();
            }
        }
        return z;
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final void mo39387a(String str) {
        List<Integer> m39403a = m39403a(this.f11277b, this.f11278c, str);
        if (m39403a == null || m39403a.isEmpty()) {
            return;
        }
        for (Integer num : m39403a) {
            m39406a(this.f11278c, num.intValue());
        }
        this.f11279d.f11355c.mo39471m().removeSystemIdInfo(str);
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final void mo39386a(WorkSpec... workSpecArr) {
        List<Integer> m39403a;
        WorkDatabase workDatabase = this.f11279d.f11355c;
        C3122c c3122c = new C3122c(workDatabase);
        for (WorkSpec workSpec : workSpecArr) {
            workDatabase.m39959e();
            try {
                WorkSpec workSpec2 = workDatabase.mo39474j().getWorkSpec(workSpec.f11397id);
                if (workSpec2 == null) {
                    AbstractC3145k.m39277a().mo39274a(f11276a, "Skipping scheduling " + workSpec.f11397id + " because it's no longer in the DB");
                    workDatabase.m39957g();
                } else if (workSpec2.state != C3163t.EnumC3164a.ENQUEUED) {
                    AbstractC3145k.m39277a().mo39274a(f11276a, "Skipping scheduling " + workSpec.f11397id + " because it is no longer enqueued");
                    workDatabase.m39957g();
                } else {
                    SystemIdInfo systemIdInfo = workDatabase.mo39471m().getSystemIdInfo(workSpec.f11397id);
                    int m39299a = systemIdInfo != null ? systemIdInfo.systemId : c3122c.m39299a(this.f11279d.f11354b.getMinJobSchedulerId(), this.f11279d.f11354b.getMaxJobSchedulerId());
                    if (systemIdInfo == null) {
                        this.f11279d.f11355c.mo39471m().insertSystemIdInfo(new SystemIdInfo(workSpec.f11397id, m39299a));
                    }
                    m39401a(workSpec, m39299a);
                    if (Build.VERSION.SDK_INT == 23 && (m39403a = m39403a(this.f11277b, this.f11278c, workSpec.f11397id)) != null) {
                        int indexOf = m39403a.indexOf(Integer.valueOf(m39299a));
                        if (indexOf >= 0) {
                            m39403a.remove(indexOf);
                        }
                        m39401a(workSpec, !m39403a.isEmpty() ? m39403a.get(0).intValue() : c3122c.m39299a(this.f11279d.f11354b.getMinJobSchedulerId(), this.f11279d.f11354b.getMaxJobSchedulerId()));
                    }
                    workDatabase.m39957g();
                }
            } finally {
                workDatabase.m39958f();
            }
        }
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final boolean mo39388a() {
        return true;
    }
}
