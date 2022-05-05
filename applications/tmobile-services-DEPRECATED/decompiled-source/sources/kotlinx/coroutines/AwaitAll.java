package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018��*\u0004\b��\u0010\u0001:\u0002\u000b\fB\u001d\u0012\u0014\u0010\u0007\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028��0\u00060\u0005¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0086@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004R$\u0010\u0007\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028��0\u00060\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/AwaitAll;", "T", "", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lkotlinx/coroutines/Deferred;", "deferreds", "[Lkotlinx/coroutines/Deferred;", "<init>", "([Lkotlinx/coroutines/Deferred;)V", "AwaitAllNode", "DisposeHandlersOnCancel", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/AwaitAll.class */
public final class AwaitAll<T> {

    /* renamed from: b */
    static final AtomicIntegerFieldUpdater f21077b = AtomicIntegerFieldUpdater.newUpdater(AwaitAll.class, "notCompletedCount");

    /* renamed from: a */
    private final Deferred<T>[] f21078a;
    volatile int notCompletedCount;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00020\u0001B#\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\b0\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\b0\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR<\u0010\u0012\u001a\u000e\u0018\u00010\u000bR\b\u0012\u0004\u0012\u00028��0\f2\u0012\u0010\r\u001a\u000e\u0018\u00010\u000bR\b\u0012\u0004\u0012\u00028��0\f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "Lkotlinx/coroutines/JobNode;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/CancellableContinuation;", "", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "Lkotlinx/coroutines/AwaitAll;", FirebaseAnalytics.Param.VALUE, "getDisposer", "()Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "setDisposer", "(Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;)V", "disposer", "Lkotlinx/coroutines/DisposableHandle;", "handle", "Lkotlinx/coroutines/DisposableHandle;", "getHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setHandle", "(Lkotlinx/coroutines/DisposableHandle;)V", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/AwaitAll$AwaitAllNode.class */
    public final class AwaitAllNode extends JobNode<Job> {
        private volatile Object _disposer = null;
        @NotNull

        /* renamed from: j */
        public DisposableHandle f21079j;

        /* renamed from: k */
        private final CancellableContinuation<List<? extends T>> f21080k;

        /* JADX WARN: Multi-variable type inference failed */
        public AwaitAllNode(@NotNull CancellableContinuation<? super List<? extends T>> cancellableContinuation, @NotNull Job job) {
            super(job);
            this.f21080k = cancellableContinuation;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* renamed from: X */
        public void mo319X(@Nullable Throwable th) {
            if (th != null) {
                Object q = this.f21080k.mo1350q(th);
                if (q != null) {
                    this.f21080k.mo1365D(q);
                    AwaitAll<T>.DisposeHandlersOnCancel Y = m1383Y();
                    if (Y != null) {
                        Y.m1379c();
                        return;
                    }
                    return;
                }
                return;
            }
            if (AwaitAll.f21077b.decrementAndGet(AwaitAll.this) == 0) {
                CancellableContinuation<List<? extends T>> cancellableContinuation = this.f21080k;
                Deferred[] deferredArr = AwaitAll.this.f21078a;
                ArrayList arrayList = new ArrayList(deferredArr.length);
                for (Deferred deferred : deferredArr) {
                    arrayList.add(deferred.mo1295d());
                }
                Result.Companion companion = Result.f20418g;
                Result.m2481b(arrayList);
                cancellableContinuation.resumeWith(arrayList);
            }
        }

        @Nullable
        /* renamed from: Y */
        public final AwaitAll<T>.DisposeHandlersOnCancel m1383Y() {
            return (DisposeHandlersOnCancel) this._disposer;
        }

        @NotNull
        /* renamed from: Z */
        public final DisposableHandle m1382Z() {
            DisposableHandle disposableHandle = this.f21079j;
            if (disposableHandle != null) {
                return disposableHandle;
            }
            Intrinsics.m1814u("handle");
            throw null;
        }

        /* renamed from: a0 */
        public final void m1381a0(@Nullable AwaitAll<T>.DisposeHandlersOnCancel disposeHandlersOnCancel) {
            this._disposer = disposeHandlersOnCancel;
        }

        /* renamed from: b0 */
        public final void m1380b0(@NotNull DisposableHandle disposableHandle) {
            this.f21079j = disposableHandle;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            mo319X(th);
            return Unit.f20447a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018��2\u00020\u0001B\u001f\u0012\u0016\u0010\u000f\u001a\u0012\u0012\u000e\u0012\f0\rR\b\u0012\u0004\u0012\u00028��0\u000e0\f¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR&\u0010\u000f\u001a\u0012\u0012\u000e\u0012\f0\rR\b\u0012\u0004\u0012\u00028��0\u000e0\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "", "disposeAll", "()V", "", "cause", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "", "Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "Lkotlinx/coroutines/AwaitAll;", "nodes", "[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "<init>", "(Lkotlinx/coroutines/AwaitAll;[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel.class */
    public final class DisposeHandlersOnCancel extends CancelHandler {

        /* renamed from: f */
        private final AwaitAll<T>.AwaitAllNode[] f21082f;

        public DisposeHandlersOnCancel(@NotNull AwaitAll awaitAll, AwaitAll<T>.AwaitAllNode[] awaitAllNodeArr) {
            this.f21082f = awaitAllNodeArr;
        }

        @Override // kotlinx.coroutines.CancelHandlerBase
        /* renamed from: b */
        public void mo295b(@Nullable Throwable th) {
            m1379c();
        }

        /* renamed from: c */
        public final void m1379c() {
            for (AwaitAll<T>.AwaitAllNode awaitAllNode : this.f21082f) {
                awaitAllNode.m1382Z().dispose();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            mo295b(th);
            return Unit.f20447a;
        }

        @NotNull
        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f21082f + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AwaitAll(@NotNull Deferred<? extends T>[] deferredArr) {
        this.f21078a = deferredArr;
        this.notCompletedCount = deferredArr.length;
    }

    @Nullable
    /* renamed from: b */
    public final Object m1384b(@NotNull Continuation<? super List<? extends T>> continuation) {
        Continuation c;
        Object d;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(c, 1);
        cancellableContinuationImpl.m1345v();
        int length = this.f21078a.length;
        AwaitAllNode[] awaitAllNodeArr = new AwaitAllNode[length];
        for (int i = 0; i < length; i++) {
            Deferred deferred = this.f21078a[Boxing.m1917c(i).intValue()];
            deferred.start();
            AwaitAllNode awaitAllNode = new AwaitAllNode(cancellableContinuationImpl, deferred);
            awaitAllNode.m1380b0(deferred.mo1123B(awaitAllNode));
            awaitAllNodeArr[i] = awaitAllNode;
        }
        AwaitAll<T>.DisposeHandlersOnCancel disposeHandlersOnCancel = new DisposeHandlersOnCancel(this, awaitAllNodeArr);
        for (int i2 = 0; i2 < length; i2++) {
            awaitAllNodeArr[i2].m1381a0(disposeHandlersOnCancel);
        }
        if (cancellableContinuationImpl.mo1342y()) {
            disposeHandlersOnCancel.m1379c();
        } else {
            cancellableContinuationImpl.mo1351p(disposeHandlersOnCancel);
        }
        Object t = cancellableContinuationImpl.m1347t();
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (t == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return t;
    }
}
