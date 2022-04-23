package com.mopub.common.util;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Timer.class */
public class Timer {

    /* renamed from: a */
    public long f8353a;

    /* renamed from: b */
    public long f8354b;

    /* renamed from: c */
    public EnumC3813a f8355c = EnumC3813a.STOPPED;

    /* renamed from: com.mopub.common.util.Timer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Timer$a.class */
    public enum EnumC3813a {
        STARTED,
        STOPPED
    }

    public long getTime() {
        return TimeUnit.MILLISECONDS.convert((this.f8355c == EnumC3813a.STARTED ? System.nanoTime() : this.f8353a) - this.f8354b, TimeUnit.NANOSECONDS);
    }

    public void start() {
        this.f8354b = System.nanoTime();
        this.f8355c = EnumC3813a.STARTED;
    }

    public void stop() {
        if (this.f8355c == EnumC3813a.STARTED) {
            this.f8355c = EnumC3813a.STOPPED;
            this.f8353a = System.nanoTime();
            return;
        }
        throw new IllegalStateException("EventTimer was not started.");
    }
}
