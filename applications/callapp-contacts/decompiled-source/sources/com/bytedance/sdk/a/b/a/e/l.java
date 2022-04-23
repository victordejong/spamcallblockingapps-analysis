package com.bytedance.sdk.a.b.a.e;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/l.class */
final class l {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f8017a = new CountDownLatch(1);

    /* renamed from: b  reason: collision with root package name */
    private long f8018b = -1;

    /* renamed from: c  reason: collision with root package name */
    private long f8019c = -1;

    l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f8018b == -1) {
            this.f8018b = System.nanoTime();
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.f8019c != -1 || this.f8018b == -1) {
            throw new IllegalStateException();
        }
        this.f8019c = System.nanoTime();
        this.f8017a.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (this.f8019c == -1) {
            long j = this.f8018b;
            if (j != -1) {
                this.f8019c = j - 1;
                this.f8017a.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }
}
