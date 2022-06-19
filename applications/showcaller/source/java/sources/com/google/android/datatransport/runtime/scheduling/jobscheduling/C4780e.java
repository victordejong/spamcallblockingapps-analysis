package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.p235v.C4687a;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.p232h.p240z.C4754a;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.zip.Adler32;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.e */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/e.class */
public class C4780e implements AbstractC4793r {

    /* renamed from: a */
    private final Context f14402a;

    /* renamed from: b */
    private final AbstractC4710c f14403b;

    /* renamed from: c */
    private final SchedulerConfig f14404c;

    public C4780e(Context context, AbstractC4710c abstractC4710c, SchedulerConfig schedulerConfig) {
        this.f14402a = context;
        this.f14403b = abstractC4710c;
        this.f14404c = schedulerConfig;
    }

    /* renamed from: d */
    private boolean m21789d(JobScheduler jobScheduler, int i, int i2) {
        boolean z;
        Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            JobInfo next = it.next();
            int i3 = next.getExtras().getInt("attemptNumber");
            if (next.getId() == i) {
                z = false;
                if (i3 >= i2) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r
    /* renamed from: a */
    public void mo21764a(AbstractC4673m abstractC4673m, int i) {
        mo21763b(abstractC4673m, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r
    /* renamed from: b */
    public void mo21763b(AbstractC4673m abstractC4673m, int i, boolean z) {
        ComponentName componentName = new ComponentName(this.f14402a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f14402a.getSystemService("jobscheduler");
        int m21790c = m21790c(abstractC4673m);
        if (!z && m21789d(jobScheduler, m21790c, i)) {
            C4687a.m21993a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", abstractC4673m);
            return;
        }
        long mo21932b0 = this.f14403b.mo21932b0(abstractC4673m);
        JobInfo.Builder m21811c = this.f14404c.m21811c(new JobInfo.Builder(m21790c, componentName), abstractC4673m.mo22021d(), mo21932b0, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", abstractC4673m.mo22023b());
        persistableBundle.putInt("priority", C4754a.m21846a(abstractC4673m.mo22021d()));
        if (abstractC4673m.mo22022c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(abstractC4673m.mo22022c(), 0));
        }
        m21811c.setExtras(persistableBundle);
        C4687a.m21992b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", abstractC4673m, Integer.valueOf(m21790c), Long.valueOf(this.f14404c.m21808g(abstractC4673m.mo22021d(), mo21932b0, i)), Long.valueOf(mo21932b0), Integer.valueOf(i));
        jobScheduler.schedule(m21811c.build());
    }

    /* renamed from: c */
    int m21790c(AbstractC4673m abstractC4673m) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f14402a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(abstractC4673m.mo22023b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(C4754a.m21846a(abstractC4673m.mo22021d())).array());
        if (abstractC4673m.mo22022c() != null) {
            adler32.update(abstractC4673m.mo22022c());
        }
        return (int) adler32.getValue();
    }
}
