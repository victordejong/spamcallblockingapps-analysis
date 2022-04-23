package com.library.p518ad;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.util.HashMap;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.C6497d;
import p131c.p396i.p418b.AbstractC6621c;
import p131c.p396i.p418b.C6619a;
/* renamed from: com.library.ad.AdUpdateJobService */
/* loaded from: classes2-dex2jar.jar:com/library/ad/AdUpdateJobService.class */
public class AdUpdateJobService extends JobService {

    /* renamed from: a */
    public JobParameters f33134a;

    /* renamed from: b */
    public HashMap<Integer, Integer> f33135b = new HashMap<>();

    /* renamed from: c */
    public C6497d.AbstractC6503e f33136c = new C8510a();

    /* renamed from: d */
    public AbstractC6621c f33137d = new C8511b();

    /* renamed from: com.library.ad.AdUpdateJobService$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/AdUpdateJobService$a.class */
    public class C8510a extends C6497d.AbstractC6503e.AbstractC6504a {
        public C8510a() {
        }

        @Override // p131c.p396i.p397a.C6497d.AbstractC6503e.AbstractC6504a, p131c.p396i.p397a.C6497d.AbstractC6503e
        /* renamed from: a */
        public void mo5335a(int i, boolean z) {
            super.mo5335a(i, z);
            C6497d.m20645o().m20670b(AdUpdateJobService.this.f33136c);
            AdUpdateJobService adUpdateJobService = AdUpdateJobService.this;
            adUpdateJobService.jobFinished(adUpdateJobService.f33134a, false);
        }
    }

    /* renamed from: com.library.ad.AdUpdateJobService$b */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/AdUpdateJobService$b.class */
    public class C8511b extends AbstractC6621c.AbstractC6622a {
        public C8511b() {
        }

        @Override // p131c.p396i.p418b.AbstractC6621c.AbstractC6622a, p131c.p396i.p418b.AbstractC6621c
        /* renamed from: a */
        public void mo5334a(int i, boolean z) {
            super.mo5334a(i, z);
            C6619a.m20316b().m20315b(AdUpdateJobService.this.f33137d);
            AdUpdateJobService adUpdateJobService = AdUpdateJobService.this;
            adUpdateJobService.jobFinished(adUpdateJobService.f33134a, false);
        }
    }

    /* renamed from: a */
    public static boolean m5338a(Context context, long j, int i) {
        String str = "addAlarm: " + j + " jobId :" + i;
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        try {
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler == null) {
                return false;
            }
            jobScheduler.cancel(i);
            String str2 = "JobSchedulerResultCode " + jobScheduler.schedule(new JobInfo.Builder(i, new ComponentName(context.getPackageName(), AdUpdateJobService.class.getName())).setMinimumLatency(j).setRequiredNetworkType(1).build());
            return true;
        } catch (Exception e) {
            Log.getStackTraceString(e);
            return true;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f33135b.put(1, 0);
        this.f33135b.put(2, 0);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        this.f33134a = jobParameters;
        jobParameters.getJobId();
        int jobId = jobParameters.getJobId();
        if (C6489a.m20717c()) {
            if (jobId == 1) {
                C6497d.m20645o().m20679a(this.f33136c);
                C6497d.m20645o().m20664d();
                return true;
            } else if (jobId != 2 || C6619a.m20316b() == null) {
                return true;
            } else {
                C6619a.m20316b().m20322a(this.f33137d);
                C6619a.m20316b().m20323a();
                return true;
            }
        } else if (this.f33135b.get(Integer.valueOf(jobId)).intValue() < 2) {
            this.f33135b.put(Integer.valueOf(jobId), Integer.valueOf(this.f33135b.get(Integer.valueOf(jobId)).intValue() + 1));
            jobFinished(jobParameters, true);
            return true;
        } else {
            this.f33135b.put(Integer.valueOf(jobId), 0);
            jobFinished(jobParameters, false);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        jobParameters.getJobId();
        return false;
    }
}
