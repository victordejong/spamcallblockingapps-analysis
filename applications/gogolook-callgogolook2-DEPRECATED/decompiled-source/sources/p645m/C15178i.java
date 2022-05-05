package p645m;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* renamed from: m.i */
/* loaded from: classes3-dex2jar.jar:m/i.class */
public class C15178i extends C15194t {

    /* renamed from: a */
    public C15194t f33168a;

    public C15178i(C15194t tVar) {
        if (tVar != null) {
            this.f33168a = tVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    /* renamed from: a */
    public final C15178i m334a(C15194t tVar) {
        if (tVar != null) {
            this.f33168a = tVar;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    /* renamed from: a */
    public final C15194t m335a() {
        return this.f33168a;
    }

    @Override // p645m.C15194t
    public C15194t clearDeadline() {
        return this.f33168a.clearDeadline();
    }

    @Override // p645m.C15194t
    public C15194t clearTimeout() {
        return this.f33168a.clearTimeout();
    }

    @Override // p645m.C15194t
    public long deadlineNanoTime() {
        return this.f33168a.deadlineNanoTime();
    }

    @Override // p645m.C15194t
    public C15194t deadlineNanoTime(long j) {
        return this.f33168a.deadlineNanoTime(j);
    }

    @Override // p645m.C15194t
    public boolean hasDeadline() {
        return this.f33168a.hasDeadline();
    }

    @Override // p645m.C15194t
    public void throwIfReached() throws IOException {
        this.f33168a.throwIfReached();
    }

    @Override // p645m.C15194t
    public C15194t timeout(long j, TimeUnit timeUnit) {
        return this.f33168a.timeout(j, timeUnit);
    }
}
