package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.internal.AtomicDesc;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.AtomicOp;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0016\b��\u0018��2\u00020\u00012\u00020\u0002:\u0006$%&'()B\u000f\u0012\u0006\u0010!\u001a\u00020\u0005¢\u0006\u0004\b\"\u0010#J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096@ø\u0001��¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0082@ø\u0001��¢\u0006\u0004\b\u000b\u0010\nJT\u0010\u0012\u001a\u00020\b\"\u0004\b��\u0010\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\"\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0016ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0017\u0010\u0007J\u0019\u0010\u0018\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u00058@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001bR$\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00010\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl;", "Lkotlinx/coroutines/sync/Mutex;", "Lkotlinx/coroutines/selects/SelectClause2;", "", "owner", "", "holdsLock", "(Ljava/lang/Object;)Z", "", "lock", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lockSuspend", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", "registerSelectClause2", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "toString", "()Ljava/lang/String;", "tryLock", "unlock", "(Ljava/lang/Object;)V", "isLocked", "()Z", "isLockedEmptyQueueState$kotlinx_coroutines_core", "isLockedEmptyQueueState", "getOnLock", "()Lkotlinx/coroutines/selects/SelectClause2;", "onLock", "locked", "<init>", "(Z)V", "LockCont", "LockSelect", "LockWaiter", "LockedQueue", "TryLockDesc", "UnlockOp", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexImpl.class */
public final class MutexImpl implements Mutex, SelectClause2<Object, Mutex> {

