package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018��2\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\f\u0010\rB\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00028Æ\u0002@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/scheduling/Task;", "Ljava/lang/Runnable;", "", "getMode", "()I", "mode", "", "submissionTime", "J", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "Lkotlinx/coroutines/scheduling/TaskContext;", "<init>", "()V", "(JLkotlinx/coroutines/scheduling/TaskContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/Task.class */
public abstract class Task implements Runnable {
    @JvmField

    /* renamed from: f */
    public long f24005f;
    @JvmField
    @NotNull

    /* renamed from: g */
    public TaskContext f24006g;

    public Task() {
        this(0L, NonBlockingContext.f24004g);
    }

    public Task(long j, @NotNull TaskContext taskContext) {
        this.f24005f = j;
        this.f24006g = taskContext;
    }
}
