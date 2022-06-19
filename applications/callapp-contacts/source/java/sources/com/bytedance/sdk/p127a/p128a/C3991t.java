package com.bytedance.sdk.p127a.p128a;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.a.t */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/t.class */
public class C3991t {

    /* renamed from: c */
    public static final C3991t f14462c = new C3991t() { // from class: com.bytedance.sdk.a.a.t.1
        @Override // com.bytedance.sdk.p127a.p128a.C3991t
        /* renamed from: a */
        public final C3991t mo37018a(long j) {
            return this;
        }

        @Override // com.bytedance.sdk.p127a.p128a.C3991t
        /* renamed from: a */
        public final C3991t mo37017a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // com.bytedance.sdk.p127a.p128a.C3991t
        /* renamed from: g */
        public final void mo37016g() throws IOException {
        }
    };

    /* renamed from: a */
    private boolean f14463a;

    /* renamed from: b */
    private long f14464b;

    /* renamed from: d */
    private long f14465d;

    /* renamed from: a */
    public C3991t mo37018a(long j) {
        this.f14463a = true;
        this.f14464b = j;
        return this;
    }

    /* renamed from: a */
    public C3991t mo37017a(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f14465d = timeUnit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: ".concat(String.valueOf(j)));
    }

    /* renamed from: b_ */
    public long mo37023b_() {
        return this.f14465d;
    }

    /* renamed from: c */
    public boolean mo37022c() {
        return this.f14463a;
    }

    /* renamed from: c_ */
    public long mo37021c_() {
        if (this.f14463a) {
            return this.f14464b;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: e */
    public C3991t mo37020e() {
        this.f14465d = 0L;
        return this;
    }

    /* renamed from: f */
    public C3991t mo37019f() {
        this.f14463a = false;
        return this;
    }

    /* renamed from: g */
    public void mo37016g() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        } else if (this.f14463a && this.f14464b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
