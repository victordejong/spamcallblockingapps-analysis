package com.mopub.common.util;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Timer.class */
public class Timer {

    /* renamed from: a */
    public long f33959a;

    /* renamed from: b */
    public long f33960b;

    /* renamed from: c */
    public State f33961c = State.STOPPED;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Timer$State.class */
    public enum State {
        STARTED,
        STOPPED
    }

    public long getTime() {
        return TimeUnit.MILLISECONDS.convert((this.f33961c == State.STARTED ? System.nanoTime() : this.f33959a) - this.f33960b, TimeUnit.NANOSECONDS);
    }

    public void start() {
        this.f33960b = System.nanoTime();
        this.f33961c = State.STARTED;
    }

    public void stop() {
        if (this.f33961c == State.STARTED) {
            this.f33961c = State.STOPPED;
            this.f33959a = System.nanoTime();
            return;
        }
        throw new IllegalStateException("EventTimer was not started.");
    }
}
