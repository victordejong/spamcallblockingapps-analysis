package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b \u0018��2\u00020\u00012\u00020\u0002:\u00046789B\u0007¢\u0006\u0004\b5\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ!\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\n\u0010\f\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00032\n\u0010\u000f\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0013\u001a\u00020\u00122\n\u0010\u000f\u001a\u00060\u0006j\u0002`\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0003H\u0004¢\u0006\u0004\b\u0019\u0010\u0005J\u001d\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b \u0010!J#\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020\u00152\n\u0010\f\u001a\u00060\u0006j\u0002`\u0007H\u0004¢\u0006\u0004\b$\u0010%J%\u0010(\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u00152\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00030&H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u001bH\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0003H\u0014¢\u0006\u0004\b,\u0010\u0005R$\u0010.\u001a\u00020\u00122\u0006\u0010-\u001a\u00020\u00128B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u00128T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b2\u0010/R\u0016\u00104\u001a\u00020\u00158T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b3\u0010\u0017¨\u0006:"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase;", "Lkotlinx/coroutines/Delay;", "Lkotlinx/coroutines/EventLoopImplPlatform;", "", "closeQueue", "()V", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dequeue", "()Ljava/lang/Runnable;", "Lkotlin/coroutines/CoroutineContext;", "context", "block", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "task", "enqueue", "(Ljava/lang/Runnable;)V", "", "enqueueImpl", "(Ljava/lang/Runnable;)Z", "", "processNextEvent", "()J", "rescheduleAllDelayed", "resetAll", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "schedule", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V", "", "scheduleImpl", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I", "timeMillis", "Lkotlinx/coroutines/DisposableHandle;", "scheduleInvokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "shouldUnpark", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z", "shutdown", FirebaseAnalytics.Param.VALUE, "isCompleted", "()Z", "setCompleted", "(Z)V", "isEmpty", "getNextTime", "nextTime", "<init>", "DelayedResumeTask", "DelayedRunnableTask", "DelayedTask", "DelayedTaskQueue", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/EventLoopImplBase.class */
public abstract class EventLoopImplBase extends EventLoopImplPlatform implements Delay {

    /* renamed from: j */
    private static final AtomicReferenceFieldUpdater f21175j = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue");

    /* renamed from: k */
    private static final AtomicReferenceFieldUpdater f21176k = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed");
    private volatile Object _queue = null;
    private volatile Object _delayed = null;
    private volatile int _isCompleted = 0;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;", "kotlinx/coroutines/EventLoopImplBase$DelayedTask", "", "run", "()V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "nanoTime", "<init>", "(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/EventLoopImplBase$DelayedResumeTask.class */
    public final class DelayedResumeTask extends DelayedTask {

        /* renamed from: i */
        private final CancellableContinuation<Unit> f21177i;

        /* JADX WARN: Multi-variable type inference failed */
        public DelayedResumeTask(long j, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
            super(j);
            this.f21177i = cancellableContinuation;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f21177i.mo1348s(EventLoopImplBase.this, Unit.f20447a);
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        @NotNull
        public String toString() {
            return super.toString() + this.f21177i.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B\u001b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\u0010\n\u001a\u00060\bj\u0002`\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00060\bj\u0002`\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;", "kotlinx/coroutines/EventLoopImplBase$DelayedTask", "", "run", "()V", "", "toString", "()Ljava/lang/String;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Ljava/lang/Runnable;", "", "nanoTime", "<init>", "(JLjava/lang/Runnable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask.class */
    private static final class DelayedRunnableTask extends DelayedTask {

        /* renamed from: i */
        private final Runnable f21179i;

        public DelayedRunnableTask(long j, @NotNull Runnable runnable) {
            super(j);
            this.f21179i = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f21179i.run();
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        @NotNull
        public String toString() {
            return super.toString() + this.f21179i.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\b \u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u000f\u0012\u0006\u0010*\u001a\u00020\f¢\u0006\u0004\b,\u0010-J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020��H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR0\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001d2\f\u0010\u001e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001d8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010$\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006."}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "Ljava/lang/Runnable;", "Ljava/lang/Comparable;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "other", "", "compareTo", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I", "", "dispose", "()V", "", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "delayed", "Lkotlinx/coroutines/EventLoopImplBase;", "eventLoop", "scheduleTask", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;Lkotlinx/coroutines/EventLoopImplBase;)I", "", "timeToExecute", "(J)Z", "", "toString", "()Ljava/lang/String;", "", "_heap", "Ljava/lang/Object;", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", FirebaseAnalytics.Param.VALUE, "getHeap", "()Lkotlinx/coroutines/internal/ThreadSafeHeap;", "setHeap", "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V", "heap", FirebaseAnalytics.Param.INDEX, "I", "getIndex", "()I", "setIndex", "(I)V", "nanoTime", "J", "<init>", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/EventLoopImplBase$DelayedTask.class */
    public static abstract class DelayedTask implements Runnable, Comparable<DelayedTask>, DisposableHandle, ThreadSafeHeapNode {

        /* renamed from: f */
        private Object f21180f;

        /* renamed from: g */
        private int f21181g = -1;
        @JvmField

        /* renamed from: h */
        public long f21182h;

        public DelayedTask(long j) {
            this.f21182h = j;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        /* renamed from: a */
        public void mo240a(@Nullable ThreadSafeHeap<?> threadSafeHeap) {
            Symbol symbol;
            Object obj = this.f21180f;
            symbol = EventLoop_commonKt.f21184a;
            if (obj != symbol) {
                this.f21180f = threadSafeHeap;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        @Nullable
        /* renamed from: b */
        public ThreadSafeHeap<?> mo239b() {
            Object obj = this.f21180f;
            Object obj2 = obj;
            if (!(obj instanceof ThreadSafeHeap)) {
                obj2 = null;
            }
            return (ThreadSafeHeap) obj2;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            Symbol symbol;
            Symbol symbol2;
            synchronized (this) {
                Object obj = this.f21180f;
                symbol = EventLoop_commonKt.f21184a;
                if (obj != symbol) {
                    Object obj2 = obj;
                    if (!(obj instanceof DelayedTaskQueue)) {
                        obj2 = null;
                    }
                    DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) obj2;
                    if (delayedTaskQueue != null) {
                        delayedTaskQueue.m412h(this);
                    }
                    symbol2 = EventLoop_commonKt.f21184a;
                    this.f21180f = symbol2;
                }
            }
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        /* renamed from: e */
        public void mo238e(int i) {
            this.f21181g = i;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public int getIndex() {
            return this.f21181g;
        }

        /* renamed from: h */
        public int compareTo(@NotNull DelayedTask delayedTask) {
            int i = ((this.f21182h - delayedTask.f21182h) > 0L ? 1 : ((this.f21182h - delayedTask.f21182h) == 0L ? 0 : -1));
            return i > 0 ? 1 : i < 0 ? -1 : 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1, types: [long] */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: i */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int m1241i(long r6, @org.jetbrains.annotations.NotNull kotlinx.coroutines.EventLoopImplBase.DelayedTaskQueue r8, @org.jetbrains.annotations.NotNull kotlinx.coroutines.EventLoopImplBase r9) {
            /*
                r5 = this;
                r0 = r5
                monitor-enter(r0)
                r0 = r5
                java.lang.Object r0 = r0.f21180f     // Catch: all -> 0x0090
                r10 = r0
                kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.EventLoop_commonKt.m1234b()     // Catch: all -> 0x0090
                r11 = r0
                r0 = r10
                r1 = r11
                if (r0 != r1) goto L_0x0018
                r0 = r5
                monitor-exit(r0)
                r0 = 2
                return r0
            L_0x0018:
                r0 = r8
                monitor-enter(r0)     // Catch: all -> 0x0090
                r0 = r8
                kotlinx.coroutines.internal.ThreadSafeHeapNode r0 = r0.m417c()     // Catch: all -> 0x0089
                kotlinx.coroutines.EventLoopImplBase$DelayedTask r0 = (kotlinx.coroutines.EventLoopImplBase.DelayedTask) r0     // Catch: all -> 0x0089
                r10 = r0
                r0 = r9
                boolean r0 = kotlinx.coroutines.EventLoopImplBase.m1246w0(r0)     // Catch: all -> 0x0089
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L_0x0035
                r0 = r8
                monitor-exit(r0)     // Catch: all -> 0x0090
                r0 = r5
                monitor-exit(r0)
                r0 = 1
                return r0
            L_0x0035:
                r0 = r10
                if (r0 != 0) goto L_0x0042
                r0 = r8
                r1 = r6
                r0.f21183b = r1     // Catch: all -> 0x0089
                goto L_0x0068
            L_0x0042:
                r0 = r10
                long r0 = r0.f21182h     // Catch: all -> 0x0089
                r13 = r0
                r0 = r13
                r1 = r6
                long r0 = r0 - r1
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0055
                goto L_0x0058
            L_0x0055:
                r0 = r13
                r6 = r0
            L_0x0058:
                r0 = r6
                r1 = r8
                long r1 = r1.f21183b     // Catch: all -> 0x0089
                long r0 = r0 - r1
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0068
                r0 = r8
                r1 = r6
                r0.f21183b = r1     // Catch: all -> 0x0089
            L_0x0068:
                r0 = r5
                long r0 = r0.f21182h     // Catch: all -> 0x0089
                r1 = r8
                long r1 = r1.f21183b     // Catch: all -> 0x0089
                long r0 = r0 - r1
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x007e
                r0 = r5
                r1 = r8
                long r1 = r1.f21183b     // Catch: all -> 0x0089
                r0.f21182h = r1     // Catch: all -> 0x0089
            L_0x007e:
                r0 = r8
                r1 = r5
                r0.m419a(r1)     // Catch: all -> 0x0089
                r0 = r8
                monitor-exit(r0)     // Catch: all -> 0x0090
                r0 = r5
                monitor-exit(r0)
                r0 = 0
                return r0
            L_0x0089:
                r9 = move-exception
                r0 = r8
                monitor-exit(r0)     // Catch: all -> 0x0090
                r0 = r9
                throw r0     // Catch: all -> 0x0090
            L_0x0090:
                r8 = move-exception
                r0 = r5
                monitor-exit(r0)
                r0 = r8
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.DelayedTask.m1241i(long, kotlinx.coroutines.EventLoopImplBase$DelayedTaskQueue, kotlinx.coroutines.EventLoopImplBase):int");
        }

        /* renamed from: k */
        public final boolean m1240k(long j) {
            return j - this.f21182h >= 0;
        }

        @NotNull
        public String toString() {
            return "Delayed[nanos=" + this.f21182h + ']';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "", "timeNow", "J", "<init>", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue.class */
    public static final class DelayedTaskQueue extends ThreadSafeHeap<DelayedTask> {
        @JvmField

        /* renamed from: b */
        public long f21183b;

        public DelayedTaskQueue(long j) {
            this.f21183b = j;
        }
    }

    /* renamed from: A0 */
    private final boolean m1258A0(Runnable runnable) {
        Symbol symbol;
        while (true) {
            Object obj = this._queue;
            if (m1257B0()) {
                return false;
            }
            if (obj == null) {
                if (f21175j.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (!(obj instanceof LockFreeTaskQueueCore)) {
                symbol = EventLoop_commonKt.f21185b;
                if (obj == symbol) {
                    return false;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                if (obj != null) {
                    lockFreeTaskQueueCore.m499a((Runnable) obj);
                    lockFreeTaskQueueCore.m499a(runnable);
                    if (f21175j.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                        return true;
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                }
            } else if (obj != null) {
                LockFreeTaskQueueCore lockFreeTaskQueueCore2 = (LockFreeTaskQueueCore) obj;
                int a = lockFreeTaskQueueCore2.m499a(runnable);
                if (a == 0) {
                    return true;
                }
                if (a == 1) {
                    f21175j.compareAndSet(this, obj, lockFreeTaskQueueCore2.m491i());
                } else if (a == 2) {
                    return false;
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    /* renamed from: B0 */
    public final boolean m1257B0() {
        return this._isCompleted;
    }

    /* renamed from: E0 */
    private final void m1254E0() {
        DelayedTask j;
        TimeSource a = TimeSourceKt.m1093a();
        long nanoTime = a != null ? a.nanoTime() : System.nanoTime();
        while (true) {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
            if (delayedTaskQueue != null && (j = delayedTaskQueue.m410j()) != null) {
                m1238u0(nanoTime, j);
            } else {
                return;
            }
        }
    }

    /* renamed from: H0 */
    private final int m1251H0(long j, DelayedTask delayedTask) {
        if (m1257B0()) {
            return 1;
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
        if (delayedTaskQueue == null) {
            f21176k.compareAndSet(this, null, new DelayedTaskQueue(j));
            Object obj = this._delayed;
            Intrinsics.m1832c(obj);
            delayedTaskQueue = (DelayedTaskQueue) obj;
        }
        return delayedTask.m1241i(j, delayedTaskQueue, this);
    }

    /* renamed from: J0 */
    private final void m1249J0(boolean z) {
        this._isCompleted = z ? 1 : 0;
    }

    /* renamed from: K0 */
    private final boolean m1248K0(DelayedTask delayedTask) {
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
        return (delayedTaskQueue != null ? delayedTaskQueue.m414f() : null) == delayedTask;
    }

    /* renamed from: x0 */
    private final void m1245x0() {
        Symbol symbol;
        Symbol symbol2;
        if (!DebugKt.m1308a() || m1257B0()) {
            while (true) {
                Object obj = this._queue;
                if (obj == null) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f21175j;
                    symbol = EventLoop_commonKt.f21185b;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, symbol)) {
                        return;
                    }
                } else if (obj instanceof LockFreeTaskQueueCore) {
                    ((LockFreeTaskQueueCore) obj).m496d();
                    return;
                } else {
                    symbol2 = EventLoop_commonKt.f21185b;
                    if (obj != symbol2) {
                        LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                        if (obj != null) {
                            lockFreeTaskQueueCore.m499a((Runnable) obj);
                            if (f21175j.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                                return;
                            }
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                        }
                    } else {
                        return;
                    }
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    /* renamed from: y0 */
    private final Runnable m1244y0() {
        Symbol symbol;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof LockFreeTaskQueueCore)) {
                symbol = EventLoop_commonKt.f21185b;
                if (obj == symbol) {
                    return null;
                }
                if (f21175j.compareAndSet(this, obj, null)) {
                    if (obj != null) {
                        return (Runnable) obj;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                }
            } else if (obj != null) {
                LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
                Object j = lockFreeTaskQueueCore.m490j();
                if (j != LockFreeTaskQueueCore.f23931g) {
                    return (Runnable) j;
                }
                f21175j.compareAndSet(this, obj, lockFreeTaskQueueCore.m491i());
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
        if (r0 == r1) goto L_0x002b;
     */
    /* renamed from: C0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1256C0() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.m1260i0()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r3
            java.lang.Object r0 = r0._delayed
            kotlinx.coroutines.EventLoopImplBase$DelayedTaskQueue r0 = (kotlinx.coroutines.EventLoopImplBase.DelayedTaskQueue) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0022
            r0 = r6
            boolean r0 = r0.m415e()
            if (r0 != 0) goto L_0x0022
            r0 = 0
            return r0
        L_0x0022:
            r0 = r3
            java.lang.Object r0 = r0._queue
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0030
        L_0x002b:
            r0 = 1
            r5 = r0
            goto L_0x004c
        L_0x0030:
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore
            if (r0 == 0) goto L_0x0042
            r0 = r6
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r0 = (kotlinx.coroutines.internal.LockFreeTaskQueueCore) r0
            boolean r0 = r0.m493g()
            r5 = r0
            goto L_0x004c
        L_0x0042:
            r0 = r6
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.EventLoop_commonKt.m1235a()
            if (r0 != r1) goto L_0x004c
            goto L_0x002b
        L_0x004c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.m1256C0():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0097  */
    /* renamed from: D0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m1255D0() {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.m1259j0()
            if (r0 == 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r4
            java.lang.Object r0 = r0._delayed
            kotlinx.coroutines.EventLoopImplBase$DelayedTaskQueue r0 = (kotlinx.coroutines.EventLoopImplBase.DelayedTaskQueue) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0086
            r0 = r5
            boolean r0 = r0.m415e()
            if (r0 != 0) goto L_0x0086
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.m1093a()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x002e
            r0 = r6
            long r0 = r0.nanoTime()
            r7 = r0
            goto L_0x0032
        L_0x002e:
            long r0 = java.lang.System.nanoTime()
            r7 = r0
        L_0x0032:
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            kotlinx.coroutines.internal.ThreadSafeHeapNode r0 = r0.m417c()     // Catch: all -> 0x0081
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0072
            r0 = r9
            kotlinx.coroutines.EventLoopImplBase$DelayedTask r0 = (kotlinx.coroutines.EventLoopImplBase.DelayedTask) r0     // Catch: all -> 0x0081
            r10 = r0
            r0 = r10
            r1 = r7
            boolean r0 = r0.m1240k(r1)     // Catch: all -> 0x0081
            if (r0 == 0) goto L_0x005f
            r0 = r4
            r1 = r10
            boolean r0 = r0.m1258A0(r1)     // Catch: all -> 0x0081
            r11 = r0
            goto L_0x0062
        L_0x005f:
            r0 = 0
            r11 = r0
        L_0x0062:
            r0 = r11
            if (r0 == 0) goto L_0x006d
            r0 = r5
            r1 = 0
            kotlinx.coroutines.internal.ThreadSafeHeapNode r0 = r0.m411i(r1)     // Catch: all -> 0x0081
            r6 = r0
        L_0x006d:
            r0 = r5
            monitor-exit(r0)
            goto L_0x0077
        L_0x0072:
            r0 = r5
            monitor-exit(r0)
            r0 = r10
            r6 = r0
        L_0x0077:
            r0 = r6
            kotlinx.coroutines.EventLoopImplBase$DelayedTask r0 = (kotlinx.coroutines.EventLoopImplBase.DelayedTask) r0
            if (r0 == 0) goto L_0x0086
            goto L_0x0032
        L_0x0081:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        L_0x0086:
            r0 = r4
            java.lang.Runnable r0 = r0.m1244y0()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0097
            r0 = r6
            r0.run()
            r0 = 0
            return r0
        L_0x0097:
            r0 = r4
            long r0 = r0.mo1247Z()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.m1255D0():long");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: F0 */
    public final void m1253F0() {
        this._queue = null;
        this._delayed = null;
    }

    /* renamed from: G0 */
    public final void m1252G0(long j, @NotNull DelayedTask delayedTask) {
        int H0 = m1251H0(j, delayedTask);
        if (H0 != 0) {
            if (H0 == 1) {
                m1238u0(j, delayedTask);
            } else if (H0 != 2) {
                throw new IllegalStateException("unexpected result".toString());
            }
        } else if (m1248K0(delayedTask)) {
            m1237v0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: I0 */
    public final DisposableHandle m1250I0(long j, @NotNull Runnable runnable) {
        DisposableHandle disposableHandle;
        long d = EventLoop_commonKt.m1232d(j);
        if (d < 4611686018427387903L) {
            TimeSource a = TimeSourceKt.m1093a();
            long nanoTime = a != null ? a.nanoTime() : System.nanoTime();
            DelayedRunnableTask delayedRunnableTask = new DelayedRunnableTask(d + nanoTime, runnable);
            m1252G0(nanoTime, delayedRunnableTask);
            disposableHandle = delayedRunnableTask;
        } else {
            disposableHandle = NonDisposableHandle.f21231f;
        }
        return disposableHandle;
    }

    @Override // kotlinx.coroutines.EventLoop
    /* renamed from: Z */
    protected long mo1247Z() {
        DelayedTask f;
        Symbol symbol;
        if (super.mo1247Z() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof LockFreeTaskQueueCore)) {
                symbol = EventLoop_commonKt.f21185b;
                return obj == symbol ? Long.MAX_VALUE : 0L;
            } else if (!((LockFreeTaskQueueCore) obj).m493g()) {
                return 0L;
            }
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) this._delayed;
        if (delayedTaskQueue == null || (f = delayedTaskQueue.m414f()) == null) {
            return Long.MAX_VALUE;
        }
        long j = f.f21182h;
        TimeSource a = TimeSourceKt.m1093a();
        return RangesKt.m1721c(j - (a != null ? a.nanoTime() : System.nanoTime()), 0L);
    }

    @Override // kotlinx.coroutines.Delay
    /* renamed from: h */
    public void mo243h(long j, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
        long d = EventLoop_commonKt.m1232d(j);
        if (d < 4611686018427387903L) {
            TimeSource a = TimeSourceKt.m1093a();
            long nanoTime = a != null ? a.nanoTime() : System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(d + nanoTime, cancellableContinuation);
            CancellableContinuationKt.m1340a(cancellableContinuation, delayedResumeTask);
            m1252G0(nanoTime, delayedResumeTask);
        }
    }

    @NotNull
    /* renamed from: q */
    public DisposableHandle mo242q(long j, @NotNull Runnable runnable) {
        return Delay.DefaultImpls.m1294a(this, j, runnable);
    }

    @Override // kotlinx.coroutines.EventLoop
    protected void shutdown() {
        ThreadLocalEventLoop.f21244b.m1109b();
        m1249J0(true);
        m1245x0();
        do {
        } while (m1255D0() <= 0);
        m1254E0();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: t */
    public final void mo241t(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        m1243z0(runnable);
    }

    /* renamed from: z0 */
    public final void m1243z0(@NotNull Runnable runnable) {
        if (m1258A0(runnable)) {
            m1237v0();
        } else {
            DefaultExecutor.f21150m.m1243z0(runnable);
        }
    }
}
