package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.e;
import androidx.work.impl.j;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.c;
import androidx.work.k;
import androidx.work.t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/b.class */
public final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6069a = k.a("SystemJobScheduler");

    /* renamed from: b  reason: collision with root package name */
    private final Context f6070b;

    /* renamed from: c  reason: collision with root package name */
    private final JobScheduler f6071c;

    /* renamed from: d  reason: collision with root package name */
    private final j f6072d;
    private final a e;

    public b(Context context, j jVar) {
        this(context, jVar, (JobScheduler) context.getSystemService("jobscheduler"), new a(context));
    }

    public b(Context context, j jVar, JobScheduler jobScheduler, a aVar) {
        this.f6070b = context;
        this.f6072d = jVar;
        this.f6071c = jobScheduler;
        this.e = aVar;
    }

    private static String a(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return extras.getString("EXTRA_WORK_SPEC_ID");
            }
            return null;
        } catch (NullPointerException e) {
            return null;
        }
    }

    private static List<JobInfo> a(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            k.a().a(f6069a, "getAllPendingJobs() is not reliable on this device.", th);
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

    private static List<Integer> a(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> a2 = a(context, jobScheduler);
        if (a2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : a2) {
            if (str.equals(a(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    private static void a(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            k.a().a(f6069a, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    public static void a(Context context) {
        List<JobInfo> a2;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (!(jobScheduler == null || (a2 = a(context, jobScheduler)) == null || a2.isEmpty())) {
            for (JobInfo jobInfo : a2) {
                a(jobScheduler, jobInfo.getId());
            }
        }
    }

    private void a(WorkSpec workSpec, int i) {
        JobInfo a2 = this.e.a(workSpec, i);
        k.a();
        String.format("Scheduling work ID %s Job ID %s", workSpec.id, Integer.valueOf(i));
        try {
            this.f6071c.schedule(a2);
        } catch (IllegalStateException e) {
            List<JobInfo> a3 = a(this.f6070b, this.f6071c);
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(a3 != null ? a3.size() : 0), Integer.valueOf(this.f6072d.f6118c.j().getScheduledWork().size()), Integer.valueOf(this.f6072d.f6117b.getMaxSchedulerLimit()));
            k.a().a(f6069a, format, new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            k.a().a(f6069a, String.format("Unable to schedule %s", workSpec), th);
        }
    }

    public static boolean a(Context context, j jVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> a2 = a(context, jobScheduler);
        List<String> workSpecIds = jVar.f6118c.m().getWorkSpecIds();
        boolean z = false;
        HashSet hashSet = new HashSet(a2 != null ? a2.size() : 0);
        if (a2 != null && !a2.isEmpty()) {
            for (JobInfo jobInfo : a2) {
                String a3 = a(jobInfo);
                if (!TextUtils.isEmpty(a3)) {
                    hashSet.add(a3);
                } else {
                    a(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator<String> it2 = workSpecIds.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (!hashSet.contains(it2.next())) {
                    k.a();
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (z) {
            WorkDatabase workDatabase = jVar.f6118c;
            workDatabase.e();
            try {
                WorkSpecDao j = workDatabase.j();
                for (String str : workSpecIds) {
                    j.markWorkSpecScheduled(str, -1L);
                }
                workDatabase.g();
            } finally {
                workDatabase.f();
            }
        }
        return z;
    }

    @Override // androidx.work.impl.e
    public final void a(String str) {
        List<Integer> a2 = a(this.f6070b, this.f6071c, str);
        if (!(a2 == null || a2.isEmpty())) {
            for (Integer num : a2) {
                a(this.f6071c, num.intValue());
            }
            this.f6072d.f6118c.m().removeSystemIdInfo(str);
        }
    }

    @Override // androidx.work.impl.e
    public final void a(WorkSpec... workSpecArr) {
        List<Integer> a2;
        WorkDatabase workDatabase = this.f6072d.f6118c;
        c cVar = new c(workDatabase);
        for (WorkSpec workSpec : workSpecArr) {
            workDatabase.e();
            try {
                WorkSpec workSpec2 = workDatabase.j().getWorkSpec(workSpec.id);
                if (workSpec2 == null) {
                    k.a().a(f6069a, "Skipping scheduling " + workSpec.id + " because it's no longer in the DB");
                    workDatabase.g();
                } else if (workSpec2.state != t.a.ENQUEUED) {
                    k.a().a(f6069a, "Skipping scheduling " + workSpec.id + " because it is no longer enqueued");
                    workDatabase.g();
                } else {
                    SystemIdInfo systemIdInfo = workDatabase.m().getSystemIdInfo(workSpec.id);
                    int a3 = systemIdInfo != null ? systemIdInfo.systemId : cVar.a(this.f6072d.f6117b.getMinJobSchedulerId(), this.f6072d.f6117b.getMaxJobSchedulerId());
                    if (systemIdInfo == null) {
                        this.f6072d.f6118c.m().insertSystemIdInfo(new SystemIdInfo(workSpec.id, a3));
                    }
                    a(workSpec, a3);
                    if (Build.VERSION.SDK_INT == 23 && (a2 = a(this.f6070b, this.f6071c, workSpec.id)) != null) {
                        int indexOf = a2.indexOf(Integer.valueOf(a3));
                        if (indexOf >= 0) {
                            a2.remove(indexOf);
                        }
                        a(workSpec, !a2.isEmpty() ? a2.get(0).intValue() : cVar.a(this.f6072d.f6117b.getMinJobSchedulerId(), this.f6072d.f6117b.getMaxJobSchedulerId()));
                    }
                    workDatabase.g();
                }
            } finally {
                workDatabase.f();
            }
        }
    }

    @Override // androidx.work.impl.e
    public final boolean a() {
        return true;
    }
}
