package com.google.android.exoplayer2.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler.class */
public final class PlatformScheduler {

    /* renamed from: a */
    private static final int f36929a;

    /* renamed from: b */
    private final int f36930b;

    /* renamed from: c */
    private final ComponentName f36931c;

    /* renamed from: d */
    private final JobScheduler f36932d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService.class */
    public static final class PlatformSchedulerService extends JobService {
        @Override // android.app.job.JobService
        public final boolean onStartJob(JobParameters jobParameters) {
            PersistableBundle extras = jobParameters.getExtras();
            int notMetRequirements = new Requirements(extras.getInt("requirements")).getNotMetRequirements(this);
            if (notMetRequirements != 0) {
                C11617n.m19863a("PlatformScheduler", "Requirements not met: ".concat(String.valueOf(notMetRequirements)));
                jobFinished(jobParameters, true);
                return false;
            }
            C11599af.m19991a((Context) this, new Intent((String) C11593a.m20020b(extras.getString("service_action"))).setPackage((String) C11593a.m20020b(extras.getString("service_package"))));
            return false;
        }

        @Override // android.app.job.JobService
        public final boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    static {
        f36929a = (C11599af.f38648a >= 26 ? 16 : 0) | 15;
    }

    public PlatformScheduler(Context context, int i) {
        Context applicationContext = context.getApplicationContext();
        this.f36930b = i;
        this.f36931c = new ComponentName(applicationContext, PlatformSchedulerService.class);
        this.f36932d = (JobScheduler) C11593a.m20020b((JobScheduler) applicationContext.getSystemService("jobscheduler"));
    }
}
