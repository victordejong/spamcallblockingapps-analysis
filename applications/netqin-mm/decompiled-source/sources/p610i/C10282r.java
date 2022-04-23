package p610i;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* renamed from: i.r */
/* loaded from: classes2-dex2jar.jar:i/r.class */
public class C10282r {

    /* renamed from: d */
    public static final C10282r f37926d = new C10283a();

    /* renamed from: a */
    public boolean f37927a;

    /* renamed from: b */
    public long f37928b;

    /* renamed from: c */
    public long f37929c;

    /* renamed from: i.r$a */
    /* loaded from: classes2-dex2jar.jar:i/r$a.class */
    public final class C10283a extends C10282r {
        @Override // p610i.C10282r
        /* renamed from: a */
        public C10282r mo697a(long j) {
            return this;
        }

        @Override // p610i.C10282r
        /* renamed from: a */
        public C10282r mo696a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // p610i.C10282r
        /* renamed from: e */
        public void mo695e() throws IOException {
        }
    }

    /* renamed from: a */
    public C10282r mo702a() {
        this.f37927a = false;
        return this;
    }

    /* renamed from: a */
    public C10282r mo697a(long j) {
        this.f37927a = true;
        this.f37928b = j;
        return this;
    }

    /* renamed from: a */
    public C10282r mo696a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        } else if (timeUnit != null) {
            this.f37929c = timeUnit.toNanos(j);
            return this;
        } else {
            throw new IllegalArgumentException("unit == null");
        }
    }

    /* renamed from: b */
    public C10282r mo701b() {
        this.f37929c = 0L;
        return this;
    }

    /* renamed from: c */
    public long mo700c() {
        if (this.f37927a) {
            return this.f37928b;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: d */
    public boolean mo699d() {
        return this.f37927a;
    }

    /* renamed from: e */
    public void mo695e() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        } else if (this.f37927a && this.f37928b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    /* renamed from: f */
    public long mo698f() {
        return this.f37929c;
    }
}
