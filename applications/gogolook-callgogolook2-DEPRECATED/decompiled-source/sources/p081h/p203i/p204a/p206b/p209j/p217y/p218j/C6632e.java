package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.zip.Adler32;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.p211b0.C6561a;
import p081h.p203i.p204a.p206b.p209j.p215w.C6613a;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
@RequiresApi(api = 21)
/* renamed from: h.i.a.b.j.y.j.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/e.class */
public class C6632e implements AbstractC6650s {

    /* renamed from: a */
    public final Context f16464a;

    /* renamed from: b */
    public final AbstractC6661c f16465b;

    /* renamed from: c */
    public final AbstractC6634g f16466c;

    public C6632e(Context context, AbstractC6661c cVar, AbstractC6634g gVar) {
        this.f16464a = context;
        this.f16465b = cVar;
        this.f16466c = gVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public int m22213a(AbstractC6580m mVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f16464a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(mVar.mo22296a().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(C6561a.m22342a(mVar.mo22293c())).array());
        if (mVar.mo22294b() != null) {
            adler32.update(mVar.mo22294b());
        }
        return (int) adler32.getValue();
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6650s
    /* renamed from: a */
    public void mo22169a(AbstractC6580m mVar, int i) {
        ComponentName componentName = new ComponentName(this.f16464a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f16464a.getSystemService("jobscheduler");
        int a = m22213a(mVar);
        if (m22214a(jobScheduler, a, i)) {
            C6613a.m22235a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long a2 = this.f16465b.mo22132a(mVar);
        AbstractC6634g gVar = this.f16466c;
        JobInfo.Builder builder = new JobInfo.Builder(a, componentName);
        gVar.m22209a(builder, mVar.mo22293c(), a2, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", mVar.mo22296a());
        persistableBundle.putInt(IapProductRealmObject.PRIORITY, C6561a.m22342a(mVar.mo22293c()));
        if (mVar.mo22294b() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(mVar.mo22294b(), 0));
        }
        builder.setExtras(persistableBundle);
        C6613a.m22233a("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", mVar, Integer.valueOf(a), Long.valueOf(this.f16466c.m22207a(mVar.mo22293c(), a2, i)), Long.valueOf(a2), Integer.valueOf(i));
        jobScheduler.schedule(builder.build());
    }

    /* renamed from: a */
    public final boolean m22214a(JobScheduler jobScheduler, int i, int i2) {
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
