package p000a;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* renamed from: a.t */
/* loaded from: classes-dex2jar.jar:a/t.class */
public class C0027t {

    /* renamed from: c */
    public static final C0027t f57c = new C0027t() { // from class: a.t.1
        @Override // p000a.C0027t
        /* renamed from: a */
        public C0027t mo8030a(long j) {
            return this;
        }

        @Override // p000a.C0027t
        /* renamed from: a */
        public C0027t mo8029a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // p000a.C0027t
        /* renamed from: g */
        public void mo8028g() {
        }
    };

    /* renamed from: a */
    private boolean f58a;

    /* renamed from: b */
    private long f59b;

    /* renamed from: d */
    private long f60d;

    /* renamed from: a */
    public C0027t mo8030a(long j) {
        this.f58a = true;
        this.f59b = j;
        return this;
    }

    /* renamed from: a */
    public C0027t mo8029a(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f60d = timeUnit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j);
    }

    /* renamed from: d */
    public long mo8035d() {
        if (this.f58a) {
            return this.f59b;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: f */
    public C0027t mo8034f() {
        this.f58a = false;
        return this;
    }

    /* renamed from: g */
    public void mo8028g() {
        if (!Thread.interrupted()) {
            if (this.f58a && this.f59b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        throw new InterruptedIOException("thread interrupted");
    }

    /* renamed from: p_ */
    public long mo8033p_() {
        return this.f60d;
    }

    /* renamed from: q_ */
    public boolean mo8032q_() {
        return this.f58a;
    }

    /* renamed from: r_ */
    public C0027t mo8031r_() {
        this.f60d = 0L;
        return this;
    }
}
