package kotlinx.coroutines;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlinx.coroutines.au;
import kotlinx.coroutines.internal.aa;
import kotlinx.coroutines.internal.ab;
import kotlinx.coroutines.internal.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b \u0018��2\u0002092\u00020::\u00044567B\u0007¢\u0006\u0004\b\u0001\u0010\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0002J\u0017\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u00032\n\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0017\u0010\u0002J\u000f\u0010\u0018\u001a\u00020\u0003H\u0004¢\u0006\u0004\b\u0018\u0010\u0002J\u001d\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001f\u0010 J#\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u00142\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006H\u0004¢\u0006\u0004\b#\u0010$J%\u0010'\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00142\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u001aH\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0003H\u0014¢\u0006\u0004\b+\u0010\u0002R$\u0010-\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00118B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u0016\u00101\u001a\u00020\u00118T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b1\u0010.R\u0016\u00103\u001a\u00020\u00148T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b2\u0010\u0016¨\u00068"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase;", "<init>", "()V", "", "closeQueue", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dequeue", "()Ljava/lang/Runnable;", "Lkotlin/coroutines/CoroutineContext;", "context", "block", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "task", "enqueue", "(Ljava/lang/Runnable;)V", "", "enqueueImpl", "(Ljava/lang/Runnable;)Z", "", "processNextEvent", "()J", "rescheduleAllDelayed", "resetAll", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "schedule", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V", "", "scheduleImpl", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I", "timeMillis", "Lkotlinx/coroutines/DisposableHandle;", "scheduleInvokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "shouldUnpark", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z", "shutdown", "value", "isCompleted", "()Z", "setCompleted", "(Z)V", "isEmpty", "getNextTime", "nextTime", "DelayedResumeTask", "DelayedRunnableTask", "DelayedTask", "DelayedTaskQueue", "kotlinx-coroutines-core", "Lkotlinx/coroutines/EventLoopImplPlatform;", "Lkotlinx/coroutines/Delay;"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg.class */
public abstract class bg extends bh implements au {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f38736b = AtomicReferenceFieldUpdater.newUpdater(bg.class, Object.class, "_queue");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f38737d = AtomicReferenceFieldUpdater.newUpdater(bg.class, Object.class, "_delayed");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "nanoTime", "", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V", "run", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg$a.class */
    final class a extends c {

        /* renamed from: c  reason: collision with root package name */
        private final n<v> f38739c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(long j, n<? super v> nVar) {
            super(j);
            this.f38739c = nVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f38739c.a(bg.this, v.f38654a);
        }

