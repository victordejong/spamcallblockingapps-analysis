package p092c;

import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018�� \u00172\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u00020��H\u0016J\b\u0010\t\u001a\u00020��H\u0016J\u0016\u0010\n\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0003\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020��2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012H\u0086\bø\u0001��J\b\u0010\u0013\u001a\u00020\u000fH\u0016J\u0018\u0010\u0014\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, m4298d2 = {"Lokio/Timeout;", "", "()V", "deadlineNanoTime", "", "hasDeadline", "", "timeoutNanos", "clearDeadline", "clearTimeout", "deadline", VastIconXmlManager.DURATION, "unit", "Ljava/util/concurrent/TimeUnit;", "intersectWith", "", "other", "block", "Lkotlin/Function0;", "throwIfReached", "timeout", "waitUntilNotified", "monitor", "Companion", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.ae */
/* loaded from: classes-dex2jar.jar:c/ae.class */
public class C3191ae {
    public static final C3192a Companion = new C3192a(null);
    public static final C3191ae NONE = new C3193b();
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lokio/Timeout$Companion;", "", "()V", "NONE", "Lokio/Timeout;", "minTimeout", "", "aNanos", "bNanos", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.ae$a */
    /* loaded from: classes-dex2jar.jar:c/ae$a.class */
    public static final class C3192a {
        private C3192a() {
        }

        public /* synthetic */ C3192a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static long m39231a(long j, long j2) {
            if (j == 0 || (j2 != 0 && j >= j2)) {
                return j2;
            }
            return j;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m4298d2 = {"okio/Timeout$Companion$NONE$1", "Lokio/Timeout;", "deadlineNanoTime", "", "throwIfReached", "", "timeout", "unit", "Ljava/util/concurrent/TimeUnit;", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.ae$b */
    /* loaded from: classes-dex2jar.jar:c/ae$b.class */
    public static final class C3193b extends C3191ae {
        C3193b() {
        }

        @Override // p092c.C3191ae
        public final C3191ae deadlineNanoTime(long j) {
            return this;
        }

        @Override // p092c.C3191ae
        public final void throwIfReached() {
        }

        @Override // p092c.C3191ae
        public final C3191ae timeout(long j, TimeUnit unit) {
            C18524p.m3840d(unit, "unit");
            return this;
        }
    }

    public C3191ae clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public C3191ae clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final C3191ae deadline(long j, TimeUnit unit) {
        C18524p.m3840d(unit, "unit");
        if (j > 0) {
            return deadlineNanoTime(System.nanoTime() + unit.toNanos(j));
        }
        throw new IllegalArgumentException("duration <= 0: ".concat(String.valueOf(j)).toString());
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public C3191ae deadlineNanoTime(long j) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j;
        return this;
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public final void intersectWith(C3191ae other, Function0<C20128v> block) {
        C18524p.m3840d(other, "other");
        C18524p.m3840d(block, "block");
        long timeoutNanos = timeoutNanos();
        timeout(C3192a.m39231a(other.timeoutNanos(), timeoutNanos()), TimeUnit.NANOSECONDS);
        if (!hasDeadline()) {
            if (other.hasDeadline()) {
                deadlineNanoTime(other.deadlineNanoTime());
            }
            try {
                block.invoke();
                timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (!other.hasDeadline()) {
                    return;
                }
                clearDeadline();
                return;
            } catch (Throwable th) {
                timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (other.hasDeadline()) {
                    clearDeadline();
                }
                throw th;
            }
        }
        long deadlineNanoTime = deadlineNanoTime();
        if (other.hasDeadline()) {
            deadlineNanoTime(Math.min(deadlineNanoTime(), other.deadlineNanoTime()));
        }
        try {
            block.invoke();
            timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            if (!other.hasDeadline()) {
                return;
            }
            deadlineNanoTime(deadlineNanoTime);
        } catch (Throwable th2) {
            timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            if (other.hasDeadline()) {
                deadlineNanoTime(deadlineNanoTime);
            }
            throw th2;
        }
    }

    public void throwIfReached() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        } else if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public C3191ae timeout(long j, TimeUnit unit) {
        C18524p.m3840d(unit, "unit");
        if (j >= 0) {
            this.timeoutNanos = unit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: ".concat(String.valueOf(j)).toString());
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public final void waitUntilNotified(Object monitor) throws InterruptedIOException {
        C18524p.m3840d(monitor, "monitor");
        try {
            boolean hasDeadline = hasDeadline();
            char timeoutNanos = timeoutNanos();
            char c = 0;
            if (!hasDeadline && timeoutNanos == 0) {
                monitor.wait();
                return;
            }
            long nanoTime = System.nanoTime();
            if (hasDeadline && timeoutNanos != 0) {
                timeoutNanos = Math.min((long) timeoutNanos, deadlineNanoTime() - nanoTime);
            } else if (hasDeadline) {
                timeoutNanos = deadlineNanoTime() - nanoTime;
            }
            if (timeoutNanos > 0) {
                long j = timeoutNanos / 16960;
                Long.signum(j);
                monitor.wait(j, (int) (timeoutNanos - (1000000 * j)));
                c = System.nanoTime() - nanoTime;
            }
            if (c >= timeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }
}
