package com.bytedance.sdk.a.a;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/t.class */
public class t {

    /* renamed from: c  reason: collision with root package name */
    public static final t f7821c = new t() { // from class: com.bytedance.sdk.a.a.t.1
        @Override // com.bytedance.sdk.a.a.t
        public final t a(long j) {
            return this;
        }

        @Override // com.bytedance.sdk.a.a.t
        public final t a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // com.bytedance.sdk.a.a.t
        public final void g() throws IOException {
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private boolean f7822a;

    /* renamed from: b  reason: collision with root package name */
    private long f7823b;

    /* renamed from: d  reason: collision with root package name */
    private long f7824d;

    public t a(long j) {
        this.f7822a = true;
        this.f7823b = j;
        return this;
    }

    public t a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: ".concat(String.valueOf(j)));
        } else if (timeUnit != null) {
            this.f7824d = timeUnit.toNanos(j);
            return this;
        } else {
            throw new IllegalArgumentException("unit == null");
        }
    }

    public long b_() {
        return this.f7824d;
    }

    public boolean c() {
        return this.f7822a;
    }

    public long c_() {
        if (this.f7822a) {
            return this.f7823b;
        }
        throw new IllegalStateException("No deadline");
    }

    public t e() {
        this.f7824d = 0L;
        return this;
    }

    public t f() {
        this.f7822a = false;
        return this;
    }

    public void g() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        } else if (this.f7822a && this.f7823b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
