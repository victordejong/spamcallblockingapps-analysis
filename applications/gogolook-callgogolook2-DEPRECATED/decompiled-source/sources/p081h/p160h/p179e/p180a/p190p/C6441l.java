package p081h.p160h.p179e.p180a.p190p;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import com.gogolook.whoscallsdk.core.utils.WCJobService;
/* renamed from: h.h.e.a.p.l */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/l.class */
public class C6441l {
    /* renamed from: a */
    public static void m22565a(Context context) {
        C6431d.m22617b(context, "pref_has_queue_job", false);
        C6431d.m22620b(context, "pref_queue_job_delay_millis", 0L);
        C6438i.m22578d("[Job] reset job");
    }

    @TargetApi(21)
    /* renamed from: a */
    public static void m22564a(Context context, int i) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            C6438i.m22578d("[Job] cancel job : " + i);
            jobScheduler.cancel(i);
        }
    }

    @TargetApi(21)
    /* renamed from: a */
    public static void m22563a(Context context, int i, long j, long j2) {
        JobScheduler jobScheduler;
        if (i != 1) {
            return;
        }
        if ((!C6431d.m22624a(context, "pref_has_queue_job", false) || C6431d.m22627a(context, "pref_queue_job_delay_millis", 0L) > j2) && (jobScheduler = (JobScheduler) context.getSystemService("jobscheduler")) != null) {
            C6438i.m22579c("[Job] prepare register job : " + i + " after " + j2 + " milliseconds");
            JobInfo.Builder builder = new JobInfo.Builder(i, new ComponentName(context.getPackageName(), WCJobService.class.getName()));
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("JobType", i);
            builder.setMinimumLatency(j).setOverrideDeadline(j2).setRequiredNetworkType(1).setExtras(persistableBundle);
            if (C6431d.m22624a(context, "pref_has_queue_job", false)) {
                jobScheduler.cancel(i);
            }
            if (jobScheduler.schedule(builder.build()) > 0) {
                m22562a(context, j2);
            }
        }
    }

    /* renamed from: a */
    public static void m22562a(Context context, long j) {
        C6431d.m22617b(context, "pref_has_queue_job", true);
        C6431d.m22620b(context, "pref_queue_job_delay_millis", j);
        C6438i.m22578d("[Job] start job after " + j + " milliseconds");
    }
}
