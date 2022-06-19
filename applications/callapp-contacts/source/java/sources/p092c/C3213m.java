package p092c;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0001H\u0016J\b\u0010\u0007\u001a\u00020\u0001H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0001J\b\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u00020\u00018\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0002\u0010\u0004\"\u0004\b\u0005\u0010\u0003¨\u0006\u0012"}, m4298d2 = {"Lokio/ForwardingTimeout;", "Lokio/Timeout;", "delegate", "(Lokio/Timeout;)V", "()Lokio/Timeout;", "setDelegate", "clearDeadline", "clearTimeout", "deadlineNanoTime", "", "hasDeadline", "", "throwIfReached", "", "timeout", "unit", "Ljava/util/concurrent/TimeUnit;", "timeoutNanos", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.m */
/* loaded from: classes-dex2jar.jar:c/m.class */
public final class C3213m extends C3191ae {

    /* renamed from: a */
    public C3191ae f11590a;

    public C3213m(C3191ae delegate) {
        C18524p.m3840d(delegate, "delegate");
        this.f11590a = delegate;
    }

    @Override // p092c.C3191ae
    public final C3191ae clearDeadline() {
        return this.f11590a.clearDeadline();
    }

    @Override // p092c.C3191ae
    public final C3191ae clearTimeout() {
        return this.f11590a.clearTimeout();
    }

    @Override // p092c.C3191ae
    public final long deadlineNanoTime() {
        return this.f11590a.deadlineNanoTime();
    }

    @Override // p092c.C3191ae
    public final C3191ae deadlineNanoTime(long j) {
        return this.f11590a.deadlineNanoTime(j);
    }

    @Override // p092c.C3191ae
    public final boolean hasDeadline() {
        return this.f11590a.hasDeadline();
    }

    @Override // p092c.C3191ae
    public final void throwIfReached() throws IOException {
        this.f11590a.throwIfReached();
    }

    @Override // p092c.C3191ae
    public final C3191ae timeout(long j, TimeUnit unit) {
        C18524p.m3840d(unit, "unit");
        return this.f11590a.timeout(j, unit);
    }

    @Override // p092c.C3191ae
    public final long timeoutNanos() {
        return this.f11590a.timeoutNanos();
    }
}
