package p228s1;

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
import java.util.Objects;
import p186o1.AbstractC3824h;
import p186o1.EnumC3836m;
import p197p1.AbstractC4000d;
import p197p1.C4006j;
import p282x1.C4817g;
import p282x1.C4819i;
import p282x1.C4832p;
import p282x1.C4835r;
import p292y1.C4959f;
/* renamed from: s1.b */
/* loaded from: classes-dex2jar.jar:s1/b.class */
public class C4278b implements AbstractC4000d {

    /* renamed from: e */
    public static final String f13415e = AbstractC3824h.m1773e("SystemJobScheduler");

    /* renamed from: a */
    public final Context f13416a;

    /* renamed from: b */
    public final JobScheduler f13417b;

    /* renamed from: c */
    public final C4006j f13418c;

    /* renamed from: d */
    public final C4277a f13419d;

    public C4278b(Context context, C4006j c4006j) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        C4277a c4277a = new C4277a(context);
        this.f13416a = context;
        this.f13418c = c4006j;
        this.f13417b = jobScheduler;
        this.f13419d = c4277a;
    }

    /* renamed from: a */
    public static void m1127a(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            AbstractC3824h.m1774c().mo1771b(f13415e, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    /* renamed from: c */
    public static List<Integer> m1125c(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> m1123e = m1123e(context, jobScheduler);
        if (m1123e == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : m1123e) {
            if (str.equals(m1121g(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public static List<JobInfo> m1123e(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            AbstractC3824h.m1774c().mo1771b(f13415e, "getAllPendingJobs() is not reliable on this device.", th);
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
    public static String m1121g(JobInfo jobInfo) {
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

    @Override // p197p1.AbstractC4000d
    /* renamed from: b */
    public void mo1126b(String str) {
        List<Integer> m1125c = m1125c(this.f13416a, this.f13417b, str);
        if (m1125c == null || m1125c.isEmpty()) {
            return;
        }
        for (Integer num : m1125c) {
            m1127a(this.f13417b, num.intValue());
        }
        ((C4819i) this.f13418c.f12584c.mo7478n()).m394c(str);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p197p1.AbstractC4000d
    /* renamed from: d */
    public void mo1124d(C4832p... c4832pArr) {
        int i;
        List<Integer> m1125c;
        int i2;
        WorkDatabase workDatabase = this.f13418c.f12584c;
        C4959f c4959f = new C4959f(workDatabase);
        for (C4832p c4832p : c4832pArr) {
            workDatabase.m3819c();
            try {
                C4832p m380i = ((C4835r) workDatabase.mo7475q()).m380i(c4832p.f14831a);
                if (m380i == null) {
                    AbstractC3824h.m1774c().mo1769f(f13415e, "Skipping scheduling " + c4832p.f14831a + " because it's no longer in the DB", new Throwable[0]);
                    workDatabase.m3811k();
                } else if (m380i.f14832b != EnumC3836m.ENQUEUED) {
                    AbstractC3824h.m1774c().mo1769f(f13415e, "Skipping scheduling " + c4832p.f14831a + " because it is no longer enqueued", new Throwable[0]);
                    workDatabase.m3811k();
                } else {
                    C4817g m396a = ((C4819i) workDatabase.mo7478n()).m396a(c4832p.f14831a);
                    if (m396a != null) {
                        i = m396a.f14817b;
                    } else {
                        Objects.requireNonNull(this.f13418c.f12583b);
                        i = c4959f.m175b(0, this.f13418c.f12583b.f2637g);
                    }
                    if (m396a == null) {
                        ((C4819i) this.f13418c.f12584c.mo7478n()).m395b(new C4817g(c4832p.f14831a, i));
                    }
                    m1120h(c4832p, i);
                    if (Build.VERSION.SDK_INT == 23 && (m1125c = m1125c(this.f13416a, this.f13417b, c4832p.f14831a)) != null) {
                        int indexOf = m1125c.indexOf(Integer.valueOf(i));
                        if (indexOf >= 0) {
                            m1125c.remove(indexOf);
                        }
                        if (!m1125c.isEmpty()) {
                            i2 = m1125c.get(0).intValue();
                        } else {
                            Objects.requireNonNull(this.f13418c.f12583b);
                            i2 = c4959f.m175b(0, this.f13418c.f12583b.f2637g);
                        }
                        m1120h(c4832p, i2);
                    }
                    workDatabase.m3811k();
                }
                workDatabase.m3815g();
            } catch (Throwable th) {
                workDatabase.m3815g();
                throw th;
            }
        }
    }

    @Override // p197p1.AbstractC4000d
    /* renamed from: f */
    public boolean mo1122f() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b1, code lost:
        if (r0 < 26) goto L22;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1120h(p282x1.C4832p r9, int r10) {
        /*
            Method dump skipped, instructions count: 877
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p228s1.C4278b.m1120h(x1.p, int):void");
    }
}
