package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import java.util.concurrent.CountDownLatch;
/* renamed from: com.bytedance.sdk.a.b.a.e.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/l.class */
final class C4075l {

    /* renamed from: a */
    private final CountDownLatch f14822a = new CountDownLatch(1);

    /* renamed from: b */
    private long f14823b = -1;

    /* renamed from: c */
    private long f14824c = -1;

    C4075l() {
    }

    /* renamed from: a */
    public final void m36689a() {
        if (this.f14823b == -1) {
            this.f14823b = System.nanoTime();
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public final void m36688b() {
        if (this.f14824c != -1 || this.f14823b == -1) {
            throw new IllegalStateException();
        }
        this.f14824c = System.nanoTime();
        this.f14822a.countDown();
    }

    /* renamed from: c */
    public final void m36687c() {
        if (this.f14824c == -1) {
            long j = this.f14823b;
            if (j != -1) {
                this.f14824c = j - 1;
                this.f14822a.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }
}
