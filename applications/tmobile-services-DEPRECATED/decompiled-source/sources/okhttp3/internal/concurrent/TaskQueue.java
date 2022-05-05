package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018��:\u0001>B\u0019\b��\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b<\u0010=J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H��¢\u0006\u0004\b\u0005\u0010\u0006J?\u0010\u000f\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\u00042\u000e\b\u0004\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\rH\u0086\bø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J5\u0010\u0014\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\u000e\b\u0004\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0086\bø\u0001��¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0018J'\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0004H��¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001d\u001a\u00020\u0001¢\u0006\u0004\b\u001d\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR$\u0010 \u001a\u0004\u0018\u00010\u00168��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010&\u001a\u00020\u00048��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010*R\"\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00160+8��@��X\u0080\u0004¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001c\u0010\t\u001a\u00020\b8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\t\u00100\u001a\u0004\b1\u0010\u001fR\u0019\u00104\u001a\b\u0012\u0004\u0012\u00020\u0016028F@\u0006¢\u0006\u0006\u001a\u0004\b3\u0010/R\"\u0010\u001d\u001a\u00020\u00048��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010'\u001a\u0004\b5\u0010\u0006\"\u0004\b6\u0010*R\u001c\u00108\u001a\u0002078��@��X\u0080\u0004¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006?"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue;", "", "cancelAll", "()V", "", "cancelAllAndDecide$okhttp", "()Z", "cancelAllAndDecide", "", "name", "", "delayNanos", "cancelable", "Lkotlin/Function0;", "block", "execute", "(Ljava/lang/String;JZLkotlin/Function0;)V", "Ljava/util/concurrent/CountDownLatch;", "idleLatch", "()Ljava/util/concurrent/CountDownLatch;", "schedule", "(Ljava/lang/String;JLkotlin/Function0;)V", "Lokhttp3/internal/concurrent/Task;", "task", "(Lokhttp3/internal/concurrent/Task;J)V", "recurrence", "scheduleAndDecide$okhttp", "(Lokhttp3/internal/concurrent/Task;JZ)Z", "scheduleAndDecide", "shutdown", "toString", "()Ljava/lang/String;", "activeTask", "Lokhttp3/internal/concurrent/Task;", "getActiveTask$okhttp", "()Lokhttp3/internal/concurrent/Task;", "setActiveTask$okhttp", "(Lokhttp3/internal/concurrent/Task;)V", "cancelActiveTask", "Z", "getCancelActiveTask$okhttp", "setCancelActiveTask$okhttp", "(Z)V", "", "futureTasks", "Ljava/util/List;", "getFutureTasks$okhttp", "()Ljava/util/List;", "Ljava/lang/String;", "getName$okhttp", "", "getScheduledTasks", "scheduledTasks", "getShutdown$okhttp", "setShutdown$okhttp", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V", "AwaitIdleTask", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/concurrent/TaskQueue.class */
public final class TaskQueue {
    @Nullable
    private Task activeTask;
    private boolean cancelActiveTask;
    @NotNull
    private final List<Task> futureTasks = new ArrayList();
    @NotNull
    private final String name;
    private boolean shutdown;
    @NotNull
    private final TaskRunner taskRunner;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0019\u0010\u0006\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;", "Lokhttp3/internal/concurrent/Task;", "", "runOnce", "()J", "Ljava/util/concurrent/CountDownLatch;", "latch", "Ljava/util/concurrent/CountDownLatch;", "getLatch", "()Ljava/util/concurrent/CountDownLatch;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/concurrent/TaskQueue$AwaitIdleTask.class */
    private static final class AwaitIdleTask extends Task {
        @NotNull
        private final CountDownLatch latch = new CountDownLatch(1);

        public AwaitIdleTask() {
            super(Util.okHttpName + " awaitIdle", false);
        }

        @NotNull
        public final CountDownLatch getLatch() {
            return this.latch;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            this.latch.countDown();
            return -1L;
        }
    }

    public TaskQueue(@NotNull TaskRunner taskRunner, @NotNull String name) {
        Intrinsics.m1830e(taskRunner, "taskRunner");
        Intrinsics.m1830e(name, "name");
        this.taskRunner = taskRunner;
        this.name = name;
    }

    public static /* synthetic */ void execute$default(TaskQueue taskQueue, String name, long j, boolean z, Function0 block, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(block, "block");
        taskQueue.schedule(new TaskQueue$execute$1(block, name, z, name, z), j);
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, String name, long j, Function0 block, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(block, "block");
        taskQueue.schedule(new TaskQueue$schedule$2(block, name, name), j);
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, Task task, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        taskQueue.schedule(task, j);
    }

