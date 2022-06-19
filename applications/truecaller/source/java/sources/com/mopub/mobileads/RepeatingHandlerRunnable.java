package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RepeatingHandlerRunnable.class */
public abstract class RepeatingHandlerRunnable implements Runnable {

    /* renamed from: a */
    public final Handler f8839a;

    /* renamed from: b */
    public volatile boolean f8840b;

    /* renamed from: c */
    public volatile long f8841c;

    public RepeatingHandlerRunnable(Handler handler) {
        Preconditions.checkNotNull(handler);
        this.f8839a = handler;
    }

    public abstract void doWork();

    @Deprecated
    @VisibleForTesting
    public boolean isRunning() {
        return this.f8840b;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8840b) {
            doWork();
            this.f8839a.postDelayed(this, this.f8841c);
        }
    }

    public void startRepeating(long j) {
        Preconditions.checkArgument(j > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(j));
        this.f8841c = j;
        if (!this.f8840b) {
            this.f8840b = true;
            this.f8839a.post(this);
        }
    }

    public void stop() {
        this.f8840b = false;
    }
}
