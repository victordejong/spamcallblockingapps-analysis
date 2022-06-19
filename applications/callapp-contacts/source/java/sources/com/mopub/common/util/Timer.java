package com.mopub.common.util;

import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Timer.class */
public class Timer {

    /* renamed from: a */
    private long f59026a;

    /* renamed from: b */
    private long f59027b;

    /* renamed from: c */
    private int f59028c = EnumC16750a.STOPPED$28ed30e0;

    /* renamed from: com.mopub.common.util.Timer$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Timer$a.class */
    static final class EnumC16750a extends Enum<EnumC16750a> {
        public static final int STARTED$28ed30e0 = 1;
        public static final int STOPPED$28ed30e0 = 2;

        /* renamed from: a */
        private static final /* synthetic */ int[] f59029a = {1, 2};

        private EnumC16750a(String str, int i) {
            super(str, i);
        }

        public static int[] values$7baace9a() {
            return (int[]) f59029a.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public long getTime() {
        return TimeUnit.MILLISECONDS.convert((this.f59028c == EnumC16750a.STARTED$28ed30e0 ? System.nanoTime() : this.f59026a) - this.f59027b, TimeUnit.NANOSECONDS);
    }

    public void start() {
        this.f59027b = System.nanoTime();
        this.f59028c = EnumC16750a.STARTED$28ed30e0;
    }

    public void stop() {
        if (this.f59028c == EnumC16750a.STARTED$28ed30e0) {
            this.f59028c = EnumC16750a.STOPPED$28ed30e0;
            this.f59026a = System.nanoTime();
            return;
        }
        throw new IllegalStateException("EventTimer was not started.");
    }
}
