package kotlinx.coroutines;

import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.AbstractC20166au;
import kotlinx.coroutines.internal.AbstractC20264ab;
import kotlinx.coroutines.internal.C20263aa;
import kotlinx.coroutines.internal.C20286n;
import kotlinx.coroutines.internal.C20296v;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b \u0018��2\u0002092\u00020::\u00044567B\u0007¢\u0006\u0004\b\u0001\u0010\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0002J\u0017\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u00032\n\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0017\u0010\u0002J\u000f\u0010\u0018\u001a\u00020\u0003H\u0004¢\u0006\u0004\b\u0018\u0010\u0002J\u001d\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001f\u0010 J#\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u00142\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006H\u0004¢\u0006\u0004\b#\u0010$J%\u0010'\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00142\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u001aH\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0003H\u0014¢\u0006\u0004\b+\u0010\u0002R$\u0010-\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00118B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u0016\u00101\u001a\u00020\u00118T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b1\u0010.R\u0016\u00103\u001a\u00020\u00148T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b2\u0010\u0016¨\u00068"}, m4298d2 = {"Lkotlinx/coroutines/EventLoopImplBase;", "<init>", "()V", "", "closeQueue", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dequeue", "()Ljava/lang/Runnable;", "Lkotlin/coroutines/CoroutineContext;", "context", "block", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "task", "enqueue", "(Ljava/lang/Runnable;)V", "", "enqueueImpl", "(Ljava/lang/Runnable;)Z", "", "processNextEvent", "()J", "rescheduleAllDelayed", "resetAll", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "schedule", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V", "", "scheduleImpl", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I", "timeMillis", "Lkotlinx/coroutines/DisposableHandle;", "scheduleInvokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "shouldUnpark", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z", "shutdown", "value", "isCompleted", "()Z", "setCompleted", "(Z)V", "isEmpty", "getNextTime", "nextTime", "DelayedResumeTask", "DelayedRunnableTask", "DelayedTask", "DelayedTaskQueue", "kotlinx-coroutines-core", "Lkotlinx/coroutines/EventLoopImplPlatform;", "Lkotlinx/coroutines/Delay;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bg */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg.class */
public abstract class AbstractC20197bg extends AbstractC20202bh implements AbstractC20166au {

    /* renamed from: b */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f66644b = AtomicReferenceFieldUpdater.newUpdater(AbstractC20197bg.class, Object.class, "_queue");

    /* renamed from: d */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f66645d = AtomicReferenceFieldUpdater.newUpdater(AbstractC20197bg.class, Object.class, "_delayed");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "nanoTime", "", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V", "run", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.bg$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg$a.class */
    public final class C20198a extends AbstractRunnableC20200c {

        /* renamed from: c */
        private final AbstractC20308n<C20128v> f66647c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C20198a(long j, AbstractC20308n<? super C20128v> abstractC20308n) {
            super(j);
            AbstractC20197bg.this = r5;
            this.f66647c = abstractC20308n;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f66647c.mo791a(AbstractC20197bg.this, C20128v.f66529a);
        }

