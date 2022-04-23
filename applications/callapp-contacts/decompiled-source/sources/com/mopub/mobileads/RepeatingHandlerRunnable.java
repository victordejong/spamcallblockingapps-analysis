package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RepeatingHandlerRunnable.class */
public abstract class RepeatingHandlerRunnable implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    protected final Handler f34229a;

    /* renamed from: b  reason: collision with root package name */
    protected volatile long f34230b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f34231c;

    public RepeatingHandlerRunnable(Handler handler) {
        Preconditions.checkNotNull(handler);
        this.f34229a = handler;
    }

    public abstract void doWork();

    @Deprecated
    public boolean isRunning() {
        return this.f34231c;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f34231c) {
            doWork();
            this.f34229a.postDelayed(this, this.f34230b);
        }
    }

    public void startRepeating(long j) {
        Preconditions.checkArgument(j > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(j));
        this.f34230b = j;
        if (!this.f34231c) {
            this.f34231c = true;
            this.f34229a.post(this);
        }
    }

    public void stop() {
        this.f34231c = false;
    }
}