    /* renamed from: f */
    static final AtomicReferenceFieldUpdater f24056f = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "_state");
    volatile Object _state;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018��2\u00020\u0001B\u001f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$LockCont;", "kotlinx/coroutines/sync/MutexImpl$LockWaiter", "", "token", "", "completeResumeLockWaiter", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "tryResumeLockWaiter", "()Ljava/lang/Object;", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "owner", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexImpl$LockCont.class */
    public static final class LockCont extends LockWaiter {
        @JvmField
        @NotNull

        /* renamed from: j */
        public final CancellableContinuation<Unit> f24057j;

        /* JADX WARN: Multi-variable type inference failed */
        public LockCont(@Nullable Object obj, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
            super(obj);
            this.f24057j = cancellableContinuation;
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.LockWaiter
        /* renamed from: X */
        public void mo287X(@NotNull Object obj) {
            this.f24057j.mo1365D(obj);
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.LockWaiter
        @Nullable
        /* renamed from: Y */
        public Object mo286Y() {
            return CancellableContinuation.DefaultImpls.m1368a(this.f24057j, Unit.f20447a, null, 2, null);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "LockCont[" + this.f24061i + ", " + this.f24057j + ']';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n��\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002BN\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028��0\u0014\u0012\"\u0010\u0010\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00030\rø\u0001��¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fR5\u0010\u0010\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00030\r8\u0006@\u0007X\u0087\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028��0\u00148\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$LockSelect;", "R", "kotlinx/coroutines/sync/MutexImpl$LockWaiter", "", "token", "", "completeResumeLockWaiter", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "tryResumeLockWaiter", "()Ljava/lang/Object;", "Lkotlin/Function2;", "Lkotlinx/coroutines/sync/Mutex;", "Lkotlin/coroutines/Continuation;", "block", "Lkotlin/jvm/functions/Function2;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "owner", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/sync/Mutex;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexImpl$LockSelect.class */
    private static final class LockSelect<R> extends LockWaiter {
        @JvmField
        @NotNull

        /* renamed from: j */
        public final Mutex f24058j;
        @JvmField
        @NotNull

        /* renamed from: k */
        public final SelectInstance<R> f24059k;
        @JvmField
        @NotNull

        /* renamed from: l */
        public final Function2<Mutex, Continuation<? super R>, Object> f24060l;

        /* JADX WARN: Multi-variable type inference failed */
        public LockSelect(@Nullable Object obj, @NotNull Mutex mutex, @NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super Mutex, ? super Continuation<? super R>, ? extends Object> function2) {
            super(obj);
            this.f24058j = mutex;
            this.f24059k = selectInstance;
            this.f24060l = function2;
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.LockWaiter
        /* renamed from: X */
        public void mo287X(@NotNull Object obj) {
            Symbol symbol;
            if (DebugKt.m1308a()) {
                symbol = MutexKt.f24074c;
                if (!(obj == symbol)) {
                    throw new AssertionError();
                }
            }
            ContinuationKt.m1934b(this.f24060l, this.f24058j, this.f24059k.mo312k());
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.LockWaiter
        @Nullable
        /* renamed from: Y */
        public Object mo286Y() {
            return this.f24059k.mo314e() ? MutexKt.f24074c : null;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "LockSelect[" + this.f24061i + ", " + this.f24058j + ", " + this.f24059k + ']';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\n\b\"\u0018��2\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u0007J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H&¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\n\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "", "token", "", "completeResumeLockWaiter", "(Ljava/lang/Object;)V", "dispose", "()V", "tryResumeLockWaiter", "()Ljava/lang/Object;", "owner", "Ljava/lang/Object;", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexImpl$LockWaiter.class */
    private static abstract class LockWaiter extends LockFreeLinkedListNode implements DisposableHandle {
        @JvmField
        @Nullable

        /* renamed from: i */
        public final Object f24061i;

        public LockWaiter(@Nullable Object obj) {
            this.f24061i = obj;
        }

        /* renamed from: X */
        public abstract void mo287X(@NotNull Object obj);

        @Nullable
        /* renamed from: Y */
        public abstract Object mo286Y();

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            mo521S();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "", "toString", "()Ljava/lang/String;", "", "owner", "Ljava/lang/Object;", "<init>", "(Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexImpl$LockedQueue.class */
    public static final class LockedQueue extends LockFreeLinkedListHead {
        @JvmField
        @NotNull

        /* renamed from: i */
        public Object f24062i;

        public LockedQueue(@NotNull Object obj) {
            this.f24062i = obj;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "LockedQueue[" + this.f24062i + ']';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018��2\u00020\u0001:\u0001\u0012B\u0019\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;", "Lkotlinx/coroutines/internal/AtomicDesc;", "Lkotlinx/coroutines/internal/AtomicOp;", "op", "", "failure", "", "complete", "(Lkotlinx/coroutines/internal/AtomicOp;Ljava/lang/Object;)V", "prepare", "(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;", "Lkotlinx/coroutines/sync/MutexImpl;", "mutex", "Lkotlinx/coroutines/sync/MutexImpl;", "owner", "Ljava/lang/Object;", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V", "PrepareOp", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexImpl$TryLockDesc.class */
    private static final class TryLockDesc extends AtomicDesc {
        @JvmField
        @NotNull

        /* renamed from: b */
        public final MutexImpl f24063b;
        @JvmField
        @Nullable

        /* renamed from: c */
        public final Object f24064c;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018��2\u00020\u0001B\u0013\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0004\u0010\u0005R \u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00068\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;", "Lkotlinx/coroutines/internal/OpDescriptor;", "", "affected", "perform", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/AtomicOp;", "atomicOp", "Lkotlinx/coroutines/internal/AtomicOp;", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;Lkotlinx/coroutines/internal/AtomicOp;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp.class */
        private final class PrepareOp extends OpDescriptor {
            @NotNull

            /* renamed from: a */
            private final AtomicOp<?> f24065a;

            public PrepareOp(@NotNull TryLockDesc tryLockDesc, AtomicOp<?> atomicOp) {
                this.f24065a = atomicOp;
            }

            @Override // kotlinx.coroutines.internal.OpDescriptor
            @NotNull
            /* renamed from: a */
            public AtomicOp<?> mo283a() {
                return this.f24065a;
            }

            @Override // kotlinx.coroutines.internal.OpDescriptor
            @Nullable
            /* renamed from: c */
            public Object mo282c(@Nullable Object obj) {
                Object a = mo283a().m579g() ? MutexKt.f24078g : mo283a();
                if (obj != null) {
                    MutexImpl.f24056f.compareAndSet((MutexImpl) obj, this, a);
                    return null;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.sync.MutexImpl");
            }
        }

        public TryLockDesc(@NotNull MutexImpl mutexImpl, @Nullable Object obj) {
            this.f24063b = mutexImpl;
            this.f24064c = obj;
        }

        @Override // kotlinx.coroutines.internal.AtomicDesc
        /* renamed from: a */
        public void mo285a(@NotNull AtomicOp<?> atomicOp, @Nullable Object obj) {
            Empty empty;
            if (obj != null) {
                empty = MutexKt.f24078g;
            } else {
                Object obj2 = this.f24064c;
                empty = obj2 == null ? MutexKt.f24077f : new Empty(obj2);
            }
            MutexImpl.f24056f.compareAndSet(this.f24063b, atomicOp, empty);
        }

        @Override // kotlinx.coroutines.internal.AtomicDesc
        @Nullable
        /* renamed from: c */
        public Object mo284c(@NotNull AtomicOp<?> atomicOp) {
            Empty empty;
            Symbol symbol;
            PrepareOp prepareOp = new PrepareOp(this, atomicOp);
            MutexImpl mutexImpl = this.f24063b;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.f24056f;
            empty = MutexKt.f24078g;
            if (atomicReferenceFieldUpdater.compareAndSet(mutexImpl, empty, prepareOp)) {
                return prepareOp.mo282c(this.f24063b);
            }
            symbol = MutexKt.f24072a;
            return symbol;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;", "Lkotlinx/coroutines/internal/AtomicOp;", "Lkotlinx/coroutines/sync/MutexImpl;", "affected", "", "failure", "", "complete", "(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V", "prepare", "(Lkotlinx/coroutines/sync/MutexImpl;)Ljava/lang/Object;", "Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;", "queue", "Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexImpl$UnlockOp.class */
    private static final class UnlockOp extends AtomicOp<MutexImpl> {
        @JvmField
        @NotNull

        /* renamed from: b */
        public final LockedQueue f24066b;

        public UnlockOp(@NotNull LockedQueue lockedQueue) {
            this.f24066b = lockedQueue;
        }

        /* renamed from: i */
        public void mo281d(@NotNull MutexImpl mutexImpl, @Nullable Object obj) {
            MutexImpl.f24056f.compareAndSet(mutexImpl, this, obj == null ? MutexKt.f24078g : this.f24066b);
        }

        @Nullable
        /* renamed from: j */
        public Object mo280h(@NotNull MutexImpl mutexImpl) {
            return this.f24066b.m540X() ? null : MutexKt.f24073b;
        }
    }

    @Override // kotlinx.coroutines.sync.Mutex
    @Nullable
    /* renamed from: a */
    public Object mo294a(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        if (m291d(obj)) {
            return Unit.f20447a;
        }
        Object c = m292c(obj, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return c == d ? c : Unit.f20447a;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    /* renamed from: b */
    public void mo293b(@Nullable Object obj) {
        Empty empty;
        Symbol symbol;
        while (true) {
            Object obj2 = this._state;
            boolean z = true;
            boolean z2 = true;
            boolean z3 = true;
            if (obj2 instanceof Empty) {
                if (obj == null) {
                    Object obj3 = ((Empty) obj2).f24055a;
                    symbol = MutexKt.f24076e;
                    if (obj3 == symbol) {
                        z3 = false;
                    }
                    if (!z3) {
                        throw new IllegalStateException("Mutex is not locked".toString());
                    }
                } else {
                    Empty empty2 = (Empty) obj2;
                    if (empty2.f24055a != obj) {
                        z = false;
                    }
                    if (!z) {
                        throw new IllegalStateException(("Mutex is locked by " + empty2.f24055a + " but expected " + obj).toString());
                    }
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f24056f;
                empty = MutexKt.f24078g;
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, empty)) {
                    return;
                }
            } else if (obj2 instanceof OpDescriptor) {
                ((OpDescriptor) obj2).mo282c(this);
            } else if (obj2 instanceof LockedQueue) {
                if (obj != null) {
                    LockedQueue lockedQueue = (LockedQueue) obj2;
                    if (lockedQueue.f24062i != obj) {
                        z2 = false;
                    }
                    if (!z2) {
                        throw new IllegalStateException(("Mutex is locked by " + lockedQueue.f24062i + " but expected " + obj).toString());
                    }
                }
                LockedQueue lockedQueue2 = (LockedQueue) obj2;
                LockFreeLinkedListNode T = lockedQueue2.m520T();
                if (T == null) {
                    UnlockOp unlockOp = new UnlockOp(lockedQueue2);
                    if (f24056f.compareAndSet(this, obj2, unlockOp) && unlockOp.mo282c(this) == null) {
                        return;
                    }
                } else {
                    LockWaiter lockWaiter = (LockWaiter) T;
                    Object Y = lockWaiter.mo286Y();
                    if (Y != null) {
                        Object obj4 = lockWaiter.f24061i;
                        if (obj4 == null) {
                            obj4 = MutexKt.f24075d;
                        }
                        lockedQueue2.f24062i = obj4;
                        lockWaiter.mo287X(Y);
                        return;
                    }
                }
            } else {
                throw new IllegalStateException(("Illegal state " + obj2).toString());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fc, code lost:
        r0 = r0.m1347t();
        r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.m1920d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0105, code lost:
        if (r0 != r1) goto L_0x010c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0108, code lost:
        kotlin.coroutines.jvm.internal.DebugProbesKt.m1904c(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x010d, code lost:
        return r0;
     */
    @org.jetbrains.annotations.Nullable
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m292c(@org.jetbrains.annotations.Nullable final java.lang.Object r11, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.MutexImpl.m292c(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* renamed from: d */
    public boolean m291d(@Nullable Object obj) {
        Symbol symbol;
        while (true) {
            Object obj2 = this._state;
            boolean z = true;
            if (obj2 instanceof Empty) {
                Object obj3 = ((Empty) obj2).f24055a;
                symbol = MutexKt.f24076e;
                if (obj3 != symbol) {
                    return false;
                }
                if (f24056f.compareAndSet(this, obj2, obj == null ? MutexKt.f24077f : new Empty(obj))) {
                    return true;
                }
            } else if (obj2 instanceof LockedQueue) {
                if (((LockedQueue) obj2).f24062i == obj) {
                    z = false;
                }
                if (z) {
                    return false;
                }
                throw new IllegalStateException(("Already locked by " + obj).toString());
            } else if (obj2 instanceof OpDescriptor) {
                ((OpDescriptor) obj2).mo282c(this);
            } else {
                throw new IllegalStateException(("Illegal state " + obj2).toString());
            }
        }
    }

    @NotNull
    public String toString() {
        while (true) {
            Object obj = this._state;
            if (obj instanceof Empty) {
                return "Mutex[" + ((Empty) obj).f24055a + ']';
            } else if (obj instanceof OpDescriptor) {
                ((OpDescriptor) obj).mo282c(this);
            } else if (obj instanceof LockedQueue) {
                return "Mutex[" + ((LockedQueue) obj).f24062i + ']';
            } else {
                throw new IllegalStateException(("Illegal state " + obj).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.selects.SelectClause2
    /* renamed from: z */
    public <R> void mo290z(@NotNull SelectInstance<? super R> selectInstance, @Nullable Object obj, @NotNull Function2<? super Mutex, ? super Continuation<? super R>, ? extends Object> function2) {
        Symbol symbol;
        Symbol symbol2;
        while (!selectInstance.mo313j()) {
            final Object obj2 = this._state;
            if (obj2 instanceof Empty) {
                Empty empty = (Empty) obj2;
                Object obj3 = empty.f24055a;
                symbol = MutexKt.f24076e;
                if (obj3 != symbol) {
                    f24056f.compareAndSet(this, obj2, new LockedQueue(empty.f24055a));
                } else {
                    Object v = selectInstance.mo310v(new TryLockDesc(this, obj));
                    if (v == null) {
                        UndispatchedKt.m395d(function2, this, selectInstance.mo312k());
                        return;
                    } else if (v != SelectKt.m306d()) {
                        symbol2 = MutexKt.f24072a;
                        if (!(v == symbol2 || v == AtomicKt.f23891b)) {
                            throw new IllegalStateException(("performAtomicTrySelect(TryLockDesc) returned " + v).toString());
                        }
                    } else {
                        return;
                    }
                }
            } else if (obj2 instanceof LockedQueue) {
                LockedQueue lockedQueue = (LockedQueue) obj2;
                boolean z = false;
                if (lockedQueue.f24062i != obj) {
                    final LockSelect lockSelect = new LockSelect(obj, this, selectInstance, function2);
                    LockFreeLinkedListNode.CondAddOp mutexImpl$registerSelectClause2$$inlined$addLastIf$1 = new LockFreeLinkedListNode.CondAddOp(lockSelect, lockSelect, this, obj2) { // from class: kotlinx.coroutines.sync.MutexImpl$registerSelectClause2$$inlined$addLastIf$1

                        /* renamed from: d */
                        final /* synthetic */ MutexImpl f24070d;

                        /* renamed from: e */
                        final /* synthetic */ Object f24071e;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(lockSelect);
                            this.f24070d = this;
                            this.f24071e = obj2;
                        }

                        @Nullable
                        /* renamed from: j */
                        public Object mo280h(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
                            return this.f24070d._state == this.f24071e ? null : LockFreeLinkedListKt.m539a();
                        }
                    };
                    while (true) {
                        int W = lockedQueue.m525O().m517W(lockSelect, lockedQueue, mutexImpl$registerSelectClause2$$inlined$addLastIf$1);
                        if (W != 1) {
                            if (W == 2) {
                                break;
                            }
                        } else {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        selectInstance.mo316A(lockSelect);
                        return;
                    }
                } else {
                    throw new IllegalStateException(("Already locked by " + obj).toString());
                }
            } else if (obj2 instanceof OpDescriptor) {
                ((OpDescriptor) obj2).mo282c(this);
            } else {
                throw new IllegalStateException(("Illegal state " + obj2).toString());
            }
        }
    }
}
