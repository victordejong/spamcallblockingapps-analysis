package com.squareup.okhttp.internal.framed;

import java.util.concurrent.CountDownLatch;
/* renamed from: com.squareup.okhttp.internal.framed.k */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/k.class */
public final class C2904k {

    /* renamed from: a */
    private final CountDownLatch f12284a = new CountDownLatch(1);

    /* renamed from: b */
    private long f12285b = -1;

    /* renamed from: c */
    private long f12286c = -1;

    C2904k() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1077a() {
        if (this.f12286c == -1) {
            long j = this.f12285b;
            if (j != -1) {
                this.f12286c = j - 1;
                this.f12284a.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1076b() {
        if (this.f12286c != -1 || this.f12285b == -1) {
            throw new IllegalStateException();
        }
        this.f12286c = System.nanoTime();
        this.f12284a.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m1075c() {
        if (this.f12285b == -1) {
            this.f12285b = System.nanoTime();
            return;
        }
        throw new IllegalStateException();
    }
}
