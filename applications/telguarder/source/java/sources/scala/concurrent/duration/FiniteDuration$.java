package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/FiniteDuration$.class */
public final class FiniteDuration$ implements Serializable {
    public static final FiniteDuration$ MODULE$ = null;
    private final long max_d;
    private final long max_h;
    private final long max_min;
    private final long max_ms;
    private final long max_ns;
    private final long max_s;

    /* renamed from: max_µs */
    private final long f1657max_s;

    static {
        new FiniteDuration$();
    }

    private FiniteDuration$() {
        MODULE$ = this;
    }

    private final long max_d() {
        return 106751L;
    }

    private final long max_h() {
        return 2562047L;
    }

    private final long max_min() {
        return 153722867L;
    }

    private final long max_ms() {
        return 9223372036854L;
    }

    private final long max_ns() {
        return LongCompanionObject.MAX_VALUE;
    }

    private final long max_s() {
        return 9223372036L;
    }

    /* renamed from: max_µs */
    private final long m6311max_s() {
        return 9223372036854775L;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public FiniteDuration apply(long j, String str) {
        return new FiniteDuration(j, Duration$.MODULE$.timeUnit().apply(str));
    }

    public FiniteDuration apply(long j, TimeUnit timeUnit) {
        return new FiniteDuration(j, timeUnit);
    }
}
