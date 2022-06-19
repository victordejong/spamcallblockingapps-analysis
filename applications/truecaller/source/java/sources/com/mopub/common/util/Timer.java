package com.mopub.common.util;

import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Timer.class */
public class Timer {

    /* renamed from: a */
    public long f8723a;

    /* renamed from: b */
    public long f8724b;

    /* renamed from: c */
    public EnumC2661a f8725c = EnumC2661a.STOPPED;

    /* renamed from: com.mopub.common.util.Timer$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Timer$a.class */
    public enum EnumC2661a {
        STARTED,
        STOPPED
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public long getTime() {
        return TimeUnit.MILLISECONDS.convert((this.f8725c == EnumC2661a.STARTED ? System.nanoTime() : this.f8723a) - this.f8724b, TimeUnit.NANOSECONDS);
    }

    public void start() {
        this.f8724b = System.nanoTime();
        this.f8725c = EnumC2661a.STARTED;
    }

    public void stop() {
        if (this.f8725c == EnumC2661a.STARTED) {
            this.f8725c = EnumC2661a.STOPPED;
            this.f8723a = System.nanoTime();
            return;
        }
        throw new IllegalStateException("EventTimer was not started.");
    }
}
