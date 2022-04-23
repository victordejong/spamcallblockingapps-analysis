package c;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0001H\u0016J\b\u0010\u0007\u001a\u00020\u0001H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0001J\b\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u00020\u00018\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0002\u0010\u0004\"\u0004\b\u0005\u0010\u0003¨\u0006\u0012"}, d2 = {"Lokio/ForwardingTimeout;", "Lokio/Timeout;", "delegate", "(Lokio/Timeout;)V", "()Lokio/Timeout;", "setDelegate", "clearDeadline", "clearTimeout", "deadlineNanoTime", "", "hasDeadline", "", "throwIfReached", "", "timeout", "unit", "Ljava/util/concurrent/TimeUnit;", "timeoutNanos", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/m.class */
public final class m extends ae {

    /* renamed from: a  reason: collision with root package name */
    public ae f6303a;

    public m(ae delegate) {
        p.d(delegate, "delegate");
        this.f6303a = delegate;
    }

    @Override // c.ae
    public final ae clearDeadline() {
        return this.f6303a.clearDeadline();
    }

    @Override // c.ae
    public final ae clearTimeout() {
        return this.f6303a.clearTimeout();
    }

    @Override // c.ae
    public final long deadlineNanoTime() {
        return this.f6303a.deadlineNanoTime();
    }

    @Override // c.ae
    public final ae deadlineNanoTime(long j) {
        return this.f6303a.deadlineNanoTime(j);
    }

    @Override // c.ae
    public final boolean hasDeadline() {
        return this.f6303a.hasDeadline();
    }

    @Override // c.ae
    public final void throwIfReached() throws IOException {
        this.f6303a.throwIfReached();
    }

    @Override // c.ae
    public final ae timeout(long j, TimeUnit unit) {
        p.d(unit, "unit");
        return this.f6303a.timeout(j, unit);
    }

    @Override // c.ae
    public final long timeoutNanos() {
        return this.f6303a.timeoutNanos();
    }
}
