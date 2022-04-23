package kotlinx.coroutines.selects;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
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
import kotlinx.coroutines.selects.SelectBuilder;
import p459j.p460a.p541n0.C13032a;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��®\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0001\u0018��*\u0006\b��\u0010\u0001 ��2\u00020Y2\b\u0012\u0004\u0012\u00028��0Z2\b\u0012\u0004\u0012\u00028��0[2\b\u0012\u0004\u0012\u00028��0\u00022\u00060Bj\u0002`C:\u0004TUVWB\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ.\u0010\u0011\u001a\u00020\b2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\rH\u0082\b¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\n\u0018\u00010\u0015j\u0004\u0018\u0001`\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001d\u0010\fJ8\u0010!\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001e2\u001c\u0010\u0010\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0 H\u0016ø\u0001��¢\u0006\u0004\b!\u0010\"J\u0019\u0010%\u001a\u0004\u0018\u00010\u000e2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u0019H\u0016¢\u0006\u0004\b(\u0010\u001cJ \u0010+\u001a\u00020\b2\f\u0010*\u001a\b\u0012\u0004\u0012\u00028��0)H\u0016ø\u0001��¢\u0006\u0004\b+\u0010,J\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00101\u001a\u000200H\u0016¢\u0006\u0004\b1\u00102J\u001b\u00105\u001a\u0004\u0018\u00010\u000e2\b\u00104\u001a\u0004\u0018\u000103H\u0016¢\u0006\u0004\b5\u00106J5\u00108\u001a\u00020\b*\u0002072\u001c\u0010\u0010\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0 H\u0096\u0002ø\u0001��¢\u0006\u0004\b8\u00109JG\u00108\u001a\u00020\b\"\u0004\b\u0001\u0010:*\b\u0012\u0004\u0012\u00028\u00010;2\"\u0010\u0010\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0<H\u0096\u0002ø\u0001��¢\u0006\u0004\b8\u0010=J[\u00108\u001a\u00020\b\"\u0004\b\u0001\u0010>\"\u0004\b\u0002\u0010:*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020?2\u0006\u0010@\u001a\u00028\u00012\"\u0010\u0010\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0<H\u0096\u0002ø\u0001��¢\u0006\u0004\b8\u0010AR\u001e\u0010F\u001a\n\u0018\u00010Bj\u0004\u0018\u0001`C8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER\u001c\u0010I\u001a\b\u0012\u0004\u0012\u00028��0\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0016\u0010M\u001a\u00020J8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bK\u0010LR\u0016\u0010N\u001a\u0002008V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bN\u00102R(\u0010R\u001a\u0004\u0018\u00010\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u00068B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010\nR\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010S\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006X"}, m815d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl;", "R", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(Lkotlin/coroutines/Continuation;)V", "Lkotlinx/coroutines/DisposableHandle;", "handle", "", "disposeOnSelect", "(Lkotlinx/coroutines/DisposableHandle;)V", "doAfterSelect", "()V", "Lkotlin/Function0;", "", C13032a.f29462d, "block", "doResume", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "getResult", "()Ljava/lang/Object;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "", "e", "handleBuilderException", "(Ljava/lang/Throwable;)V", "initCancellability", "", "timeMillis", "Lkotlin/Function1;", "onTimeout", "(JLkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/AtomicDesc;", "desc", "performAtomicTrySelect", "(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;", "exception", "resumeSelectWithException", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "", "trySelect", "()Z", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "otherOp", "trySelectOther", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectClause0;", "invoke", "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/SelectClause1;", "Lkotlin/Function2;", "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/SelectClause2;", "param", "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "getCompletion", "()Lkotlin/coroutines/Continuation;", "completion", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "isSelected", "getParentHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setParentHandle", "parentHandle", "Lkotlin/coroutines/Continuation;", "AtomicSelectOp", "DisposeNode", "PairSelectOp", "SelectOnCancelling", "kotlinx-coroutines-core", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlinx/coroutines/selects/SelectInstance;"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl.class */
public final class SelectBuilderImpl<R> extends LockFreeLinkedListHead implements SelectBuilder<R>, SelectInstance<R>, AbstractC15044d<R>, AbstractC15069e {
    public volatile Object _result;
    public final AbstractC15044d<R> uCont;
    public static final AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(SelectBuilderImpl.class, Object.class, "_state");
    public static final AtomicReferenceFieldUpdater _result$FU = AtomicReferenceFieldUpdater.newUpdater(SelectBuilderImpl.class, Object.class, "_result");
    public volatile Object _state = this;
    public volatile Object _parentHandle = null;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0019\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0010\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0002J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\rH\u0002R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0014\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, m815d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;", "Lkotlinx/coroutines/internal/AtomicOp;", "", "impl", "Lkotlinx/coroutines/selects/SelectBuilderImpl;", "desc", "Lkotlinx/coroutines/internal/AtomicDesc;", "(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;)V", "opSequence", "", "getOpSequence", "()J", "complete", "", "affected", "failure", "completeSelect", "prepare", "prepareSelectOp", "toString", "", "undoPrepare", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp.class */
    public static final class AtomicSelectOp extends AtomicOp<Object> {
        public final AtomicDesc desc;
        public final SelectBuilderImpl<?> impl;
        public final long opSequence;

        public AtomicSelectOp(SelectBuilderImpl<?> selectBuilderImpl, AtomicDesc atomicDesc) {
            SeqNumber seqNumber;
            this.impl = selectBuilderImpl;
            this.desc = atomicDesc;
            seqNumber = SelectKt.selectOpSequenceNumber;
            this.opSequence = seqNumber.next();
            this.desc.setAtomicOp(this);
        }

        private final void completeSelect(Object obj) {
            boolean z = obj == null;
            if (SelectBuilderImpl._state$FU.compareAndSet(this.impl, this, z ? null : this.impl) && z) {
                this.impl.doAfterSelect();
            }
        }

        private final Object prepareSelectOp() {
            SelectBuilderImpl<?> selectBuilderImpl = this.impl;
            while (true) {
                Object obj = selectBuilderImpl._state;
                if (obj == this) {
                    return null;
                }
                if (obj instanceof OpDescriptor) {
                    ((OpDescriptor) obj).perform(this.impl);
                } else {
                    SelectBuilderImpl<?> selectBuilderImpl2 = this.impl;
                    if (obj != selectBuilderImpl2) {
                        return SelectKt.getALREADY_SELECTED();
                    }
                    if (SelectBuilderImpl._state$FU.compareAndSet(selectBuilderImpl2, selectBuilderImpl2, this)) {
                        return null;
                    }
                }
            }
        }

        private final void undoPrepare() {
            SelectBuilderImpl<?> selectBuilderImpl = this.impl;
            SelectBuilderImpl._state$FU.compareAndSet(selectBuilderImpl, this, selectBuilderImpl);
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public void complete(Object obj, Object obj2) {
            completeSelect(obj2);
            this.desc.complete(this, obj2);
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public long getOpSequence() {
            return this.opSequence;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public Object prepare(Object obj) {
            Object prepareSelectOp;
            if (obj == null && (prepareSelectOp = prepareSelectOp()) != null) {
                return prepareSelectOp;
            }
            try {
                return this.desc.prepare(this);
            } catch (Throwable th) {
                if (obj == null) {
                    undoPrepare();
                }
                throw th;
            }
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        public String toString() {
            return "AtomicSelectOp(sequence=" + getOpSequence() + ')';
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "handle", "Lkotlinx/coroutines/DisposableHandle;", "(Lkotlinx/coroutines/DisposableHandle;)V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode.class */
    public static final class DisposeNode extends LockFreeLinkedListNode {
        public final DisposableHandle handle;

        public DisposeNode(DisposableHandle disposableHandle) {
            this.handle = disposableHandle;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016R\u001a\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\f"}, m815d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp;", "Lkotlinx/coroutines/internal/OpDescriptor;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V", "atomicOp", "Lkotlinx/coroutines/internal/AtomicOp;", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "perform", "", "affected", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl$PairSelectOp.class */
    public static final class PairSelectOp extends OpDescriptor {
        public final LockFreeLinkedListNode.PrepareOp otherOp;

        public PairSelectOp(LockFreeLinkedListNode.PrepareOp prepareOp) {
            this.otherOp = prepareOp;
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        public AtomicOp<?> getAtomicOp() {
            return this.otherOp.getAtomicOp();
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        public Object perform(Object obj) {
            if (obj != null) {
                SelectBuilderImpl selectBuilderImpl = (SelectBuilderImpl) obj;
                this.otherOp.finishPrepare();
                Object decide = this.otherOp.getAtomicOp().decide(null);
                SelectBuilderImpl._state$FU.compareAndSet(selectBuilderImpl, this, decide == null ? this.otherOp.desc : selectBuilderImpl);
                return decide;
            }
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.selects.SelectBuilderImpl<*>");
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n��\b\u0082\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m815d2 = {"Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;", "Lkotlinx/coroutines/JobCancellingNode;", "Lkotlinx/coroutines/Job;", "job", "(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/Job;)V", "invoke", "", "cause", "", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling.class */
    public final class SelectOnCancelling extends JobCancellingNode<Job> {
        public SelectOnCancelling(Job job) {
            super(job);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
            invoke2(th);
            return C14989s.f33022a;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public void invoke2(Throwable th) {
            if (SelectBuilderImpl.this.trySelect()) {
                SelectBuilderImpl.this.resumeSelectWithException(this.job.getCancellationException());
            }
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public String toString() {
            return "SelectOnCancelling[" + SelectBuilderImpl.this + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SelectBuilderImpl(AbstractC15044d<? super R> dVar) {
        Object obj;
        this.uCont = dVar;
        obj = SelectKt.UNDECIDED;
        this._result = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doAfterSelect() {
        DisposableHandle parentHandle = getParentHandle();
        if (parentHandle != null) {
            parentHandle.dispose();
        }
        Object next = getNext();
        if (next != null) {
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !C15149k.m384a(lockFreeLinkedListNode, this); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
                if (lockFreeLinkedListNode instanceof DisposeNode) {
                    ((DisposeNode) lockFreeLinkedListNode).handle.dispose();
                }
            }
            return;
        }
        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    private final void doResume(AbstractC15107a<? extends Object> aVar, AbstractC15107a<C14989s> aVar2) {
        Object obj;
        Object obj2;
        Object obj3;
        if (!DebugKt.getASSERTIONS_ENABLED() || isSelected()) {
            while (true) {
                Object obj4 = this._result;
                obj = SelectKt.UNDECIDED;
                if (obj4 == obj) {
                    Object invoke = aVar.invoke();
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _result$FU;
                    obj2 = SelectKt.UNDECIDED;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, invoke)) {
                        return;
                    }
                } else if (obj4 == C15064c.m478a()) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _result$FU;
                    Object a = C15064c.m478a();
                    obj3 = SelectKt.RESUMED;
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, a, obj3)) {
                        aVar2.invoke();
                        return;
                    }
                } else {
                    throw new IllegalStateException("Already resumed");
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    private final DisposableHandle getParentHandle() {
        return (DisposableHandle) this._parentHandle;
    }

    private final void initCancellability() {
        Job job = (Job) getContext().get(Job.Key);
        if (job != null) {
            DisposableHandle invokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job, true, false, new SelectOnCancelling(job), 2, null);
            setParentHandle(invokeOnCompletion$default);
            if (isSelected()) {
                invokeOnCompletion$default.dispose();
            }
        }
    }

    private final void setParentHandle(DisposableHandle disposableHandle) {
        this._parentHandle = disposableHandle;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void disposeOnSelect(DisposableHandle disposableHandle) {
        DisposeNode disposeNode = new DisposeNode(disposableHandle);
        if (!isSelected()) {
            addLast(disposeNode);
            if (!isSelected()) {
                return;
            }
        }
        disposableHandle.dispose();
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public AbstractC15069e getCallerFrame() {
        AbstractC15044d<R> dVar = this.uCont;
        AbstractC15044d<R> dVar2 = dVar;
        if (!(dVar instanceof AbstractC15069e)) {
            dVar2 = null;
        }
        return (AbstractC15069e) dVar2;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public AbstractC15044d<R> getCompletion() {
        return this;
    }

    @Override // p626l.p634w.AbstractC15044d
    public AbstractC15049g getContext() {
        return this.uCont.getContext();
    }

    public final Object getResult() {
        Object obj;
        Object obj2;
        Object obj3;
        if (!isSelected()) {
            initCancellability();
        }
        Object obj4 = this._result;
        Object obj5 = obj4;
        obj = SelectKt.UNDECIDED;
        if (obj4 == obj) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _result$FU;
            obj3 = SelectKt.UNDECIDED;
            if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, C15064c.m478a())) {
                return C15064c.m478a();
            }
            obj5 = this._result;
        }
        obj2 = SelectKt.RESUMED;
        if (obj5 == obj2) {
            throw new IllegalStateException("Already resumed");
        } else if (!(obj5 instanceof CompletedExceptionally)) {
            return obj5;
        } else {
            throw ((CompletedExceptionally) obj5).cause;
        }
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final void handleBuilderException(Throwable th) {
        if (trySelect()) {
            C14979k.C14980a aVar = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            resumeWith(a);
        } else if (!(th instanceof CancellationException)) {
            Object result = getResult();
            if (result instanceof CompletedExceptionally) {
                Throwable th2 = ((CompletedExceptionally) result).cause;
                if (DebugKt.getRECOVER_STACK_TRACES()) {
                    th2 = StackTraceRecoveryKt.unwrapImpl(th2);
                }
                if (th2 == (!DebugKt.getRECOVER_STACK_TRACES() ? th : StackTraceRecoveryKt.unwrapImpl(th))) {
                    return;
                }
            }
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), th);
        }
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public void invoke(SelectClause0 selectClause0, AbstractC15118l<? super AbstractC15044d<? super R>, ? extends Object> lVar) {
        selectClause0.registerSelectClause0(this, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <Q> void invoke(SelectClause1<? extends Q> selectClause1, AbstractC15122p<? super Q, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        selectClause1.registerSelectClause1(this, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <P, Q> void invoke(SelectClause2<? super P, ? extends Q> selectClause2, P p, AbstractC15122p<? super Q, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        selectClause2.registerSelectClause2(this, p, pVar);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <P, Q> void invoke(SelectClause2<? super P, ? extends Q> selectClause2, AbstractC15122p<? super Q, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        SelectBuilder.DefaultImpls.invoke(this, selectClause2, pVar);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public boolean isSelected() {
        while (true) {
            Object obj = this._state;
            if (obj == this) {
                return false;
            }
            if (!(obj instanceof OpDescriptor)) {
                return true;
            }
            ((OpDescriptor) obj).perform(this);
        }
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public void onTimeout(long j, final AbstractC15118l<? super AbstractC15044d<? super R>, ? extends Object> lVar) {
        if (j > 0) {
            disposeOnSelect(DelayKt.getDelay(getContext()).invokeOnTimeout(j, new Runnable() { // from class: kotlinx.coroutines.selects.SelectBuilderImpl$onTimeout$$inlined$Runnable$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (SelectBuilderImpl.this.trySelect()) {
                        CancellableKt.startCoroutineCancellable(lVar, SelectBuilderImpl.this.getCompletion());
                    }
                }
            }));
        } else if (trySelect()) {
            UndispatchedKt.startCoroutineUnintercepted(lVar, getCompletion());
        }
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public Object performAtomicTrySelect(AtomicDesc atomicDesc) {
        return new AtomicSelectOp(this, atomicDesc).perform(null);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void resumeSelectWithException(Throwable th) {
        Object obj;
        Object obj2;
        Object obj3;
        if (!DebugKt.getASSERTIONS_ENABLED() || isSelected()) {
            while (true) {
                Object obj4 = this._result;
                obj = SelectKt.UNDECIDED;
                if (obj4 == obj) {
                    AbstractC15044d<R> dVar = this.uCont;
                    CompletedExceptionally completedExceptionally = new CompletedExceptionally((!DebugKt.getRECOVER_STACK_TRACES() || !(dVar instanceof AbstractC15069e)) ? th : StackTraceRecoveryKt.access$recoverFromStackFrame(th, (AbstractC15069e) dVar), false, 2, null);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _result$FU;
                    obj2 = SelectKt.UNDECIDED;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, completedExceptionally)) {
                        return;
                    }
                } else if (obj4 == C15064c.m478a()) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _result$FU;
                    Object a = C15064c.m478a();
                    obj3 = SelectKt.RESUMED;
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, a, obj3)) {
                        AbstractC15044d a2 = C15059b.m481a(this.uCont);
                        C14979k.C14980a aVar = C14979k.f33013a;
                        Object a3 = C14982l.m652a(th);
                        C14979k.m657a(a3);
                        a2.resumeWith(a3);
                        return;
                    }
                } else {
                    throw new IllegalStateException("Already resumed");
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    @Override // p626l.p634w.AbstractC15044d
    public void resumeWith(Object obj) {
        Object obj2;
        Object obj3;
        Object obj4;
        if (!DebugKt.getASSERTIONS_ENABLED() || isSelected()) {
            while (true) {
                Object obj5 = this._result;
                obj2 = SelectKt.UNDECIDED;
                if (obj5 == obj2) {
                    Object state = CompletedExceptionallyKt.toState(obj);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _result$FU;
                    obj3 = SelectKt.UNDECIDED;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, state)) {
                        return;
                    }
                } else if (obj5 == C15064c.m478a()) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _result$FU;
                    Object a = C15064c.m478a();
                    obj4 = SelectKt.RESUMED;
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, a, obj4)) {
                        if (C14979k.m655c(obj)) {
                            AbstractC15044d<R> dVar = this.uCont;
                            Throwable b = C14979k.m656b(obj);
                            if (b != null) {
                                C14979k.C14980a aVar = C14979k.f33013a;
                                Throwable th = b;
                                if (DebugKt.getRECOVER_STACK_TRACES()) {
                                    th = !(dVar instanceof AbstractC15069e) ? b : StackTraceRecoveryKt.access$recoverFromStackFrame(b, (AbstractC15069e) dVar);
                                }
                                Object a2 = C14982l.m652a(th);
                                C14979k.m657a(a2);
                                dVar.resumeWith(a2);
                                return;
                            }
                            C15149k.m378b();
                            throw null;
                        }
                        this.uCont.resumeWith(obj);
                        return;
                    }
                } else {
                    throw new IllegalStateException("Already resumed");
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public String toString() {
        Object obj = this._state;
        StringBuilder sb = new StringBuilder();
        sb.append("SelectInstance(state=");
        sb.append(obj == this ? "this" : String.valueOf(obj));
        sb.append(", result=");
        sb.append(this._result);
        sb.append(')');
        return sb.toString();
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public boolean trySelect() {
        boolean z;
        Object trySelectOther = trySelectOther(null);
        if (trySelectOther == CancellableContinuationImplKt.RESUME_TOKEN) {
            z = true;
        } else if (trySelectOther == null) {
            z = false;
        } else {
            throw new IllegalStateException(("Unexpected trySelectIdempotent result " + trySelectOther).toString());
        }
        return z;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public Object trySelectOther(LockFreeLinkedListNode.PrepareOp prepareOp) {
        while (true) {
            Object obj = this._state;
            if (obj == this) {
                if (prepareOp == null) {
                    if (_state$FU.compareAndSet(this, this, null)) {
                        break;
                    }
                } else {
                    PairSelectOp pairSelectOp = new PairSelectOp(prepareOp);
                    if (_state$FU.compareAndSet(this, this, pairSelectOp)) {
                        Object perform = pairSelectOp.perform(this);
                        if (perform != null) {
                            return perform;
                        }
                    }
                }
            } else if (obj instanceof OpDescriptor) {
                if (prepareOp != null) {
                    AtomicOp<?> atomicOp = prepareOp.getAtomicOp();
                    if ((atomicOp instanceof AtomicSelectOp) && ((AtomicSelectOp) atomicOp).impl == this) {
                        throw new IllegalStateException("Cannot use matching select clauses on the same object".toString());
                    } else if (atomicOp.isEarlierThan((OpDescriptor) obj)) {
                        return AtomicKt.RETRY_ATOMIC;
                    }
                }
                ((OpDescriptor) obj).perform(this);
            } else if (prepareOp != null && obj == prepareOp.desc) {
                return CancellableContinuationImplKt.RESUME_TOKEN;
            } else {
                return null;
            }
        }
        doAfterSelect();
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }
}
