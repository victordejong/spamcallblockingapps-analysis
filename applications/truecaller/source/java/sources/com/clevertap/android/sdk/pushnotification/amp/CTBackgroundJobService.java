package com.clevertap.android.sdk.pushnotification.amp;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import java.util.HashMap;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.C22877x;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService.class */
public class CTBackgroundJobService extends JobService {

    /* renamed from: com.clevertap.android.sdk.pushnotification.amp.CTBackgroundJobService$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService$a.class */
    public class RunnableC0887a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ JobParameters f2400a;

        public RunnableC0887a(JobParameters jobParameters) {
            CTBackgroundJobService.this = r4;
            this.f2400a = jobParameters;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context applicationContext = CTBackgroundJobService.this.getApplicationContext();
            JobParameters jobParameters = this.f2400a;
            HashMap<String, C22773p> hashMap = C22773p.f63085e;
            if (hashMap == null) {
                C22773p m7793h = C22773p.m7793h(applicationContext);
                if (m7793h != null) {
                    C22877x c22877x = m7793h.f63088b;
                    if (c22877x.f63515a.f2245f) {
                        c22877x.f63525k.m7647n(applicationContext, jobParameters);
                    }
                }
            } else {
                for (String str : hashMap.keySet()) {
                    C22773p c22773p = C22773p.f63085e.get(str);
                    if (c22773p == null || !c22773p.f63088b.f63515a.f2244e) {
                        if (c22773p != null) {
                            C22877x c22877x2 = c22773p.f63088b;
                            if (c22877x2.f63515a.f2245f) {
                                c22877x2.f63525k.m7647n(applicationContext, jobParameters);
                            }
                        }
                    }
                }
            }
            CTBackgroundJobService.this.jobFinished(this.f2400a, true);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        new Thread(new RunnableC0887a(jobParameters)).start();
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
