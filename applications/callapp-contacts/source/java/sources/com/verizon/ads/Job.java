package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/Job.class */
public abstract class Job implements Runnable {

    /* renamed from: a */
    JobStateListener f61197a;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/Job$JobStateListener.class */
    interface JobStateListener {
        void onJobFinished(Job job);
    }

    public abstract long getDelay();

    public abstract int getId();

    public final void jobFinished() {
        JobStateListener jobStateListener = this.f61197a;
        if (jobStateListener != null) {
            jobStateListener.onJobFinished(this);
        }
    }
}
