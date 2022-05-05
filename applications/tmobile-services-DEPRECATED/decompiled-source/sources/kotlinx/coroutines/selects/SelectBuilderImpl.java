package kotlinx.coroutines.selects;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CompletedExceptionallyKt;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobCancellingNode;
import kotlinx.coroutines.internal.AtomicDesc;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.AtomicOp;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��ª\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0001\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0004WXYZB\u0015\u0012\f\u0010S\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0004\bU\u0010VJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ.\u0010\u0012\u001a\u00020\t2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u000eH\u0082\b¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\n\u0018\u00010\u0016j\u0004\u0018\u0001`\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001e\u0010\rJ8\u0010\"\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001f2\u001c\u0010\u0011\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u000f0!H\u0016ø\u0001��¢\u0006\u0004\b\"\u0010#J\u0019\u0010&\u001a\u0004\u0018\u00010\u000f2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u001aH\u0016¢\u0006\u0004\b)\u0010\u001dJ \u0010,\u001a\u00020\t2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028��0*H\u0016ø\u0001��¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00102\u001a\u000201H\u0016¢\u0006\u0004\b2\u00103J\u001b\u00106\u001a\u0004\u0018\u00010\u000f2\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b6\u00107J5\u00109\u001a\u00020\t*\u0002082\u001c\u0010\u0011\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u000f0!H\u0096\u0002ø\u0001��¢\u0006\u0004\b9\u0010:JG\u00109\u001a\u00020\t\"\u0004\b\u0001\u0010;*\b\u0012\u0004\u0012\u00028\u00010<2\"\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u000f0=H\u0096\u0002ø\u0001��¢\u0006\u0004\b9\u0010>J[\u00109\u001a\u00020\t\"\u0004\b\u0001\u0010?\"\u0004\b\u0002\u0010;*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020@2\u0006\u0010A\u001a\u00028\u00012\"\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u000f0=H\u0096\u0002ø\u0001��¢\u0006\u0004\b9\u0010BR\u001e\u0010F\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`C8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER\u001c\u0010I\u001a\b\u0012\u0004\u0012\u00028��0\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0016\u0010M\u001a\u00020J8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bK\u0010LR\u0016\u0010N\u001a\u0002018V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bN\u00103R(\u0010R\u001a\u0004\u0018\u00010\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u00078B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010\u000bR\u001c\u0010S\u001a\b\u0012\u0004\u0012\u00028��0\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010T\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006["}, d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl;", "R", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlinx/coroutines/selects/SelectInstance;", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "Lkotlinx/coroutines/DisposableHandle;", "handle", "", "disposeOnSelect", "(Lkotlinx/coroutines/DisposableHandle;)V", "doAfterSelect", "()V", "Lkotlin/Function0;", "", FirebaseAnalytics.Param.VALUE, "block", "doResume", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "getResult", "()Ljava/lang/Object;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", "e", "handleBuilderException", "(Ljava/lang/Throwable;)V", "initCancellability", "", "timeMillis", "Lkotlin/Function1;", "onTimeout", "(JLkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/AtomicDesc;", "desc", "performAtomicTrySelect", "(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;", "exception", "resumeSelectWithException", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "", "trySelect", "()Z", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "trySelectOther", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectClause0;", "invoke", "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/SelectClause1;", "Lkotlin/Function2;", "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/SelectClause2;", "param", "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "getCompletion", "()Lkotlin/coroutines/Continuation;", "completion", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "isSelected", "getParentHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setParentHandle", "parentHandle", "uCont", "Lkotlin/coroutines/Continuation;", "<init>", "(Lkotlin/coroutines/Continuation;)V", "AtomicSelectOp", "DisposeNode", "PairSelectOp", "SelectOnCancelling", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@PublishedApi
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl.class */
public final class SelectBuilderImpl<R> extends LockFreeLinkedListHead implements SelectBuilder<R>, SelectInstance<R>, Continuation<R>, CoroutineStackFrame {

    /* renamed from: j */
    static final AtomicReferenceFieldUpdater f24018j = AtomicReferenceFieldUpdater.newUpdater(SelectBuilderImpl.class, Object.class, "_state");

    /* renamed from: k */
    static final AtomicReferenceFieldUpdater f24019k = AtomicReferenceFieldUpdater.newUpdater(SelectBuilderImpl.class, Object.class, "_result");
    volatile Object _result;

    /* renamed from: i */
    private final Continuation<R> f24020i;
    volatile Object _state = SelectKt.m305e();
    private volatile Object _parentHandle = null;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B\u001b\u0012\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ#\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\b\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\n\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00168\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001a\u001a\u00020\u00198\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;", "Lkotlinx/coroutines/internal/AtomicOp;", "", "affected", "failure", "", "complete", "(Ljava/lang/Object;Ljava/lang/Object;)V", "completeSelect", "(Ljava/lang/Object;)V", "prepare", "(Ljava/lang/Object;)Ljava/lang/Object;", "prepareSelectOp", "()Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "undoPrepare", "()V", "Lkotlinx/coroutines/internal/AtomicDesc;", "desc", "Lkotlinx/coroutines/internal/AtomicDesc;", "Lkotlinx/coroutines/selects/SelectBuilderImpl;", "impl", "Lkotlinx/coroutines/selects/SelectBuilderImpl;", "", "opSequence", "J", "getOpSequence", "()J", "<init>", "(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp.class */
    public static final class AtomicSelectOp extends AtomicOp<Object> {

        /* renamed from: b */
        private final long f24021b;
        @JvmField
        @NotNull

        /* renamed from: c */
        public final SelectBuilderImpl<?> f24022c;
        @JvmField
        @NotNull

        /* renamed from: d */
        public final AtomicDesc f24023d;

        public AtomicSelectOp(@NotNull SelectBuilderImpl<?> selectBuilderImpl, @NotNull AtomicDesc atomicDesc) {
            SeqNumber seqNumber;
            this.f24022c = selectBuilderImpl;
            this.f24023d = atomicDesc;
            seqNumber = SelectKt.f24033e;
            this.f24021b = seqNumber.m304a();
            this.f24023d.m582d(this);
        }

        /* renamed from: i */
        private final void m322i(Object obj) {
            boolean z = obj == null;
            if (SelectBuilderImpl.f24018j.compareAndSet(this.f24022c, this, z ? null : SelectKt.m305e()) && z) {
                this.f24022c.m329Z();
            }
        }

        /* renamed from: j */
        private final Object m321j() {
            SelectBuilderImpl<?> selectBuilderImpl = this.f24022c;
            while (true) {
                Object obj = selectBuilderImpl._state;
                if (obj == this) {
                    return null;
                }
                if (obj instanceof OpDescriptor) {
                    ((OpDescriptor) obj).mo282c(this.f24022c);
                } else if (obj != SelectKt.m305e()) {
                    return SelectKt.m306d();
                } else {
                    if (SelectBuilderImpl.f24018j.compareAndSet(this.f24022c, SelectKt.m305e(), this)) {
                        return null;
                    }
                }
            }
        }

        /* renamed from: k */
        private final void m320k() {
            SelectBuilderImpl.f24018j.compareAndSet(this.f24022c, this, SelectKt.m305e());
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        /* renamed from: d */
        public void mo281d(@Nullable Object obj, @Nullable Object obj2) {
            m322i(obj2);
            this.f24023d.mo285a(this, obj2);
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        /* renamed from: f */
        public long mo323f() {
            return this.f24021b;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        @Nullable
        /* renamed from: h */
        public Object mo280h(@Nullable Object obj) {
            Object j;
            if (obj == null && (j = m321j()) != null) {
                return j;
            }
            try {
                return this.f24023d.mo284c(this);
            } catch (Throwable th) {
                if (obj == null) {
                    m320k();
                }
                throw th;
            }
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        @NotNull
        public String toString() {
            return "AtomicSelectOp(sequence=" + mo323f() + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/DisposableHandle;", "handle", "Lkotlinx/coroutines/DisposableHandle;", "<init>", "(Lkotlinx/coroutines/DisposableHandle;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode.class */
    public static final class DisposeNode extends LockFreeLinkedListNode {
        @JvmField
        @NotNull

        /* renamed from: i */
        public final DisposableHandle f24024i;

        public DisposeNode(@NotNull DisposableHandle disposableHandle) {
            this.f24024i = disposableHandle;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0004\u0010\u0005R\u001c\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u000b\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;", "Lkotlinx/coroutines/internal/OpDescriptor;", "", "affected", "perform", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/AtomicOp;", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "atomicOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "<init>", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp.class */
    public static final class PairSelectOp extends OpDescriptor {
        @JvmField
        @NotNull

        /* renamed from: a */
        public final LockFreeLinkedListNode.PrepareOp f24025a;

        public PairSelectOp(@NotNull LockFreeLinkedListNode.PrepareOp prepareOp) {
            this.f24025a = prepareOp;
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        @Nullable
        /* renamed from: a */
        public AtomicOp<?> mo283a() {
            return this.f24025a.mo283a();
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        @Nullable
        /* renamed from: c */
        public Object mo282c(@Nullable Object obj) {
            if (obj != null) {
                SelectBuilderImpl selectBuilderImpl = (SelectBuilderImpl) obj;
                this.f24025a.m513d();
                Object e = this.f24025a.mo283a().m580e(null);
                SelectBuilderImpl.f24018j.compareAndSet(selectBuilderImpl, this, e == null ? this.f24025a.f23922c : SelectKt.m305e());
                return e;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.selects.SelectBuilderImpl<*>");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;", "Lkotlinx/coroutines/JobCancellingNode;", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling.class */
    public final class SelectOnCancelling extends JobCancellingNode<Job> {
        public SelectOnCancelling(@NotNull Job job) {
            super(job);
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* renamed from: X */
        public void mo319X(@Nullable Throwable th) {
            if (SelectBuilderImpl.this.mo314e()) {
                SelectBuilderImpl.this.mo311u(this.f21203i.mo1119m());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            mo319X(th);
            return Unit.f20447a;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        @NotNull
        public String toString() {
            return "SelectOnCancelling[" + SelectBuilderImpl.this + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SelectBuilderImpl(@NotNull Continuation<? super R> continuation) {
        Object obj;
        this.f24020i = continuation;
        obj = SelectKt.f24031c;
        this._result = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public final void m329Z() {
        DisposableHandle a0 = m328a0();
        if (a0 != null) {
            a0.dispose();
        }
        Object M = m527M();
        if (M != null) {
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) M; !Intrinsics.m1834a(lockFreeLinkedListNode, this); lockFreeLinkedListNode = lockFreeLinkedListNode.m526N()) {
                if (lockFreeLinkedListNode instanceof DisposeNode) {
                    ((DisposeNode) lockFreeLinkedListNode).f24024i.dispose();
                }
            }
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    /* renamed from: a0 */
    private final DisposableHandle m328a0() {
        return (DisposableHandle) this._parentHandle;
    }

    /* renamed from: d0 */
    private final void m325d0() {
        Job job = (Job) getContext().get(Job.f21198d);
        if (job != null) {
            DisposableHandle d = Job.DefaultImpls.m1223d(job, true, false, new SelectOnCancelling(job), 2, null);
            m324e0(d);
            if (mo313j()) {
                d.dispose();
            }
        }
    }

    /* renamed from: e0 */
    private final void m324e0(DisposableHandle disposableHandle) {
        this._parentHandle = disposableHandle;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    /* renamed from: A */
    public void mo316A(@NotNull DisposableHandle disposableHandle) {
        DisposeNode disposeNode = new DisposeNode(disposableHandle);
        if (!mo313j()) {
            m533G(disposeNode);
            if (!mo313j()) {
                return;
            }
        }
        disposableHandle.dispose();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.SelectBuilder
    /* renamed from: B */
    public <Q> void mo303B(@NotNull SelectClause1<? extends Q> selectClause1, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        selectClause1.mo317f(this, function2);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    @Nullable
    /* renamed from: b */
    public Object mo315b(@Nullable LockFreeLinkedListNode.PrepareOp prepareOp) {
        while (true) {
            Object obj = this._state;
            if (obj == SelectKt.m305e()) {
                if (prepareOp == null) {
                    if (f24018j.compareAndSet(this, SelectKt.m305e(), null)) {
                        break;
                    }
                } else {
                    PairSelectOp pairSelectOp = new PairSelectOp(prepareOp);
                    if (f24018j.compareAndSet(this, SelectKt.m305e(), pairSelectOp)) {
                        Object c = pairSelectOp.mo282c(this);
                        if (c != null) {
                            return c;
                        }
                    }
                }
            } else if (obj instanceof OpDescriptor) {
                if (prepareOp != null) {
                    AtomicOp<?> a = prepareOp.mo283a();
                    if ((a instanceof AtomicSelectOp) && ((AtomicSelectOp) a).f24022c == this) {
                        throw new IllegalStateException("Cannot use matching select clauses on the same object".toString());
                    } else if (a.m473b((OpDescriptor) obj)) {
                        return AtomicKt.f23891b;
                    }
                }
                ((OpDescriptor) obj).mo282c(this);
            } else if (prepareOp != null && obj == prepareOp.f23922c) {
                return CancellableContinuationImplKt.f21113a;
            } else {
                return null;
            }
        }
        m329Z();
        return CancellableContinuationImplKt.f21113a;
    }

    @PublishedApi
    @Nullable
    /* renamed from: b0 */
    public final Object m327b0() {
        Object obj;
        Object obj2;
        Object obj3;
        Object d;
        Object d2;
        if (!mo313j()) {
            m325d0();
        }
        Object obj4 = this._result;
        Object obj5 = obj4;
        obj = SelectKt.f24031c;
        if (obj4 == obj) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f24019k;
            obj3 = SelectKt.f24031c;
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, d)) {
                d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                return d2;
            }
            obj5 = this._result;
        }
        obj2 = SelectKt.f24032d;
        if (obj5 == obj2) {
            throw new IllegalStateException("Already resumed");
        } else if (!(obj5 instanceof CompletedExceptionally)) {
            return obj5;
        } else {
            throw ((CompletedExceptionally) obj5).f21127a;
        }
    }

    @PublishedApi
    /* renamed from: c0 */
    public final void m326c0(@NotNull Throwable th) {
        if (mo314e()) {
            Result.Companion companion = Result.f20418g;
            Object a = ResultKt.m2473a(th);
            Result.m2481b(a);
            resumeWith(a);
        } else if (!(th instanceof CancellationException)) {
            Object b0 = m327b0();
            if (b0 instanceof CompletedExceptionally) {
                Throwable th2 = ((CompletedExceptionally) b0).f21127a;
                if (DebugKt.m1305d()) {
                    th2 = StackTraceRecoveryKt.m444m(th2);
                }
                if (th2 == (!DebugKt.m1305d() ? th : StackTraceRecoveryKt.m444m(th))) {
                    return;
                }
            }
            CoroutineExceptionHandlerKt.m1318a(getContext(), th);
        }
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    /* renamed from: e */
    public boolean mo314e() {
        boolean z;
        Object b = mo315b(null);
        if (b == CancellableContinuationImplKt.f21113a) {
            z = true;
        } else if (b == null) {
            z = false;
        } else {
            throw new IllegalStateException(("Unexpected trySelectIdempotent result " + b).toString());
        }
        return z;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<R> continuation = this.f24020i;
        Continuation<R> continuation2 = continuation;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation2 = null;
        }
        return (CoroutineStackFrame) continuation2;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.f24020i.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    /* renamed from: j */
    public boolean mo313j() {
        while (true) {
            Object obj = this._state;
            if (obj == SelectKt.m305e()) {
                return false;
            }
            if (!(obj instanceof OpDescriptor)) {
                return true;
            }
            ((OpDescriptor) obj).mo282c(this);
        }
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    @NotNull
    /* renamed from: k */
    public Continuation<R> mo312k() {
        return this;
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    /* renamed from: m */
    public void mo301m(long j, @NotNull final Function1<? super Continuation<? super R>, ? extends Object> function1) {
        if (j > 0) {
            mo316A(DelayKt.m1292b(getContext()).mo242q(j, new Runnable() { // from class: kotlinx.coroutines.selects.SelectBuilderImpl$onTimeout$$inlined$Runnable$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (SelectBuilderImpl.this.mo314e()) {
                        Function1 function12 = function1;
                        SelectBuilderImpl selectBuilderImpl = SelectBuilderImpl.this;
                        selectBuilderImpl.mo312k();
                        CancellableKt.m400b(function12, selectBuilderImpl);
                    }
                }
            }));
        } else if (mo314e()) {
            mo312k();
            UndispatchedKt.m396c(function1, this);
        }
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        Object obj2;
        Object obj3;
        Object d;
        Object d2;
        Object obj4;
        if (!DebugKt.m1308a() || mo313j()) {
            while (true) {
                Object obj5 = this._result;
                obj2 = SelectKt.f24031c;
                if (obj5 == obj2) {
                    Object b = CompletedExceptionallyKt.m1327b(obj);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f24019k;
                    obj3 = SelectKt.f24031c;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, b)) {
                        return;
                    }
                } else {
                    d = IntrinsicsKt__IntrinsicsKt.m1920d();
                    if (obj5 == d) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f24019k;
                        d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                        obj4 = SelectKt.f24032d;
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, d2, obj4)) {
                            if (Result.m2477f(obj)) {
                                Continuation<R> continuation = this.f24020i;
                                Throwable d3 = Result.m2479d(obj);
                                Intrinsics.m1832c(d3);
                                Result.Companion companion = Result.f20418g;
                                Throwable th = d3;
                                if (DebugKt.m1305d()) {
                                    th = !(continuation instanceof CoroutineStackFrame) ? d3 : StackTraceRecoveryKt.m456a(d3, (CoroutineStackFrame) continuation);
                                }
                                Object a = ResultKt.m2473a(th);
                                Result.m2481b(a);
                                continuation.resumeWith(a);
                                return;
                            }
                            this.f24020i.resumeWith(obj);
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Already resumed");
                    }
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "SelectInstance(state=" + this._state + ", result=" + this._result + ')';
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    /* renamed from: u */
    public void mo311u(@NotNull Throwable th) {
        Object obj;
        Object obj2;
        Object d;
        Object d2;
        Object obj3;
        Continuation c;
        if (!DebugKt.m1308a() || mo313j()) {
            while (true) {
                Object obj4 = this._result;
                obj = SelectKt.f24031c;
                if (obj4 == obj) {
                    Continuation<R> continuation = this.f24020i;
                    CompletedExceptionally completedExceptionally = new CompletedExceptionally((!DebugKt.m1305d() || !(continuation instanceof CoroutineStackFrame)) ? th : StackTraceRecoveryKt.m456a(th, (CoroutineStackFrame) continuation), false, 2, null);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f24019k;
                    obj2 = SelectKt.f24031c;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, completedExceptionally)) {
                        return;
                    }
                } else {
                    d = IntrinsicsKt__IntrinsicsKt.m1920d();
                    if (obj4 == d) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f24019k;
                        d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                        obj3 = SelectKt.f24032d;
                        if (atomicReferenceFieldUpdater2.compareAndSet(this, d2, obj3)) {
                            c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(this.f24020i);
                            Result.Companion companion = Result.f20418g;
                            Object a = ResultKt.m2473a(th);
                            Result.m2481b(a);
                            c.resumeWith(a);
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Already resumed");
                    }
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    @Nullable
    /* renamed from: v */
    public Object mo310v(@NotNull AtomicDesc atomicDesc) {
        return new AtomicSelectOp(this, atomicDesc).mo282c(null);
    }
}
