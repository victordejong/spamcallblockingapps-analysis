package kotlinx.coroutines.p570b;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.p530f.C18363d;
import kotlinx.coroutines.internal.C20297w;
import kotlinx.coroutines.internal.C20298x;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\"\u0010\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0002\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��\"\u0010\u0010\u0006\u001a\u00020\u00078��X\u0081\u0004¢\u0006\u0002\n��\"\u0010\u0010\b\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u000e\u0010\t\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u0010\u0010\u000b\u001a\u00020\u00078��X\u0081\u0004¢\u0006\u0002\n��\"\u0012\u0010\f\u001a\u00020\r8��@��X\u0081\u000e¢\u0006\u0002\n��\"\u0019\u0010\u000e\u001a\u00020\u000f*\u00020\u00108À\u0002X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0011¨\u0006\u0012"}, m4298d2 = {"BLOCKING_DEFAULT_PARALLELISM", "", "CORE_POOL_SIZE", "DEFAULT_DISPATCHER_NAME", "", "DEFAULT_SCHEDULER_NAME", "IDLE_WORKER_KEEP_ALIVE_NS", "", "MAX_POOL_SIZE", "TASK_NON_BLOCKING", "TASK_PROBABLY_BLOCKING", "WORK_STEALING_TIME_RESOLUTION_NS", "schedulerTimeSource", "Lkotlinx/coroutines/scheduling/SchedulerTimeSource;", "isBlocking", "", "Lkotlinx/coroutines/scheduling/Task;", "(Lkotlinx/coroutines/scheduling/Task;)Z", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.b.m */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/m.class */
public final class C20189m {

    /* renamed from: a */
    public static final long f66626a;

    /* renamed from: c */
    public static final int f66628c;

    /* renamed from: d */
    public static final int f66629d;

    /* renamed from: e */
    public static final long f66630e;

    /* renamed from: b */
    public static final int f66627b = C20297w.m813a("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12);

    /* renamed from: f */
    public static AbstractC20185i f66631f = C20183g.f66620a;

    static {
        long m811a;
        long m811a2;
        m811a = C20297w.m811a("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        f66626a = m811a;
        int m813a = C20297w.m813a("kotlinx.coroutines.scheduler.core.pool.size", C18363d.m4051c(C20298x.m810a(), 2), 1, 0, 8);
        f66628c = m813a;
        f66629d = C20297w.m813a("kotlinx.coroutines.scheduler.max.pool.size", C18363d.m4055a(C20298x.m810a() * 128, m813a, 2097150), 0, 2097150, 4);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        m811a2 = C20297w.m811a("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE);
        f66630e = timeUnit.toNanos(m811a2);
    }
}
