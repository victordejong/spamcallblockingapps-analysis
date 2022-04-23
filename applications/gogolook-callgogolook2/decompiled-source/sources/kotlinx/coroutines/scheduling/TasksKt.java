package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.internal.SystemPropsKt__SystemProps_commonKt;
import p626l.p628b0.C14896i;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\"\u0010\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0002\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��\"\u0010\u0010\u0005\u001a\u00020\u00068��X\u0081\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0007\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"\u000e\u0010\b\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\t\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u0010\u0010\n\u001a\u00020\u00068��X\u0081\u0004¢\u0006\u0002\n��\"\u0012\u0010\u000b\u001a\u00020\f8��@��X\u0081\u000e¢\u0006\u0002\n��\"\u0019\u0010\r\u001a\u00020\u000e*\u00020\u000f8À\u0002X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0010¨\u0006\u0011"}, m815d2 = {"BLOCKING_DEFAULT_PARALLELISM", "", "CORE_POOL_SIZE", "DEFAULT_SCHEDULER_NAME", "", "IDLE_WORKER_KEEP_ALIVE_NS", "", "MAX_POOL_SIZE", "TASK_NON_BLOCKING", "TASK_PROBABLY_BLOCKING", "WORK_STEALING_TIME_RESOLUTION_NS", "schedulerTimeSource", "Lkotlinx/coroutines/scheduling/TimeSource;", "isBlocking", "", "Lkotlinx/coroutines/scheduling/Task;", "(Lkotlinx/coroutines/scheduling/Task;)Z", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/scheduling/TasksKt.class */
public final class TasksKt {
    public static final int BLOCKING_DEFAULT_PARALLELISM;
    public static final int CORE_POOL_SIZE;
    public static final String DEFAULT_SCHEDULER_NAME = "DefaultDispatcher";
    public static final long IDLE_WORKER_KEEP_ALIVE_NS;
    public static final int MAX_POOL_SIZE;
    public static final int TASK_NON_BLOCKING = 0;
    public static final int TASK_PROBABLY_BLOCKING = 1;
    public static final long WORK_STEALING_TIME_RESOLUTION_NS;
    public static TimeSource schedulerTimeSource = NanoTimeSource.INSTANCE;

    static {
        long systemProp$default;
        int systemProp$default2;
        int systemProp$default3;
        int systemProp$default4;
        long systemProp$default5;
        systemProp$default = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 0L, 0L, 12, (Object) null);
        WORK_STEALING_TIME_RESOLUTION_NS = systemProp$default;
        systemProp$default2 = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, (Object) null);
        BLOCKING_DEFAULT_PARALLELISM = systemProp$default2;
        systemProp$default3 = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.scheduler.core.pool.size", C14896i.m796a(SystemPropsKt.getAVAILABLE_PROCESSORS(), 2), 1, 0, 8, (Object) null);
        CORE_POOL_SIZE = systemProp$default3;
        systemProp$default4 = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.scheduler.max.pool.size", C14896i.m795a(SystemPropsKt.getAVAILABLE_PROCESSORS() * 128, CORE_POOL_SIZE, CoroutineScheduler.MAX_SUPPORTED_POOL_SIZE), 0, (int) CoroutineScheduler.MAX_SUPPORTED_POOL_SIZE, 4, (Object) null);
        MAX_POOL_SIZE = systemProp$default4;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        systemProp$default5 = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, (Object) null);
        IDLE_WORKER_KEEP_ALIVE_NS = timeUnit.toNanos(systemProp$default5);
    }

    public static final boolean isBlocking(Task task) {
        boolean z = true;
        if (task.taskContext.getTaskMode() != 1) {
            z = false;
        }
        return z;
    }
}
