package com.mopub.common.util;

import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Timer.class */
public class Timer {

    /* renamed from: a */
    public long f4536a;

    /* renamed from: b */
    public long f4537b;

    /* renamed from: c */
    public EnumC1066a f4538c = EnumC1066a.STOPPED;

    /* renamed from: com.mopub.common.util.Timer$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Timer$a.class */
    public enum EnumC1066a {
        STARTED,
        STOPPED
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public long getTime() {
        return TimeUnit.MILLISECONDS.convert((this.f4538c == EnumC1066a.STARTED ? System.nanoTime() : this.f4536a) - this.f4537b, TimeUnit.NANOSECONDS);
    }

    public void start() {
        this.f4537b = System.nanoTime();
        this.f4538c = EnumC1066a.STARTED;
    }

    public void stop() {
        if (this.f4538c == EnumC1066a.STARTED) {
            this.f4538c = EnumC1066a.STOPPED;
            this.f4536a = System.nanoTime();
            return;
        }
        throw new IllegalStateException("EventTimer was not started.");
    }
}
