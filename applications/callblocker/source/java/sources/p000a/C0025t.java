package p000a;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* renamed from: a.t */
/* loaded from: classes-dex2jar.jar:a/t.class */
public class C0025t {

    /* renamed from: c */
    public static final C0025t f55c = new C0025t() { // from class: a.t.1
        @Override // p000a.C0025t
        /* renamed from: a */
        public C0025t mo22454a(long j) {
            return this;
        }

        @Override // p000a.C0025t
        /* renamed from: a */
        public C0025t mo22453a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // p000a.C0025t
        /* renamed from: g */
        public void mo22452g() {
        }
    };

    /* renamed from: a */
    private boolean f56a;

    /* renamed from: b */
    private long f57b;

    /* renamed from: d */
    private long f58d;

    /* renamed from: H_ */
    public long mo22459H_() {
        return this.f58d;
    }

    /* renamed from: I_ */
    public boolean mo22458I_() {
        return this.f56a;
    }

    /* renamed from: J_ */
    public C0025t mo22457J_() {
        this.f58d = 0L;
        return this;
    }

    /* renamed from: a */
    public C0025t mo22454a(long j) {
        this.f56a = true;
        this.f57b = j;
        return this;
    }

    /* renamed from: a */
    public C0025t mo22453a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f58d = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: d */
    public long mo22456d() {
        if (!this.f56a) {
            throw new IllegalStateException("No deadline");
        }
        return this.f57b;
    }

    /* renamed from: f */
    public C0025t mo22455f() {
        this.f56a = false;
        return this;
    }

    /* renamed from: g */
    public void mo22452g() {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.f56a && this.f57b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
