package com.verizon.ads;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.verizon.ads.Job;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/JobScheduler.class */
public final class JobScheduler {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35305a = Logger.getInstance(JobScheduler.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Integer, Job> f35306b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final HandlerThread f35307c;

    /* renamed from: d  reason: collision with root package name */
    private static final Handler f35308d;

    static {
        HandlerThread handlerThread = new HandlerThread("JobScheduler");
        f35307c = handlerThread;
        handlerThread.start();
        f35308d = new Handler(handlerThread.getLooper());
    }

    public static void schedule(Context context, final Job job) {
        if (context == null) {
            f35305a.e("context cannot be null.");
        } else if (job == null) {
            f35305a.e("job cannot be null.");
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f35305a.d(String.format("Scheduling job %d with job handler.", Integer.valueOf(job.getId())));
            }
            final Job job2 = f35306b.get(Integer.valueOf(job.getId()));
            if (job2 != null) {
                if (Logger.isLogLevelEnabled(3)) {
                    f35305a.d(String.format("Attempting to cancel previous job with id %d", Integer.valueOf(job.getId())));
                }
                f35308d.post(new Runnable() { // from class: com.verizon.ads.JobScheduler.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        JobScheduler.f35308d.removeCallbacks(Job.this);
                    }
                });
            }
            job.f35304a = new Job.JobStateListener() { // from class: com.verizon.ads.JobScheduler.2
                @Override // com.verizon.ads.Job.JobStateListener
                public final void onJobFinished(Job job3) {
                    if (Logger.isLogLevelEnabled(3)) {
                        JobScheduler.f35305a.d(String.format("Job %d finished.", Integer.valueOf(job3.getId())));
                    }
                }
            };
            f35308d.postDelayed(new Runnable() { // from class: com.verizon.ads.JobScheduler.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (Logger.isLogLevelEnabled(3)) {
                        JobScheduler.f35305a.d(String.format("Starting job %d", Integer.valueOf(Job.this.getId())));
                    }
                    JobScheduler.f35306b.remove(Integer.valueOf(Job.this.getId()));
                    Job.this.run();
                }
            }, job.getDelay());
        }
    }

    public static void schedule(Job job) {
        if (!VASAds.isInitialized()) {
            f35305a.e("VASAds must be initialized prior to scheduling a job.");
            return;
        }
        Context b2 = VASAds.b();
        if (b2 == null) {
            f35305a.e("VASAds application context is null.  Cannot schedule job.");
        } else {
            schedule(b2, job);
        }
    }

    public static void shutdown() {
        HandlerThread handlerThread = f35307c;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }
}
