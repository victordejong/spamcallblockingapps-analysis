package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/Job.class */
public abstract class Job implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    JobStateListener f35304a;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/Job$JobStateListener.class */
    interface JobStateListener {
        void onJobFinished(Job job);
    }

    public abstract long getDelay();

    public abstract int getId();

    public final void jobFinished() {
        JobStateListener jobStateListener = this.f35304a;
        if (jobStateListener != null) {
            jobStateListener.onJobFinished(this);
        }
    }
}
