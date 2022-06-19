package com.verizon.ads;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.verizon.ads.Job;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/JobScheduler.class */
public final class JobScheduler {

    /* renamed from: a */
    private static final Logger f61198a = Logger.getInstance(JobScheduler.class);

    /* renamed from: b */
    private static final Map<Integer, Job> f61199b = new ConcurrentHashMap();

    /* renamed from: c */
    private static final HandlerThread f61200c;

    /* renamed from: d */
    private static final Handler f61201d;

    static {
        HandlerThread handlerThread = new HandlerThread("JobScheduler");
        f61200c = handlerThread;
        handlerThread.start();
        f61201d = new Handler(handlerThread.getLooper());
    }

    public static void schedule(Context context, final Job job) {
        if (context == null) {
            f61198a.m5565e("context cannot be null.");
        } else if (job == null) {
            f61198a.m5565e("job cannot be null.");
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f61198a.m5567d(String.format("Scheduling job %d with job handler.", Integer.valueOf(job.getId())));
            }
            final Job job2 = f61199b.get(Integer.valueOf(job.getId()));
            if (job2 != null) {
                if (Logger.isLogLevelEnabled(3)) {
                    f61198a.m5567d(String.format("Attempting to cancel previous job with id %d", Integer.valueOf(job.getId())));
                }
                f61201d.post(new Runnable() { // from class: com.verizon.ads.JobScheduler.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        JobScheduler.f61201d.removeCallbacks(job2);
                    }
                });
            }
            job.f61197a = new Job.JobStateListener() { // from class: com.verizon.ads.JobScheduler.2
                @Override // com.verizon.ads.Job.JobStateListener
                public final void onJobFinished(Job job3) {
                    if (Logger.isLogLevelEnabled(3)) {
                        JobScheduler.f61198a.m5567d(String.format("Job %d finished.", Integer.valueOf(job3.getId())));
                    }
                }
            };
            f61201d.postDelayed(new Runnable() { // from class: com.verizon.ads.JobScheduler.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (Logger.isLogLevelEnabled(3)) {
                        JobScheduler.f61198a.m5567d(String.format("Starting job %d", Integer.valueOf(job.getId())));
                    }
                    JobScheduler.f61199b.remove(Integer.valueOf(job.getId()));
                    job.run();
                }
            }, job.getDelay());
        }
    }

    public static void schedule(Job job) {
        if (!VASAds.isInitialized()) {
            f61198a.m5565e("VASAds must be initialized prior to scheduling a job.");
            return;
        }
        Context m5540b = VASAds.m5540b();
        if (m5540b == null) {
            f61198a.m5565e("VASAds application context is null.  Cannot schedule job.");
        } else {
            schedule(m5540b, job);
        }
    }

    public static void shutdown() {
        HandlerThread handlerThread = f61200c;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }
}
