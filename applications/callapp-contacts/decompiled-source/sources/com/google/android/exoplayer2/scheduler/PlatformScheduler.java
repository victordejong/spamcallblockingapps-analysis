package com.google.android.exoplayer2.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler.class */
public final class PlatformScheduler {

    /* renamed from: a  reason: collision with root package name */
    private static final int f21513a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21514b;

    /* renamed from: c  reason: collision with root package name */
    private final ComponentName f21515c;

    /* renamed from: d  reason: collision with root package name */
    private final JobScheduler f21516d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService.class */
    public static final class PlatformSchedulerService extends JobService {
        @Override // android.app.job.JobService
        public final boolean onStartJob(JobParameters jobParameters) {
            PersistableBundle extras = jobParameters.getExtras();
            int notMetRequirements = new Requirements(extras.getInt("requirements")).getNotMetRequirements(this);
            if (notMetRequirements == 0) {
                af.a((Context) this, new Intent((String) a.b(extras.getString("service_action"))).setPackage((String) a.b(extras.getString("service_package"))));
                return false;
            }
            n.a("PlatformScheduler", "Requirements not met: ".concat(String.valueOf(notMetRequirements)));
            jobFinished(jobParameters, true);
            return false;
        }

        @Override // android.app.job.JobService
        public final boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    static {
        f21513a = (af.f22275a >= 26 ? 16 : 0) | 15;
    }

    public PlatformScheduler(Context context, int i) {
        Context applicationContext = context.getApplicationContext();
        this.f21514b = i;
        this.f21515c = new ComponentName(applicationContext, PlatformSchedulerService.class);
        this.f21516d = (JobScheduler) a.b((JobScheduler) applicationContext.getSystemService("jobscheduler"));
    }
}
