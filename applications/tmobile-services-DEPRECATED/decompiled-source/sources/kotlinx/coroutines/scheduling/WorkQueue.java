package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b��\u0018��B\u0007¢\u0006\u0004\b'\u0010(J!\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020��¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020��¢\u0006\u0004\b\u0018\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020��2\u0006\u0010\u0019\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u000b*\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020!8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020!8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b%\u0010#¨\u0006)"}, d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "Lkotlinx/coroutines/scheduling/Task;", "task", "", "fair", "add", "(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "addLast", "(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalQueue", "", "offloadAllWorkTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V", "poll", "()Lkotlinx/coroutines/scheduling/Task;", "pollBuffer", "queue", "pollTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)Z", "victim", "", "tryStealBlockingFrom", "(Lkotlinx/coroutines/scheduling/WorkQueue;)J", "tryStealFrom", "blockingOnly", "tryStealLastScheduled", "(Lkotlinx/coroutines/scheduling/WorkQueue;Z)J", "decrementIfBlocking", "(Lkotlinx/coroutines/scheduling/Task;)V", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "buffer", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "", "getBufferSize$kotlinx_coroutines_core", "()I", "bufferSize", "getSize$kotlinx_coroutines_core", "size", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/WorkQueue.class */
public final class WorkQueue {

    /* renamed from: b */
    private static final AtomicReferenceFieldUpdater f24013b = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask");

    /* renamed from: c */
    private static final AtomicIntegerFieldUpdater f24014c = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex");

    /* renamed from: d */
    private static final AtomicIntegerFieldUpdater f24015d = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex");

    /* renamed from: e */
    private static final AtomicIntegerFieldUpdater f24016e = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer");

    /* renamed from: a */
    private final AtomicReferenceArray<Task> f24017a = new AtomicReferenceArray<>(128);
    private volatile Object lastScheduledTask = null;
    private volatile int producerIndex = 0;
    private volatile int consumerIndex = 0;
    private volatile int blockingTasksInBuffer = 0;

    /* renamed from: b */
    public static /* synthetic */ Task m342b(WorkQueue workQueue, Task task, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return workQueue.m343a(task, z);
    }

    /* renamed from: c */
    private final Task m341c(Task task) {
        boolean z = true;
        if (task.f24006g.mo345p() != 1) {
            z = false;
        }
        if (z) {
            f24016e.incrementAndGet(this);
        }
        if (m339e() == 127) {
            return task;
        }
        int i = this.producerIndex & 127;
        while (this.f24017a.get(i) != null) {
            Thread.yield();
        }
        this.f24017a.lazySet(i, task);
        f24014c.incrementAndGet(this);
        return null;
    }

    /* renamed from: d */
    private final void m340d(Task task) {
        if (task != null) {
            boolean z = false;
            if (task.f24006g.mo345p() == 1) {
                int decrementAndGet = f24016e.decrementAndGet(this);
                if (DebugKt.m1308a()) {
                    if (decrementAndGet >= 0) {
                        z = true;
                    }
                    if (!z) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    /* renamed from: i */
    private final Task m335i() {
        Task andSet;
        while (true) {
            int i = this.consumerIndex;
            if (i - this.producerIndex == 0) {
                return null;
            }
            if (f24015d.compareAndSet(this, i, i + 1) && (andSet = this.f24017a.getAndSet(i & 127, null)) != null) {
                m340d(andSet);
                return andSet;
            }
        }
    }

    /* renamed from: j */
    private final boolean m334j(GlobalQueue globalQueue) {
        Task i = m335i();
        if (i == null) {
            return false;
        }
        globalQueue.m503a(i);
        return true;
    }

    /* renamed from: m */
    private final long m331m(WorkQueue workQueue, boolean z) {
        Task task;
        do {
            task = (Task) workQueue.lastScheduledTask;
            if (task == null) {
                return -2L;
            }
            if (z) {
                boolean z2 = true;
                if (task.f24006g.mo345p() != 1) {
                    z2 = false;
                }
                if (!z2) {
                    return -2L;
                }
            }
            long a = TasksKt.f24012e.mo344a() - task.f24005f;
            long j = TasksKt.f24008a;
            if (a < j) {
                return j - a;
            }
        } while (!f24013b.compareAndSet(workQueue, task, null));
        m342b(this, task, false, 2, null);
        return -1L;
    }

    @Nullable
    /* renamed from: a */
    public final Task m343a(@NotNull Task task, boolean z) {
        if (z) {
            return m341c(task);
        }
        Task task2 = (Task) f24013b.getAndSet(this, task);
        if (task2 != null) {
            return m341c(task2);
        }
        return null;
    }

    /* renamed from: e */
    public final int m339e() {
        return this.producerIndex - this.consumerIndex;
    }

    /* renamed from: f */
    public final int m338f() {
        return this.lastScheduledTask != null ? m339e() + 1 : m339e();
    }

    /* renamed from: g */
    public final void m337g(@NotNull GlobalQueue globalQueue) {
        Task task = (Task) f24013b.getAndSet(this, null);
        if (task != null) {
            globalQueue.m503a(task);
        }
        do {
        } while (m334j(globalQueue));
    }

    @Nullable
    /* renamed from: h */
    public final Task m336h() {
        Task task = (Task) f24013b.getAndSet(this, null);
        if (task == null) {
            task = m335i();
        }
        return task;
    }

    /* renamed from: k */
    public final long m333k(@NotNull WorkQueue workQueue) {
        if (DebugKt.m1308a()) {
            if (!(m339e() == 0)) {
                throw new AssertionError();
            }
        }
        int i = workQueue.producerIndex;
        AtomicReferenceArray<Task> atomicReferenceArray = workQueue.f24017a;
        for (int i2 = workQueue.consumerIndex; i2 != i; i2++) {
            int i3 = i2 & 127;
            if (workQueue.blockingTasksInBuffer == 0) {
                break;
            }
            Task task = atomicReferenceArray.get(i3);
            if (task != null) {
                if ((task.f24006g.mo345p() == 1) && atomicReferenceArray.compareAndSet(i3, task, null)) {
                    f24016e.decrementAndGet(workQueue);
                    m342b(this, task, false, 2, null);
                    return -1L;
                }
            }
        }
        return m331m(workQueue, true);
    }

    /* renamed from: l */
    public final long m332l(@NotNull WorkQueue workQueue) {
        boolean z = true;
        if (DebugKt.m1308a()) {
            if (!(m339e() == 0)) {
                throw new AssertionError();
            }
        }
        Task i = workQueue.m335i();
        if (i == null) {
            return m331m(workQueue, false);
        }
        Task b = m342b(this, i, false, 2, null);
        if (!DebugKt.m1308a()) {
            return -1L;
        }
        if (b != null) {
            z = false;
        }
        if (z) {
            return -1L;
        }
        throw new AssertionError();
    }
}