        @Override // kotlinx.coroutines.bg.c
        public final String toString() {
            return super.toString() + this.f38739c.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016R\u0012\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "nanoTime", "", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "(JLjava/lang/Runnable;)V", "run", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg$b.class */
    static final class b extends c {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f38740a;

        public b(long j, Runnable runnable) {
            super(j);
            this.f38740a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f38740a.run();
        }

        @Override // kotlinx.coroutines.bg.c
        public final String toString() {
            return super.toString() + this.f38740a.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\b \u0018��2\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020��0\u00032\u00020\u00042\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020��H\u0096\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u0007J\b\u0010$\u001a\u00020%H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R0\u0010\r\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f2\f\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006&"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "nanoTime", "", "(J)V", "_heap", "", "value", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "heap", "getHeap", "()Lkotlinx/coroutines/internal/ThreadSafeHeap;", "setHeap", "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V", "index", "", "getIndex", "()I", "setIndex", "(I)V", "compareTo", "other", "dispose", "", "scheduleTask", "now", "delayed", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "eventLoop", "Lkotlinx/coroutines/EventLoopImplBase;", "timeToExecute", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg$c.class */
    public static abstract class c implements Comparable<c>, Runnable, bb, ab {

        /* renamed from: a  reason: collision with root package name */
        private Object f38741a;

        /* renamed from: b  reason: collision with root package name */
        public long f38742b;

        /* renamed from: c  reason: collision with root package name */
        private int f38743c = -1;

        public c(long j) {
            this.f38742b = j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* JADX WARN: Type inference failed for: r1v18, types: [T extends kotlinx.coroutines.internal.ab & java.lang.Comparable<? super T>[], kotlinx.coroutines.internal.ab[]] */
        /* JADX WARN: Type inference failed for: r6v1, types: [long] */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r8v6, types: [T extends kotlinx.coroutines.internal.ab & java.lang.Comparable<? super T>[], kotlinx.coroutines.internal.ab[]] */
        /* JADX WARN: Unknown variable types count: 3 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int a(long r6, kotlinx.coroutines.bg.d r8, kotlinx.coroutines.bg r9) {
            /*
                Method dump skipped, instructions count: 328
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.bg.c.a(long, kotlinx.coroutines.bg$d, kotlinx.coroutines.bg):int");
        }

        @Override // kotlinx.coroutines.bb
        public final void a() {
            kotlinx.coroutines.internal.v vVar;
            kotlinx.coroutines.internal.v vVar2;
            synchronized (this) {
                Object obj = this.f38741a;
                vVar = bi.f38745a;
                if (obj != vVar) {
                    Object obj2 = obj;
                    if (!(obj instanceof d)) {
                        obj2 = null;
                    }
                    d dVar = (d) obj2;
                    if (dVar != null) {
                        dVar.a((d) this);
                    }
                    vVar2 = bi.f38745a;
                    this.f38741a = vVar2;
                }
            }
        }

        @Override // kotlinx.coroutines.internal.ab
        public final void a(int i) {
            this.f38743c = i;
        }

        @Override // kotlinx.coroutines.internal.ab
        public final void a(aa<?> aaVar) {
            kotlinx.coroutines.internal.v vVar;
            Object obj = this.f38741a;
            vVar = bi.f38745a;
            if (obj != vVar) {
                this.f38741a = aaVar;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        @Override // kotlinx.coroutines.internal.ab
        public final aa<?> b() {
            Object obj = this.f38741a;
            Object obj2 = obj;
            if (!(obj instanceof aa)) {
                obj2 = null;
            }
            return (aa) obj2;
        }

        @Override // kotlinx.coroutines.internal.ab
        public final int c() {
            return this.f38743c;
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(c cVar) {
            int i = ((this.f38742b - cVar.f38742b) > 0L ? 1 : ((this.f38742b - cVar.f38742b) == 0L ? 0 : -1));
            if (i > 0) {
                return 1;
            }
            return i < 0 ? -1 : 0;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f38742b + ']';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\b��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "timeNow", "", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg$d.class */
    public static final class d extends aa<c> {

        /* renamed from: a  reason: collision with root package name */
        public long f38744a;

        public d(long j) {
            this.f38744a = j;
        }
    }

    private final boolean a(c cVar) {
        d dVar = (d) this._delayed;
        return (dVar != null ? dVar.b() : null) == cVar;
    }

    private final boolean b(Runnable runnable) {
        kotlinx.coroutines.internal.v vVar;
        while (true) {
            Object obj = this._queue;
            if (this._isCompleted != 0) {
                return false;
            }
            if (obj == null) {
                if (f38736b.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof n) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
                n nVar = (n) obj;
                int a2 = nVar.a((n) runnable);
                if (a2 == 0) {
                    return true;
                }
                if (a2 == 1) {
                    f38736b.compareAndSet(this, obj, nVar.d());
                } else if (a2 == 2) {
                    return false;
                }
            } else {
                vVar = bi.f38746b;
                if (obj == vVar) {
                    return false;
                }
                n nVar2 = new n(8, true);
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                nVar2.a((n) ((Runnable) obj));
                nVar2.a((n) runnable);
                if (f38736b.compareAndSet(this, obj, nVar2)) {
                    return true;
                }
            }
        }
    }

    private final int c(long j, c cVar) {
        if (this._isCompleted != 0) {
            return 1;
        }
        d dVar = (d) this._delayed;
        d dVar2 = dVar;
        if (dVar == null) {
            bg bgVar = this;
            f38737d.compareAndSet(bgVar, null, new d(j));
            Object obj = bgVar._delayed;
            p.a(obj);
            dVar2 = (d) obj;
        }
        return cVar.a(j, dVar2, this);
    }

    private final void l() {
        c c2;
        co coVar = cp.f38786a;
        long a2 = coVar != null ? coVar.a() : System.nanoTime();
        while (true) {
            d dVar = (d) this._delayed;
            if (dVar != null && (c2 = dVar.c()) != null) {
                b(a2, c2);
            } else {
                return;
            }
        }
    }

    public bb a(long j, Runnable runnable, f fVar) {
        return au.a.a(j, runnable, fVar);
    }

    public final void a(long j, c cVar) {
        int c2 = c(j, cVar);
        if (c2 != 0) {
            if (c2 == 1) {
                b(j, cVar);
            } else if (c2 != 2) {
                throw new IllegalStateException("unexpected result".toString());
            }
        } else if (a(cVar)) {
            k();
        }
    }

    @Override // kotlinx.coroutines.au
    public final void a(long j, n<? super v> nVar) {
        long a2 = bi.a(j);
        if (a2 < 4611686018427387903L) {
            co coVar = cp.f38786a;
            long a3 = coVar != null ? coVar.a() : System.nanoTime();
            a aVar = new a(a2 + a3, nVar);
            q.a(nVar, aVar);
            a(a3, aVar);
        }
    }

    public final void a(Runnable runnable) {
        bg bgVar = this;
        while (!bgVar.b(runnable)) {
            bgVar = aq.f38690b;
        }
        bgVar.k();
    }

    @Override // kotlinx.coroutines.af
    public final void a(f fVar, Runnable runnable) {
        a(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ad A[SYNTHETIC] */
    @Override // kotlinx.coroutines.bf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long c() {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.bg.c():long");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.bf
    public final boolean d() {
        kotlinx.coroutines.internal.v vVar;
        if (!h()) {
            return false;
        }
        d dVar = (d) this._delayed;
        if (dVar != null && !dVar.a()) {
            return false;
        }
        Object obj = this._queue;
        if (obj == null) {
            return true;
        }
        if (obj instanceof n) {
            return ((n) obj).a();
        }
        vVar = bi.f38746b;
        return obj == vVar;
    }

    @Override // kotlinx.coroutines.bf
    protected final long e() {
        c b2;
        kotlinx.coroutines.internal.v vVar;
        if (super.e() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof n)) {
                vVar = bi.f38746b;
                return obj == vVar ? Long.MAX_VALUE : 0L;
            } else if (!((n) obj).a()) {
                return 0L;
            }
        }
        d dVar = (d) this._delayed;
        if (dVar == null || (b2 = dVar.b()) == null) {
            return Long.MAX_VALUE;
        }
        long j = b2.f38742b;
        co coVar = cp.f38786a;
        long a2 = j - (coVar != null ? coVar.a() : System.nanoTime());
        if (a2 < 0) {
            return 0L;
        }
        return a2;
    }

    @Override // kotlinx.coroutines.bf
    protected final void i() {
        kotlinx.coroutines.internal.v vVar;
        kotlinx.coroutines.internal.v vVar2;
        cn cnVar = cn.f38784a;
        cn.c();
        this._isCompleted = 1;
        if (!ao.a() || this._isCompleted != 0) {
            while (true) {
                Object obj = this._queue;
                if (obj != null) {
                    if (!(obj instanceof n)) {
                        vVar2 = bi.f38746b;
                        if (obj == vVar2) {
                            break;
                        }
                        n nVar = new n(8, true);
                        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                        nVar.a((n) ((Runnable) obj));
                        if (f38736b.compareAndSet(this, obj, nVar)) {
                            break;
                        }
                    } else {
                        ((n) obj).b();
                        break;
                    }
                } else {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f38736b;
                    vVar = bi.f38746b;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, vVar)) {
                        break;
                    }
                }
            }
            do {
            } while (c() <= 0);
            l();
            return;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j() {
        this._queue = null;
        this._delayed = null;
    }
}
