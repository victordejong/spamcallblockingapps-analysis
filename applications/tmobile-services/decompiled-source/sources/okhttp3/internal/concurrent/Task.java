package okhttp3.internal.concurrent;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\b&\u0018��B\u0019\u0012\u0006\u0010\u0012\u001a\u00020\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H��¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0019\u0010\u000e\u001a\u00020\r8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0012\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\fR\"\u0010\u0015\u001a\u00020\u00078��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\t\"\u0004\b\u0018\u0010\u0019R$\u0010\u0002\u001a\u0004\u0018\u00010\u00018��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u0005¨\u0006 "}, d2 = {"Lokhttp3/internal/concurrent/Task;", "Lokhttp3/internal/concurrent/TaskQueue;", "queue", "", "initQueue$okhttp", "(Lokhttp3/internal/concurrent/TaskQueue;)V", "initQueue", "", "runOnce", "()J", "", "toString", "()Ljava/lang/String;", "", "cancelable", "Z", "getCancelable", "()Z", "name", "Ljava/lang/String;", "getName", "nextExecuteNanoTime", "J", "getNextExecuteNanoTime$okhttp", "setNextExecuteNanoTime$okhttp", "(J)V", "Lokhttp3/internal/concurrent/TaskQueue;", "getQueue$okhttp", "()Lokhttp3/internal/concurrent/TaskQueue;", "setQueue$okhttp", "<init>", "(Ljava/lang/String;Z)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/concurrent/Task.class */
public abstract class Task {
    private final boolean cancelable;
    @NotNull
    private final String name;
    private long nextExecuteNanoTime;
    @Nullable
    private TaskQueue queue;

    public Task(@NotNull String name, boolean z) {
        Intrinsics.m1830e(name, "name");
        this.name = name;
        this.cancelable = z;
        this.nextExecuteNanoTime = -1L;
    }

    public /* synthetic */ Task(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? true : z);
    }

    public final boolean getCancelable() {
        return this.cancelable;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final long getNextExecuteNanoTime$okhttp() {
        return this.nextExecuteNanoTime;
    }

    @Nullable
    public final TaskQueue getQueue$okhttp() {
        return this.queue;
    }

    public final void initQueue$okhttp(@NotNull TaskQueue queue) {
        Intrinsics.m1830e(queue, "queue");
        TaskQueue taskQueue = this.queue;
        if (taskQueue != queue) {
            if (taskQueue == null) {
                this.queue = queue;
                return;
            }
            throw new IllegalStateException("task is in multiple queues".toString());
        }
    }

    public abstract long runOnce();

    public final void setNextExecuteNanoTime$okhttp(long j) {
        this.nextExecuteNanoTime = j;
    }

    public final void setQueue$okhttp(@Nullable TaskQueue taskQueue) {
        this.queue = taskQueue;
    }

    @NotNull
    public String toString() {
        return this.name;
    }
}