    public final void cancelAll() {
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            synchronized (this.taskRunner) {
                if (cancelAllAndDecide$okhttp()) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
                Unit unit = Unit.f20447a;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.m1831d(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST NOT hold lock on ");
        sb.append(this);
        throw new AssertionError(sb.toString());
    }

    public final boolean cancelAllAndDecide$okhttp() {
        Task task = this.activeTask;
        if (task != null) {
            Intrinsics.m1832c(task);
            if (task.getCancelable()) {
                this.cancelActiveTask = true;
            }
        }
        boolean z = false;
        for (int size = this.futureTasks.size() - 1; size >= 0; size--) {
            if (this.futureTasks.get(size).getCancelable()) {
                Task task2 = this.futureTasks.get(size);
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.access$log(task2, this, "canceled");
                }
                this.futureTasks.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void execute(@NotNull String name, long j, boolean z, @NotNull Function0<Unit> block) {
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(block, "block");
        schedule(new TaskQueue$execute$1(block, name, z, name, z), j);
    }

    @Nullable
    public final Task getActiveTask$okhttp() {
        return this.activeTask;
    }

    public final boolean getCancelActiveTask$okhttp() {
        return this.cancelActiveTask;
    }

    @NotNull
    public final List<Task> getFutureTasks$okhttp() {
        return this.futureTasks;
    }

    @NotNull
    public final String getName$okhttp() {
        return this.name;
    }

    @NotNull
    public final List<Task> getScheduledTasks() {
        List<Task> U;
        synchronized (this.taskRunner) {
            U = CollectionsKt___CollectionsKt.m2133U(this.futureTasks);
        }
        return U;
    }

    public final boolean getShutdown$okhttp() {
        return this.shutdown;
    }

    @NotNull
    public final TaskRunner getTaskRunner$okhttp() {
        return this.taskRunner;
    }

    @NotNull
    public final CountDownLatch idleLatch() {
        Task next;
        synchronized (this.taskRunner) {
            if (this.activeTask != null || !this.futureTasks.isEmpty()) {
                Task task = this.activeTask;
                if (task instanceof AwaitIdleTask) {
                    return ((AwaitIdleTask) task).getLatch();
                }
                Iterator<Task> it = this.futureTasks.iterator();
                do {
                    if (it.hasNext()) {
                        next = it.next();
                    } else {
                        AwaitIdleTask awaitIdleTask = new AwaitIdleTask();
                        if (scheduleAndDecide$okhttp(awaitIdleTask, 0L, false)) {
                            this.taskRunner.kickCoordinator$okhttp(this);
                        }
                        return awaitIdleTask.getLatch();
                    }
                } while (!(next instanceof AwaitIdleTask));
                return ((AwaitIdleTask) next).getLatch();
            }
            return new CountDownLatch(0);
        }
    }

    public final void schedule(@NotNull String name, long j, @NotNull Function0<Long> block) {
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(block, "block");
        schedule(new TaskQueue$schedule$2(block, name, name), j);
    }

    public final void schedule(@NotNull Task task, long j) {
        Intrinsics.m1830e(task, "task");
        synchronized (this.taskRunner) {
            if (!this.shutdown) {
                if (scheduleAndDecide$okhttp(task, j, false)) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
                Unit unit = Unit.f20447a;
            } else if (task.getCancelable()) {
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.access$log(task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                    TaskLoggerKt.access$log(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final boolean scheduleAndDecide$okhttp(@NotNull Task task, long j, boolean z) {
        String str;
        Intrinsics.m1830e(task, "task");
        task.initQueue$okhttp(this);
        long nanoTime = this.taskRunner.getBackend().nanoTime();
        long j2 = nanoTime + j;
        int indexOf = this.futureTasks.indexOf(task);
        boolean z2 = false;
        if (indexOf != -1) {
            if (task.getNextExecuteNanoTime$okhttp() > j2) {
                this.futureTasks.remove(indexOf);
            } else if (!TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
                return false;
            } else {
                TaskLoggerKt.access$log(task, this, "already scheduled");
                return false;
            }
        }
        task.setNextExecuteNanoTime$okhttp(j2);
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            if (z) {
                str = "run again after " + TaskLoggerKt.formatDuration(j2 - nanoTime);
            } else {
                str = "scheduled after " + TaskLoggerKt.formatDuration(j2 - nanoTime);
            }
            TaskLoggerKt.access$log(task, this, str);
        }
        Iterator<Task> it = this.futureTasks.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (it.next().getNextExecuteNanoTime$okhttp() - nanoTime > j) {
                break;
            }
            i++;
        }
        int i2 = i;
        if (i == -1) {
            i2 = this.futureTasks.size();
        }
        this.futureTasks.add(i2, task);
        if (i2 == 0) {
            z2 = true;
        }
        return z2;
    }

    public final void setActiveTask$okhttp(@Nullable Task task) {
        this.activeTask = task;
    }

    public final void setCancelActiveTask$okhttp(boolean z) {
        this.cancelActiveTask = z;
    }

    public final void setShutdown$okhttp(boolean z) {
        this.shutdown = z;
    }

    public final void shutdown() {
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            synchronized (this.taskRunner) {
                this.shutdown = true;
                if (cancelAllAndDecide$okhttp()) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
                Unit unit = Unit.f20447a;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.m1831d(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST NOT hold lock on ");
        sb.append(this);
        throw new AssertionError(sb.toString());
    }

    @NotNull
    public String toString() {
        return this.name;
    }
}
