package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RepeatingHandlerRunnable.class */
public abstract class RepeatingHandlerRunnable implements Runnable {

    /* renamed from: a */
    public final Handler f4777a;

    /* renamed from: b */
    public volatile boolean f4778b;

    /* renamed from: c */
    public volatile long f4779c;

    public RepeatingHandlerRunnable(Handler handler) {
        Preconditions.checkNotNull(handler);
        this.f4777a = handler;
    }

    public abstract void doWork();

    @Deprecated
    @VisibleForTesting
    public boolean isRunning() {
        return this.f4778b;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4778b) {
            doWork();
            this.f4777a.postDelayed(this, this.f4779c);
        }
    }

    public void startRepeating(long j) {
        Preconditions.checkArgument(j > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(j));
        this.f4779c = j;
        if (!this.f4778b) {
            this.f4778b = true;
            this.f4777a.post(this);
        }
    }

    public void stop() {
        this.f4778b = false;
    }
}
