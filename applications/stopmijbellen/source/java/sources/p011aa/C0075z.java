package p011aa;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* renamed from: aa.z */
/* loaded from: classes2-dex2jar.jar:aa/z.class */
public class C0075z {

    /* renamed from: d */
    public static final C0075z f162d = new C0076a();

    /* renamed from: a */
    public boolean f163a;

    /* renamed from: b */
    public long f164b;

    /* renamed from: c */
    public long f165c;

    /* renamed from: aa.z$a */
    /* loaded from: classes2-dex2jar.jar:aa/z$a.class */
    public final class C0076a extends C0075z {
        @Override // p011aa.C0075z
        /* renamed from: d */
        public C0075z mo8773d(long j) {
            return this;
        }

        @Override // p011aa.C0075z
        /* renamed from: f */
        public void mo8772f() throws IOException {
        }

        @Override // p011aa.C0075z
        /* renamed from: g */
        public C0075z mo8771g(long j, TimeUnit timeUnit) {
            return this;
        }
    }

    /* renamed from: a */
    public C0075z mo8777a() {
        this.f163a = false;
        return this;
    }

    /* renamed from: b */
    public C0075z mo8776b() {
        this.f165c = 0L;
        return this;
    }

    /* renamed from: c */
    public long mo8775c() {
        if (this.f163a) {
            return this.f164b;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: d */
    public C0075z mo8773d(long j) {
        this.f163a = true;
        this.f164b = j;
        return this;
    }

    /* renamed from: e */
    public boolean mo8774e() {
        return this.f163a;
    }

    /* renamed from: f */
    public void mo8772f() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        } else if (this.f163a && this.f164b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    /* renamed from: g */
    public C0075z mo8771g(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f165c = timeUnit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j);
    }
}
