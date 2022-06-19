package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.p318b.C10692a;
import com.google.android.datatransport.runtime.p321e.C10727a;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/e.class */
public final class C10806e implements AbstractC10824s {

    /* renamed from: a */
    private final Context f34721a;

    /* renamed from: b */
    private final AbstractC10762c f34722b;

    /* renamed from: c */
    private final AbstractC10808g f34723c;

    public C10806e(Context context, AbstractC10762c abstractC10762c, AbstractC10808g abstractC10808g) {
        this.f34721a = context;
        this.f34722b = abstractC10762c;
        this.f34723c = abstractC10808g;
    }

    /* renamed from: a */
    private int m22350a(AbstractC10738l abstractC10738l) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f34721a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(abstractC10738l.mo22450a().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(C10727a.m22487a(abstractC10738l.mo22448c())).array());
        if (abstractC10738l.mo22449b() != null) {
            adler32.update(abstractC10738l.mo22449b());
        }
        return (int) adler32.getValue();
    }

    /* renamed from: a */
    private static boolean m22351a(JobScheduler jobScheduler, int i, int i2) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i3 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i) {
                return i3 >= i2;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10824s
    /* renamed from: a */
    public final void mo22330a(AbstractC10738l abstractC10738l, int i) {
        mo22329a(abstractC10738l, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10824s
    /* renamed from: a */
    public final void mo22329a(AbstractC10738l abstractC10738l, int i, boolean z) {
        ComponentName componentName = new ComponentName(this.f34721a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f34721a.getSystemService("jobscheduler");
        int m22350a = m22350a(abstractC10738l);
        if (!z && m22351a(jobScheduler, m22350a, i)) {
            C10692a.m22517a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", abstractC10738l);
            return;
        }
        long mo22393a = this.f34722b.mo22393a(abstractC10738l);
        JobInfo.Builder m22346a = this.f34723c.m22346a(new JobInfo.Builder(m22350a, componentName), abstractC10738l.mo22448c(), mo22393a, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", abstractC10738l.mo22450a());
        persistableBundle.putInt("priority", C10727a.m22487a(abstractC10738l.mo22448c()));
        if (abstractC10738l.mo22449b() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(abstractC10738l.mo22449b(), 0));
        }
        m22346a.setExtras(persistableBundle);
        C10692a.m22515a("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", abstractC10738l, Integer.valueOf(m22350a), Long.valueOf(this.f34723c.m22344a(abstractC10738l.mo22448c(), mo22393a, i)), Long.valueOf(mo22393a), Integer.valueOf(i));
        jobScheduler.schedule(m22346a.build());
    }
}
