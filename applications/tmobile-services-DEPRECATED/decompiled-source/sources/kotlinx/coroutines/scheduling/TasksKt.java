package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.internal.SystemPropsKt__SystemProps_commonKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\"\u0016\u0010\u0001\u001a\u00020��8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0016\u0010\u0003\u001a\u00020��8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0002\"\u0016\u0010\u0005\u001a\u00020\u00048��@��X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006\"\u0016\u0010\u0007\u001a\u00020\u00048��@��X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006\"\u0016\u0010\t\u001a\u00020\b8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n\"\u0016\u0010\u000b\u001a\u00020��8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0002\"\u0016\u0010\f\u001a\u00020��8��@��X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0002\"\u0016\u0010\r\u001a\u00020��8��@��X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\u0002\"\u0016\u0010\u000e\u001a\u00020\b8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\n\"\u0016\u0010\u0010\u001a\u00020\u000f8��@��X\u0081\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011\"\u001b\u0010\u0014\u001a\u00020\u0013*\u00020\u00128À\u0002@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"", "BLOCKING_DEFAULT_PARALLELISM", "I", "CORE_POOL_SIZE", "", "DEFAULT_DISPATCHER_NAME", "Ljava/lang/String;", "DEFAULT_SCHEDULER_NAME", "", "IDLE_WORKER_KEEP_ALIVE_NS", "J", "MAX_POOL_SIZE", "TASK_NON_BLOCKING", "TASK_PROBABLY_BLOCKING", "WORK_STEALING_TIME_RESOLUTION_NS", "Lkotlinx/coroutines/scheduling/TimeSource;", "schedulerTimeSource", "Lkotlinx/coroutines/scheduling/TimeSource;", "Lkotlinx/coroutines/scheduling/Task;", "", "isBlocking", "(Lkotlinx/coroutines/scheduling/Task;)Z", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/TasksKt.class */
public final class TasksKt {
    @JvmField

    /* renamed from: a */
    public static final long f24008a;
    @JvmField

    /* renamed from: b */
    public static final int f24009b;
    @JvmField

    /* renamed from: c */
    public static final int f24010c;
    @JvmField

    /* renamed from: d */
    public static final long f24011d;
    @JvmField
    @NotNull

    /* renamed from: e */
    public static TimeSource f24012e = NanoTimeSource.f24002a;

    static {
        long e;
        int b;
        int d;
        int f;
        int d2;
        long e2;
        e = SystemPropsKt__SystemProps_commonKt.m430e("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 0L, 0L, 12, null);
        f24008a = e;
        SystemPropsKt__SystemProps_commonKt.m431d("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, null);
        b = RangesKt___RangesKt.m1713b(SystemPropsKt.m443a(), 2);
        d = SystemPropsKt__SystemProps_commonKt.m431d("kotlinx.coroutines.scheduler.core.pool.size", b, 1, 0, 8, null);
        f24009b = d;
        f = RangesKt___RangesKt.m1709f(SystemPropsKt.m443a() * 128, f24009b, 2097150);
        d2 = SystemPropsKt__SystemProps_commonKt.m431d("kotlinx.coroutines.scheduler.max.pool.size", f, 0, 2097150, 4, null);
        f24010c = d2;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        e2 = SystemPropsKt__SystemProps_commonKt.m430e("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, null);
        f24011d = timeUnit.toNanos(e2);
    }
}
