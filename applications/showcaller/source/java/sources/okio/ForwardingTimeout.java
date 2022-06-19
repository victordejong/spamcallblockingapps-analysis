package okio;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:okio/ForwardingTimeout.class */
public class ForwardingTimeout extends Timeout {
    private Timeout delegate;

    public ForwardingTimeout(Timeout timeout) {
        if (timeout != null) {
            this.delegate = timeout;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // okio.Timeout
    public Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    @Override // okio.Timeout
    public Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    @Override // okio.Timeout
    public long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    @Override // okio.Timeout
    public Timeout deadlineNanoTime(long j) {
        return this.delegate.deadlineNanoTime(j);
    }

    public final Timeout delegate() {
        return this.delegate;
    }

    @Override // okio.Timeout
    public boolean hasDeadline() {
        return this.delegate.hasDeadline();
    }

    public final ForwardingTimeout setDelegate(Timeout timeout) {
        if (timeout != null) {
            this.delegate = timeout;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // okio.Timeout
    public void throwIfReached() {
        this.delegate.throwIfReached();
    }

    @Override // okio.Timeout
    public Timeout timeout(long j, TimeUnit timeUnit) {
        return this.delegate.timeout(j, timeUnit);
    }

    @Override // okio.Timeout
    public long timeoutNanos() {
        return this.delegate.timeoutNanos();
    }
}
