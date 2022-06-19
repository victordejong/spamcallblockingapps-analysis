package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RepeatingHandlerRunnable.class */
public abstract class RepeatingHandlerRunnable implements Runnable {

    /* renamed from: a */
    protected final Handler f59435a;

    /* renamed from: b */
    protected volatile long f59436b;

    /* renamed from: c */
    private volatile boolean f59437c;

    public RepeatingHandlerRunnable(Handler handler) {
        Preconditions.checkNotNull(handler);
        this.f59435a = handler;
    }

    public abstract void doWork();

    @Deprecated
    public boolean isRunning() {
        return this.f59437c;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f59437c) {
            doWork();
            this.f59435a.postDelayed(this, this.f59436b);
        }
    }

    public void startRepeating(long j) {
        Preconditions.checkArgument(j > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(j));
        this.f59436b = j;
        if (!this.f59437c) {
            this.f59437c = true;
            this.f59435a.post(this);
        }
    }

    public void stop() {
        this.f59437c = false;
    }
}
