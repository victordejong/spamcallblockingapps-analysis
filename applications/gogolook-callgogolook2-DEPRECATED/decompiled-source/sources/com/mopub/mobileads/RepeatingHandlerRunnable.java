package com.mopub.mobileads;

import android.os.Handler;
import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RepeatingHandlerRunnable.class */
public abstract class RepeatingHandlerRunnable implements Runnable {
    @NonNull

    /* renamed from: a */
    public final Handler f8517a;

    /* renamed from: b */
    public volatile boolean f8518b;

    /* renamed from: c */
    public volatile long f8519c;

    public RepeatingHandlerRunnable(@NonNull Handler handler) {
        Preconditions.checkNotNull(handler);
        this.f8517a = handler;
    }

    public abstract void doWork();

    @Deprecated
    @VisibleForTesting
    public boolean isRunning() {
        return this.f8518b;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8518b) {
            doWork();
            this.f8517a.postDelayed(this, this.f8519c);
        }
    }

    public void startRepeating(long j) {
        Preconditions.checkArgument(j > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(j));
        this.f8519c = j;
        if (!this.f8518b) {
            this.f8518b = true;
            this.f8517a.post(this);
        }
    }

    public void stop() {
        this.f8518b = false;
    }
}
