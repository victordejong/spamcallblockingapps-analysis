package kotlinx.coroutines.b;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.f.d;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.internal.x;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\"\u0010\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0002\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��\"\u0010\u0010\u0006\u001a\u00020\u00078��X\u0081\u0004¢\u0006\u0002\n��\"\u0010\u0010\b\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u000e\u0010\t\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u0010\u0010\u000b\u001a\u00020\u00078��X\u0081\u0004¢\u0006\u0002\n��\"\u0012\u0010\f\u001a\u00020\r8��@��X\u0081\u000e¢\u0006\u0002\n��\"\u0019\u0010\u000e\u001a\u00020\u000f*\u00020\u00108À\u0002X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0011¨\u0006\u0012"}, d2 = {"BLOCKING_DEFAULT_PARALLELISM", "", "CORE_POOL_SIZE", "DEFAULT_DISPATCHER_NAME", "", "DEFAULT_SCHEDULER_NAME", "IDLE_WORKER_KEEP_ALIVE_NS", "", "MAX_POOL_SIZE", "TASK_NON_BLOCKING", "TASK_PROBABLY_BLOCKING", "WORK_STEALING_TIME_RESOLUTION_NS", "schedulerTimeSource", "Lkotlinx/coroutines/scheduling/SchedulerTimeSource;", "isBlocking", "", "Lkotlinx/coroutines/scheduling/Task;", "(Lkotlinx/coroutines/scheduling/Task;)Z", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final long f38722a;

    /* renamed from: c  reason: collision with root package name */
    public static final int f38724c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f38725d;
    public static final long e;

    /* renamed from: b  reason: collision with root package name */
    public static final int f38723b = w.a("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12);
    public static i f = g.f38718a;

    static {
        long a2;
        long a3;
        a2 = w.a("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        f38722a = a2;
        int a4 = w.a("kotlinx.coroutines.scheduler.core.pool.size", d.c(x.a(), 2), 1, 0, 8);
        f38724c = a4;
        f38725d = w.a("kotlinx.coroutines.scheduler.max.pool.size", d.a(x.a() * 128, a4, 2097150), 0, 2097150, 4);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        a3 = w.a("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE);
        e = timeUnit.toNanos(a3);
    }
}
