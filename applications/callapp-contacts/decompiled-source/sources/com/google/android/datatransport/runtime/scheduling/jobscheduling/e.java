package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.e.a;
import com.google.android.datatransport.runtime.l;
import com.google.android.datatransport.runtime.scheduling.a.c;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/e.class */
public final class e implements s {

    /* renamed from: a  reason: collision with root package name */
    private final Context f20559a;

    /* renamed from: b  reason: collision with root package name */
    private final c f20560b;

    /* renamed from: c  reason: collision with root package name */
    private final g f20561c;

    public e(Context context, c cVar, g gVar) {
        this.f20559a = context;
        this.f20560b = cVar;
        this.f20561c = gVar;
    }

    private int a(l lVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f20559a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(lVar.a().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(a.a(lVar.c())).array());
        if (lVar.b() != null) {
            adler32.update(lVar.b());
        }
        return (int) adler32.getValue();
    }

    private static boolean a(JobScheduler jobScheduler, int i, int i2) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i3 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i) {
                return i3 >= i2;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public final void a(l lVar, int i) {
        a(lVar, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public final void a(l lVar, int i, boolean z) {
        ComponentName componentName = new ComponentName(this.f20559a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f20559a.getSystemService("jobscheduler");
        int a2 = a(lVar);
        if (z || !a(jobScheduler, a2, i)) {
            long a3 = this.f20560b.a(lVar);
            JobInfo.Builder a4 = this.f20561c.a(new JobInfo.Builder(a2, componentName), lVar.c(), a3, i);
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("attemptNumber", i);
            persistableBundle.putString("backendName", lVar.a());
            persistableBundle.putInt("priority", a.a(lVar.c()));
            if (lVar.b() != null) {
                persistableBundle.putString("extras", Base64.encodeToString(lVar.b(), 0));
            }
            a4.setExtras(persistableBundle);
            com.google.android.datatransport.runtime.b.a.a("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", lVar, Integer.valueOf(a2), Long.valueOf(this.f20561c.a(lVar.c(), a3, i)), Long.valueOf(a3), Integer.valueOf(i));
            jobScheduler.schedule(a4.build());
            return;
        }
        com.google.android.datatransport.runtime.b.a.a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", lVar);
    }
}