        @Override // kotlinx.coroutines.AbstractC20197bg.AbstractRunnableC20200c
        public final String toString() {
            return super.toString() + this.f66647c.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016R\u0012\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "nanoTime", "", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "(JLjava/lang/Runnable;)V", "run", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.bg$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg$b.class */
    public static final class C20199b extends AbstractRunnableC20200c {

        /* renamed from: a */
        private final Runnable f66648a;

        public C20199b(long j, Runnable runnable) {
            super(j);
            this.f66648a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f66648a.run();
        }

        @Override // kotlinx.coroutines.AbstractC20197bg.AbstractRunnableC20200c
        public final String toString() {
            return super.toString() + this.f66648a.toString();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\b \u0018��2\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020��0\u00032\u00020\u00042\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020��H\u0096\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u0007J\b\u0010$\u001a\u00020%H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R0\u0010\r\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f2\f\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006&"}, m4298d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "nanoTime", "", "(J)V", "_heap", "", "value", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "heap", "getHeap", "()Lkotlinx/coroutines/internal/ThreadSafeHeap;", "setHeap", "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V", "index", "", "getIndex", "()I", "setIndex", "(I)V", "compareTo", "other", "dispose", "", "scheduleTask", "now", "delayed", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "eventLoop", "Lkotlinx/coroutines/EventLoopImplBase;", "timeToExecute", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.bg$c */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg$c.class */
    public static abstract class AbstractRunnableC20200c implements Comparable<AbstractRunnableC20200c>, Runnable, AbstractC20192bb, AbstractC20264ab {

        /* renamed from: a */
        private Object f66649a;

        /* renamed from: b */
        public long f66650b;

        /* renamed from: c */
        private int f66651c = -1;

        public AbstractRunnableC20200c(long j) {
            this.f66650b = j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* JADX WARN: Type inference failed for: r1v18, types: [T extends kotlinx.coroutines.internal.ab & java.lang.Comparable<? super T>[], kotlinx.coroutines.internal.ab[]] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r8v6, types: [T extends kotlinx.coroutines.internal.ab & java.lang.Comparable<? super T>[]] */
        /* renamed from: a */
        public final int m993a(long j, C20201d c20201d, AbstractC20197bg abstractC20197bg) {
            C20296v c20296v;
            AbstractC20264ab[] abstractC20264abArr;
            synchronized (this) {
                Object obj = this.f66649a;
                c20296v = C20203bi.f66653a;
                if (obj == c20296v) {
                    return 2;
                }
                C20201d c20201d2 = c20201d;
                AbstractRunnableC20200c abstractRunnableC20200c = this;
                synchronized (c20201d2) {
                    AbstractRunnableC20200c m884d = c20201d2.m884d();
                    boolean z = true;
                    if (abstractC20197bg._isCompleted) {
                        return 1;
                    }
                    if (m884d == null) {
                        c20201d.f66652a = j;
                    } else {
                        ?? r0 = m884d.f66650b;
                        int i = ((r0 - j) > 0L ? 1 : ((r0 - j) == 0L ? 0 : -1));
                        ?? r6 = j;
                        if (i < 0) {
                            r6 = r0;
                        }
                        if (r6 - c20201d.f66652a > 0) {
                            c20201d.f66652a = r6;
                        }
                    }
                    if (this.f66650b - c20201d.f66652a < 0) {
                        this.f66650b = c20201d.f66652a;
                    }
                    if (C20159ao.m1083a()) {
                        if (abstractRunnableC20200c.mo881b() != null) {
                            z = false;
                        }
                        if (!z) {
                            throw new AssertionError();
                        }
                    }
                    abstractRunnableC20200c.mo882a(c20201d2);
                    AbstractC20264ab[] abstractC20264abArr2 = c20201d2.f66719b;
                    if (abstractC20264abArr2 == null) {
                        ?? r8 = new AbstractC20264ab[4];
                        c20201d2.f66719b = r8;
                        abstractC20264abArr = r8;
                    } else {
                        abstractC20264abArr = abstractC20264abArr2;
                        if (c20201d2._size >= abstractC20264abArr2.length) {
                            Object[] copyOf = Arrays.copyOf(abstractC20264abArr2, c20201d2._size * 2);
                            C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                            c20201d2.f66719b = (AbstractC20264ab[]) copyOf;
                            abstractC20264abArr = (AbstractC20264ab[]) copyOf;
                        }
                    }
                    int i2 = c20201d2._size;
                    c20201d2._size = i2 + 1;
                    abstractC20264abArr[i2] = abstractRunnableC20200c;
                    abstractRunnableC20200c.mo883a(i2);
                    c20201d2.m887b(i2);
                    return 0;
                }
            }
        }

        @Override // kotlinx.coroutines.AbstractC20192bb
        /* renamed from: a */
        public final void mo918a() {
            C20296v c20296v;
            C20296v c20296v2;
            synchronized (this) {
                Object obj = this.f66649a;
                c20296v = C20203bi.f66653a;
                if (obj == c20296v) {
                    return;
                }
                Object obj2 = obj;
                if (!(obj instanceof C20201d)) {
                    obj2 = null;
                }
                C20201d c20201d = (C20201d) obj2;
                if (c20201d != null) {
                    c20201d.m889a((C20201d) this);
                }
                c20296v2 = C20203bi.f66653a;
                this.f66649a = c20296v2;
            }
        }

        @Override // kotlinx.coroutines.internal.AbstractC20264ab
        /* renamed from: a */
        public final void mo883a(int i) {
            this.f66651c = i;
        }

        @Override // kotlinx.coroutines.internal.AbstractC20264ab
        /* renamed from: a */
        public final void mo882a(C20263aa<?> c20263aa) {
            C20296v c20296v;
            Object obj = this.f66649a;
            c20296v = C20203bi.f66653a;
            if (obj != c20296v) {
                this.f66649a = c20263aa;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        @Override // kotlinx.coroutines.internal.AbstractC20264ab
        /* renamed from: b */
        public final C20263aa<?> mo881b() {
            Object obj = this.f66649a;
            Object obj2 = obj;
            if (!(obj instanceof C20263aa)) {
                obj2 = null;
            }
            return (C20263aa) obj2;
        }

        @Override // kotlinx.coroutines.internal.AbstractC20264ab
        /* renamed from: c */
        public final int mo880c() {
            return this.f66651c;
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(AbstractRunnableC20200c abstractRunnableC20200c) {
            int i = ((this.f66650b - abstractRunnableC20200c.f66650b) > 0L ? 1 : ((this.f66650b - abstractRunnableC20200c.f66650b) == 0L ? 0 : -1));
            if (i > 0) {
                return 1;
            }
            return i < 0 ? -1 : 0;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f66650b + ']';
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\b��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "timeNow", "", "(J)V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.bg$d */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bg$d.class */
    public static final class C20201d extends C20263aa<AbstractRunnableC20200c> {

        /* renamed from: a */
        public long f66652a;

        public C20201d(long j) {
            this.f66652a = j;
        }
    }

    /* renamed from: a */
    private final boolean m1003a(AbstractRunnableC20200c abstractRunnableC20200c) {
        C20201d c20201d = (C20201d) this._delayed;
        return (c20201d != null ? c20201d.m888b() : null) == abstractRunnableC20200c;
    }

    /* renamed from: b */
    private final boolean m1001b(Runnable runnable) {
        C20296v c20296v;
        while (true) {
            Object obj = this._queue;
            if (this._isCompleted != 0) {
                return false;
            }
            if (obj == null) {
                if (f66644b.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof C20286n) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
                C20286n c20286n = (C20286n) obj;
                int m841a = c20286n.m841a((C20286n) runnable);
                if (m841a == 0) {
                    return true;
                }
                if (m841a == 1) {
                    f66644b.compareAndSet(this, obj, c20286n.m837d());
                } else if (m841a == 2) {
                    return false;
                }
            } else {
                c20296v = C20203bi.f66654b;
                if (obj == c20296v) {
                    return false;
                }
                C20286n c20286n2 = new C20286n(8, true);
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                c20286n2.m841a((C20286n) ((Runnable) obj));
                c20286n2.m841a((C20286n) runnable);
                if (f66644b.compareAndSet(this, obj, c20286n2)) {
                    return true;
                }
            }
        }
    }

    /* renamed from: c */
    private final int m999c(long j, AbstractRunnableC20200c abstractRunnableC20200c) {
        if (this._isCompleted != 0) {
            return 1;
        }
        C20201d c20201d = (C20201d) this._delayed;
        C20201d c20201d2 = c20201d;
        if (c20201d == null) {
            AbstractC20197bg abstractC20197bg = this;
            f66645d.compareAndSet(abstractC20197bg, null, new C20201d(j));
            Object obj = abstractC20197bg._delayed;
            C18524p.m3851a(obj);
            c20201d2 = (C20201d) obj;
        }
        return abstractRunnableC20200c.m993a(j, c20201d2, this);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: l */
    private final void m994l() {
        AbstractRunnableC20200c c;
        AbstractC20246co abstractC20246co = C20247cp.f66702a;
        char m909a = abstractC20246co != null ? abstractC20246co.m909a() : System.nanoTime();
        while (true) {
            C20201d c20201d = (C20201d) this._delayed;
            if (c20201d == null || (c = c20201d.m886c()) == null) {
                return;
            }
            m992b(m909a, c);
        }
    }

    /* renamed from: a */
    public AbstractC20192bb mo826a(long j, Runnable runnable, AbstractC18335f abstractC18335f) {
        return AbstractC20166au.C20167a.m1070a(j, runnable, abstractC18335f);
    }

    /* renamed from: a */
    public final void m1005a(long j, AbstractRunnableC20200c abstractRunnableC20200c) {
        int m999c = m999c(j, abstractRunnableC20200c);
        if (m999c == 0) {
            if (!m1003a(abstractRunnableC20200c)) {
                return;
            }
            m991k();
        } else if (m999c == 1) {
            m992b(j, abstractRunnableC20200c);
        } else if (m999c != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // kotlinx.coroutines.AbstractC20166au
    /* renamed from: a */
    public final void mo825a(long j, AbstractC20308n<? super C20128v> abstractC20308n) {
        long m989a = C20203bi.m989a(j);
        if (m989a < 4611686018427387903L) {
            AbstractC20246co abstractC20246co = C20247cp.f66702a;
            char m909a = abstractC20246co != null ? abstractC20246co.m909a() : System.nanoTime();
            AbstractRunnableC20200c c20198a = new C20198a(m989a + m909a, abstractC20308n);
            C20311q.m769a(abstractC20308n, c20198a);
            m1005a(m909a, c20198a);
        }
    }

    /* renamed from: a */
    public final void m1004a(Runnable runnable) {
        AbstractC20197bg abstractC20197bg = this;
        while (true) {
            AbstractC20197bg abstractC20197bg2 = abstractC20197bg;
            if (abstractC20197bg2.m1001b(runnable)) {
                abstractC20197bg2.m991k();
                return;
            }
            abstractC20197bg = RunnableC20161aq.f66567b;
        }
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: a */
    public final void mo763a(AbstractC18335f abstractC18335f, Runnable runnable) {
        m1004a(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // kotlinx.coroutines.AbstractC20196bf
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo1000c() {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AbstractC20197bg.mo1000c():long");
    }

    @Override // kotlinx.coroutines.AbstractC20196bf
    /* renamed from: d */
    public final boolean mo998d() {
        C20296v c20296v;
        if (!m1006h()) {
            return false;
        }
        C20201d c20201d = (C20201d) this._delayed;
        if (c20201d != null && !c20201d.m892a()) {
            return false;
        }
        Object obj = this._queue;
        if (obj == null) {
            return true;
        }
        if (obj instanceof C20286n) {
            return ((C20286n) obj).m845a();
        }
        c20296v = C20203bi.f66654b;
        return obj == c20296v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // kotlinx.coroutines.AbstractC20196bf
    /* renamed from: e */
    public final long mo997e() {
        AbstractRunnableC20200c b;
        C20296v c20296v;
        if (super.mo997e() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof C20286n)) {
                c20296v = C20203bi.f66654b;
                return obj == c20296v ? Long.MAX_VALUE : 0L;
            } else if (!((C20286n) obj).m845a()) {
                return 0L;
            }
        }
        C20201d c20201d = (C20201d) this._delayed;
        if (c20201d == null || (b = c20201d.m888b()) == null) {
            return Long.MAX_VALUE;
        }
        long j = b.f66650b;
        AbstractC20246co abstractC20246co = C20247cp.f66702a;
        long m909a = j - (abstractC20246co != null ? abstractC20246co.m909a() : System.nanoTime());
        if (m909a >= 0) {
            return m909a;
        }
        return 0L;
    }

    @Override // kotlinx.coroutines.AbstractC20196bf
    /* renamed from: i */
    protected final void mo996i() {
        C20296v c20296v;
        C20296v c20296v2;
        C20245cn c20245cn = C20245cn.f66700a;
        C20245cn.m910c();
        this._isCompleted = 1;
        if (!C20159ao.m1083a() || this._isCompleted != 0) {
            while (true) {
                Object obj = this._queue;
                if (obj != null) {
                    if (!(obj instanceof C20286n)) {
                        c20296v2 = C20203bi.f66654b;
                        if (obj == c20296v2) {
                            break;
                        }
                        C20286n c20286n = new C20286n(8, true);
                        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                        c20286n.m841a((C20286n) ((Runnable) obj));
                        if (f66644b.compareAndSet(this, obj, c20286n)) {
                            break;
                        }
                    } else {
                        ((C20286n) obj).m840b();
                        break;
                    }
                } else {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f66644b;
                    c20296v = C20203bi.f66654b;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, c20296v)) {
                        break;
                    }
                }
            }
            do {
            } while (mo1000c() <= 0);
            m994l();
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: j */
    public final void m995j() {
        this._queue = null;
        this._delayed = null;
    }
}
