package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.android.volley.Request;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.zip.Adler32;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.p178b0.C2552a;
import p131c.p161d.p170b.p173b.p176i.p182w.C2601a;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
/* renamed from: c.d.b.b.i.y.j.e */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/e.class */
public class C2620e implements AbstractC2633r {

    /* renamed from: a */
    public final Context f9703a;

    /* renamed from: b */
    public final AbstractC2644c f9704b;

    /* renamed from: c */
    public final SchedulerConfig f9705c;

    public C2620e(Context context, AbstractC2644c cVar, SchedulerConfig schedulerConfig) {
        this.f9703a = context;
        this.f9704b = cVar;
        this.f9705c = schedulerConfig;
    }

    /* renamed from: a */
    public int m29426a(AbstractC2571m mVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f9703a.getPackageName().getBytes(Charset.forName(Request.DEFAULT_PARAMS_ENCODING)));
        adler32.update(mVar.mo29506a().getBytes(Charset.forName(Request.DEFAULT_PARAMS_ENCODING)));
        adler32.update(ByteBuffer.allocate(4).putInt(C2552a.m29552a(mVar.mo29503c())).array());
        if (mVar.mo29504b() != null) {
            adler32.update(mVar.mo29504b());
        }
        return (int) adler32.getValue();
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p185j.AbstractC2633r
    /* renamed from: a */
    public void mo29403a(AbstractC2571m mVar, int i) {
        ComponentName componentName = new ComponentName(this.f9703a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f9703a.getSystemService("jobscheduler");
        int a = m29426a(mVar);
        if (m29427a(jobScheduler, a, i)) {
            C2601a.m29448a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long b = this.f9704b.mo29363b(mVar);
        SchedulerConfig schedulerConfig = this.f9705c;
        JobInfo.Builder builder = new JobInfo.Builder(a, componentName);
        schedulerConfig.m18733a(builder, mVar.mo29503c(), b, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", mVar.mo29506a());
        persistableBundle.putInt("priority", C2552a.m29552a(mVar.mo29503c()));
        if (mVar.mo29504b() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(mVar.mo29504b(), 0));
        }
        builder.setExtras(persistableBundle);
        C2601a.m29446a("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", mVar, Integer.valueOf(a), Long.valueOf(this.f9705c.m18729a(mVar.mo29503c(), b, i)), Long.valueOf(b), Integer.valueOf(i));
        jobScheduler.schedule(builder.build());
    }

    /* renamed from: a */
    public final boolean m29427a(JobScheduler jobScheduler, int i, int i2) {
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
}
