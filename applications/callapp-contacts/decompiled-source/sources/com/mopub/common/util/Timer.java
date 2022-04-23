package com.mopub.common.util;

import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Timer.class */
public class Timer {

    /* renamed from: a  reason: collision with root package name */
    private long f34006a;

    /* renamed from: b  reason: collision with root package name */
    private long f34007b;

    /* renamed from: c  reason: collision with root package name */
    private int f34008c = a.STOPPED$28ed30e0;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Timer$a.class */
    static final class a extends Enum<a> {
        public static final int STARTED$28ed30e0 = 1;
        public static final int STOPPED$28ed30e0 = 2;

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ int[] f34009a = {1, 2};

        private a(String str, int i) {
        }

        public static int[] values$7baace9a() {
            return (int[]) f34009a.clone();
        }
    }

    public long getTime() {
        return TimeUnit.MILLISECONDS.convert((this.f34008c == a.STARTED$28ed30e0 ? System.nanoTime() : this.f34006a) - this.f34007b, TimeUnit.NANOSECONDS);
    }

    public void start() {
        this.f34007b = System.nanoTime();
        this.f34008c = a.STARTED$28ed30e0;
    }

    public void stop() {
        if (this.f34008c == a.STARTED$28ed30e0) {
            this.f34008c = a.STOPPED$28ed30e0;
            this.f34006a = System.nanoTime();
            return;
        }
        throw new IllegalStateException("EventTimer was not started.");
    }
}
