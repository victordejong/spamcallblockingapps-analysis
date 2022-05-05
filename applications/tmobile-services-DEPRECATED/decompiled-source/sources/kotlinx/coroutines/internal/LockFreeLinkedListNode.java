package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\r\b\u0017\u0018��:\u0005JKLMNB\u0007¢\u0006\u0004\bI\u0010&J\u0019\u0010\u0004\u001a\u00020\u00032\n\u0010\u0002\u001a\u00060��j\u0002`\u0001¢\u0006\u0004\b\u0004\u0010\u0005J,\u0010\t\u001a\u00020\u00072\n\u0010\u0002\u001a\u00060��j\u0002`\u00012\u000e\b\u0004\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\b¢\u0006\u0004\b\t\u0010\nJ4\u0010\r\u001a\u00020\u00072\n\u0010\u0002\u001a\u00060��j\u0002`\u00012\u0016\u0010\f\u001a\u0012\u0012\b\u0012\u00060��j\u0002`\u0001\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\b¢\u0006\u0004\b\r\u0010\u000eJD\u0010\u000f\u001a\u00020\u00072\n\u0010\u0002\u001a\u00060��j\u0002`\u00012\u0016\u0010\f\u001a\u0012\u0012\b\u0012\u00060��j\u0002`\u0001\u0012\u0004\u0012\u00020\u00070\u000b2\u000e\b\u0004\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\b¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0012\u001a\u00020\u00072\n\u0010\u0002\u001a\u00060��j\u0002`\u00012\n\u0010\u0011\u001a\u00060��j\u0002`\u0001H\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00072\n\u0010\u0002\u001a\u00060��j\u0002`\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\"\u0010\u0018\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u00012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0082\u0010¢\u0006\u0004\b\u0018\u0010\u0019J)\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028��0\u001b\"\f\b��\u0010\u001a*\u00060��j\u0002`\u00012\u0006\u0010\u0002\u001a\u00028��¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\f\u0012\b\u0012\u00060��j\u0002`\u00010\u001e¢\u0006\u0004\b\u001f\u0010 J \u0010\"\u001a\u00060��j\u0002`\u00012\n\u0010!\u001a\u00060��j\u0002`\u0001H\u0082\u0010¢\u0006\u0004\b\"\u0010#J\u001b\u0010$\u001a\u00020\u00032\n\u0010\u0011\u001a\u00060��j\u0002`\u0001H\u0002¢\u0006\u0004\b$\u0010\u0005J\r\u0010%\u001a\u00020\u0003¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0003H\u0001¢\u0006\u0004\b'\u0010&J,\u0010)\u001a\u00020(2\n\u0010\u0002\u001a\u00060��j\u0002`\u00012\u000e\b\u0004\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0081\b¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0001H\u0014¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0007H\u0016¢\u0006\u0004\b-\u0010.J.\u0010/\u001a\u0004\u0018\u00018��\"\u0006\b��\u0010\u001a\u0018\u00012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00070\u000bH\u0086\b¢\u0006\u0004\b/\u00100J\u0015\u00101\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0001¢\u0006\u0004\b1\u0010,J\u0017\u00102\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0001H\u0001¢\u0006\u0004\b2\u0010,J\u000f\u00104\u001a\u000203H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J/\u0010;\u001a\u00020:2\n\u0010\u0002\u001a\u00060��j\u0002`\u00012\n\u0010\u0011\u001a\u00060��j\u0002`\u00012\u0006\u00109\u001a\u00020(H\u0001¢\u0006\u0004\b;\u0010<J'\u0010@\u001a\u00020\u00032\n\u0010=\u001a\u00060��j\u0002`\u00012\n\u0010\u0011\u001a\u00060��j\u0002`\u0001H��¢\u0006\u0004\b>\u0010?R\u0016\u0010A\u001a\u00020\u00078V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010.R\u0013\u0010\u0011\u001a\u00020B8F@\u0006¢\u0006\u0006\u001a\u0004\bC\u0010DR\u0017\u0010F\u001a\u00060��j\u0002`\u00018F@\u0006¢\u0006\u0006\u001a\u0004\bE\u0010,R\u0017\u0010H\u001a\u00060��j\u0002`\u00018F@\u0006¢\u0006\u0006\u001a\u0004\bG\u0010,¨\u0006O"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "node", "", "addLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "Lkotlin/Function0;", "", "condition", "addLastIf", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z", "Lkotlin/Function1;", "predicate", "addLastIfPrev", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;)Z", "addLastIfPrevAndIf", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z", "next", "addNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "addOneIfEmpty", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "Lkotlinx/coroutines/internal/OpDescriptor;", "op", "correctPrev", "(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "T", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "describeAddLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "describeRemoveFirst", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "current", "findPrevNonRemoved", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "finishAdd", "helpRemove", "()V", "helpRemovePrev", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "makeCondAddOp", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "nextIfRemoved", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "remove", "()Z", "removeFirstIfIsInstanceOfOrPeekIf", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "removeFirstOrNull", "removeOrNext", "Lkotlinx/coroutines/internal/Removed;", "removed", "()Lkotlinx/coroutines/internal/Removed;", "", "toString", "()Ljava/lang/String;", "condAdd", "", "tryCondAddNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I", "prev", "validateNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "validateNode", "isRemoved", "", "getNext", "()Ljava/lang/Object;", "getNextNode", "nextNode", "getPrevNode", "prevNode", "<init>", "AbstractAtomicDesc", "AddLastDesc", "CondAddOp", "PrepareOp", "RemoveFirstDesc", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListNode.class */
public class LockFreeLinkedListNode {

    /* renamed from: f */
    static final AtomicReferenceFieldUpdater f23912f = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next");

    /* renamed from: g */
    static final AtomicReferenceFieldUpdater f23913g = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev");

    /* renamed from: h */
    private static final AtomicReferenceFieldUpdater f23914h = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef");
    volatile Object _next = this;
    volatile Object _prev = this;
    private volatile Object _removedRef = null;

    @Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b%\u0010&J#\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0014¢\u0006\u0004\b\u0005\u0010\fJ'\u0010\u000e\u001a\u00020\u00062\n\u0010\u000b\u001a\u00060\tj\u0002`\n2\n\u0010\r\u001a\u00060\tj\u0002`\nH$¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0016\u001a\u0004\u0018\u00010\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u0019\u001a\u00020\u00182\n\u0010\u000b\u001a\u00060\tj\u0002`\n2\u0006\u0010\r\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n2\u0006\u0010\u0003\u001a\u00020\u001bH\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ'\u0010\u001e\u001a\u00020\u00042\n\u0010\u000b\u001a\u00060\tj\u0002`\n2\n\u0010\r\u001a\u00060\tj\u0002`\nH$¢\u0006\u0004\b\u001e\u0010\u001fR\u001e\u0010\"\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u001e\u0010$\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b#\u0010!¨\u0006'"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;", "Lkotlinx/coroutines/internal/AtomicDesc;", "Lkotlinx/coroutines/internal/AtomicOp;", "op", "", "failure", "", "complete", "(Lkotlinx/coroutines/internal/AtomicOp;Ljava/lang/Object;)V", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "affected", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "next", "finishOnSuccess", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "prepareOp", "finishPrepare", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V", "onPrepare", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;", "prepare", "(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;", "", "retry", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/OpDescriptor;", "takeAffectedNode", "(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "updatedNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "getAffectedNode", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "affectedNode", "getOriginalNext", "originalNext", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc.class */
    public static abstract class AbstractAtomicDesc extends AtomicDesc {
        @Override // kotlinx.coroutines.internal.AtomicDesc
        /* renamed from: a */
        public final void mo285a(@NotNull AtomicOp<?> atomicOp, @Nullable Object obj) {
            boolean z = obj == null;
            LockFreeLinkedListNode h = mo509h();
            if (h != null) {
                LockFreeLinkedListNode i = mo508i();
                if (i != null) {
                    if (LockFreeLinkedListNode.f23912f.compareAndSet(h, atomicOp, z ? mo505m(h, i) : i) && z) {
                        mo511f(h, i);
                    }
                } else if (DebugKt.m1308a() && !(!z)) {
                    throw new AssertionError();
                }
            } else if (DebugKt.m1308a() && !(!z)) {
                throw new AssertionError();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0091, code lost:
            if (kotlinx.coroutines.DebugKt.m1308a() == false) goto L_0x00b4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
            if (r0 != null) goto L_0x009f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0099, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x009f, code lost:
            r12 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00a4, code lost:
            if (r12 == false) goto L_0x00aa;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b3, code lost:
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
            return null;
         */
        @Override // kotlinx.coroutines.internal.AtomicDesc
        @org.jetbrains.annotations.Nullable
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo284c(@org.jetbrains.annotations.NotNull kotlinx.coroutines.internal.AtomicOp<?> r7) {
            /*
                Method dump skipped, instructions count: 210
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc.mo284c(kotlinx.coroutines.internal.AtomicOp):java.lang.Object");
        }

        @Nullable
        /* renamed from: e */
        protected Object mo512e(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            return null;
        }

        /* renamed from: f */
        protected abstract void mo511f(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2);

        /* renamed from: g */
        public abstract void mo510g(@NotNull PrepareOp prepareOp);

        @Nullable
        /* renamed from: h */
        protected abstract LockFreeLinkedListNode mo509h();

        @Nullable
        /* renamed from: i */
        protected abstract LockFreeLinkedListNode mo508i();

        @Nullable
        /* renamed from: j */
        public Object mo515j(@NotNull PrepareOp prepareOp) {
            mo510g(prepareOp);
            return null;
        }

        /* renamed from: k */
        protected boolean mo507k(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull Object obj) {
            return false;
        }

        @Nullable
        /* renamed from: l */
        protected LockFreeLinkedListNode mo506l(@NotNull OpDescriptor opDescriptor) {
            LockFreeLinkedListNode h = mo509h();
            Intrinsics.m1832c(h);
            return h;
        }

        @NotNull
        /* renamed from: m */
        protected abstract Object mo505m(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0016\u0018��*\f\b��\u0010\u0003*\u00060\u0001j\u0002`\u00022\u00020\u0004B\u001b\u0012\n\u0010\u001f\u001a\u00060\u0001j\u0002`\u0002\u0012\u0006\u0010\u001b\u001a\u00028��¢\u0006\u0004\b \u0010\tJ'\u0010\b\u001a\u00020\u00072\n\u0010\u0005\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u0006\u001a\u00060\u0001j\u0002`\u0002H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0010\u001a\u00020\u000f2\n\u0010\u0005\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0006\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0004¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0016\u001a\u00020\u000e2\n\u0010\u0005\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u0006\u001a\u00060\u0001j\u0002`\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u001e\u0010\u001a\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00028D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00028��8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001e\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00028D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0019R\u001a\u0010\u001f\u001a\u00060\u0001j\u0002`\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001c¨\u0006!"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "T", "kotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc", "affected", "next", "", "finishOnSuccess", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "prepareOp", "finishPrepare", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V", "", "", "retry", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/OpDescriptor;", "op", "takeAffectedNode", "(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "updatedNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "getAffectedNode", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "affectedNode", "node", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "getOriginalNext", "originalNext", "queue", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc.class */
    public static class AddLastDesc<T extends LockFreeLinkedListNode> extends AbstractAtomicDesc {

        /* renamed from: d */
        private static final AtomicReferenceFieldUpdater f23915d = AtomicReferenceFieldUpdater.newUpdater(AddLastDesc.class, Object.class, "_affectedNode");
        private volatile Object _affectedNode;
        @JvmField
        @NotNull

        /* renamed from: b */
        public final LockFreeLinkedListNode f23916b;
        @JvmField
        @NotNull

        /* renamed from: c */
        public final T f23917c;

        public AddLastDesc(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull T t) {
            this.f23916b = lockFreeLinkedListNode;
            this.f23917c = t;
            if (DebugKt.m1308a()) {
                Object obj = this.f23917c._next;
                T t2 = this.f23917c;
                if (!(obj == t2 && ((LockFreeLinkedListNode) t2._prev) == this.f23917c)) {
                    throw new AssertionError();
                }
            }
            this._affectedNode = null;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        /* renamed from: f */
        protected void mo511f(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2) {
            this.f23917c.m528L(this.f23916b);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        /* renamed from: g */
        public void mo510g(@NotNull PrepareOp prepareOp) {
            f23915d.compareAndSet(this, null, prepareOp.f23920a);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: h */
        protected final LockFreeLinkedListNode mo509h() {
            return (LockFreeLinkedListNode) this._affectedNode;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: i */
        protected final LockFreeLinkedListNode mo508i() {
            return this.f23916b;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        /* renamed from: k */
        protected boolean mo507k(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull Object obj) {
            return obj != this.f23916b;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: l */
        protected final LockFreeLinkedListNode mo506l(@NotNull OpDescriptor opDescriptor) {
            return this.f23916b.m530J(opDescriptor);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @NotNull
        /* renamed from: m */
        protected Object mo505m(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2) {
            T t = this.f23917c;
            LockFreeLinkedListNode.f23913g.compareAndSet(t, t, lockFreeLinkedListNode);
            T t2 = this.f23917c;
            LockFreeLinkedListNode.f23912f.compareAndSet(t2, t2, this.f23916b);
            return this.f23917c;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\b\b!\u0018��2\u00020\u0001B\u0013\u0012\n\u0010\n\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00060\u0002j\u0002`\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001e\u0010\f\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "Lkotlinx/coroutines/internal/AtomicOp;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "failure", "", "complete", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)V", "newNode", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "oldNext", "<init>", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    @PublishedApi
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp.class */
    public static abstract class CondAddOp extends AtomicOp<LockFreeLinkedListNode> {
        @JvmField
        @Nullable

        /* renamed from: b */
        public LockFreeLinkedListNode f23918b;
        @JvmField
        @NotNull

        /* renamed from: c */
        public final LockFreeLinkedListNode f23919c;

        public CondAddOp(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            this.f23919c = lockFreeLinkedListNode;
        }

        /* renamed from: i */
        public void mo281d(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @Nullable Object obj) {
            boolean z = obj == null;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = z ? this.f23919c : this.f23918b;
            if (lockFreeLinkedListNode2 != null && LockFreeLinkedListNode.f23912f.compareAndSet(lockFreeLinkedListNode, this, lockFreeLinkedListNode2) && z) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = this.f23919c;
                LockFreeLinkedListNode lockFreeLinkedListNode4 = this.f23918b;
                Intrinsics.m1832c(lockFreeLinkedListNode4);
                lockFreeLinkedListNode3.m528L(lockFreeLinkedListNode4);
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B'\u0012\n\u0010\u0006\u001a\u00060\fj\u0002`\r\u0012\n\u0010\u0016\u001a\u00060\fj\u0002`\r\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u0006\u001a\u00060\fj\u0002`\r8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000eR\u001a\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u000f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00060\fj\u0002`\r8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u000e¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "Lkotlinx/coroutines/internal/OpDescriptor;", "", "finishPrepare", "()V", "", "affected", "perform", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/AtomicOp;", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "atomicOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;", "desc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;", "next", "<init>", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp.class */
    public static final class PrepareOp extends OpDescriptor {
        @JvmField
        @NotNull

        /* renamed from: a */
        public final LockFreeLinkedListNode f23920a;
        @JvmField
        @NotNull

        /* renamed from: b */
        public final LockFreeLinkedListNode f23921b;
        @JvmField
        @NotNull

        /* renamed from: c */
        public final AbstractAtomicDesc f23922c;

        public PrepareOp(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2, @NotNull AbstractAtomicDesc abstractAtomicDesc) {
            this.f23920a = lockFreeLinkedListNode;
            this.f23921b = lockFreeLinkedListNode2;
            this.f23922c = abstractAtomicDesc;
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        @NotNull
        /* renamed from: a */
        public AtomicOp<?> mo283a() {
            return this.f23922c.m583b();
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        @Nullable
        /* renamed from: c */
        public Object mo282c(@Nullable Object obj) {
            boolean z = true;
            if (DebugKt.m1308a()) {
                if (!(obj == this.f23920a)) {
                    throw new AssertionError();
                }
            }
            if (obj != null) {
                LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
                Object j = this.f23922c.mo515j(this);
                if (j == LockFreeLinkedList_commonKt.f23927a) {
                    LockFreeLinkedListNode lockFreeLinkedListNode2 = this.f23921b;
                    if (LockFreeLinkedListNode.f23912f.compareAndSet(lockFreeLinkedListNode, this, lockFreeLinkedListNode2.m518V())) {
                        lockFreeLinkedListNode2.m530J(null);
                    }
                    return LockFreeLinkedList_commonKt.f23927a;
                }
                if (j != null) {
                    mo283a().m580e(j);
                } else {
                    z = mo283a().m579g();
                }
                LockFreeLinkedListNode.f23912f.compareAndSet(lockFreeLinkedListNode, this, z ? this.f23921b : mo283a());
                return null;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        }

        /* renamed from: d */
        public final void m513d() {
            this.f23922c.mo510g(this);
        }

        @Override // kotlinx.coroutines.internal.OpDescriptor
        @NotNull
        public String toString() {
            return "PrepareOp(op=" + mo283a() + ')';
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0016\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0013\u0012\n\u0010\u001f\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b&\u0010'J\u001d\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u000b\u001a\u00020\n2\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\n\u0010\t\u001a\u00060\u0003j\u0002`\u0004H\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0012\u001a\u00020\u00112\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0004¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0004¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0018\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\n\u0010\t\u001a\u00060\u0003j\u0002`\u0004H\u0004¢\u0006\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001c\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001e\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001bR\u001a\u0010\u001f\u001a\u00060\u0003j\u0002`\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0019\u0010%\u001a\u00028��8F@\u0006¢\u0006\f\u0012\u0004\b#\u0010$\u001a\u0004\b!\u0010\"¨\u0006("}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "T", "kotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "failure", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "next", "", "finishOnSuccess", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "prepareOp", "finishPrepare", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V", "", "retry", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/internal/OpDescriptor;", "op", "takeAffectedNode", "(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "updatedNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "getAffectedNode", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "affectedNode", "getOriginalNext", "originalNext", "queue", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "getResult", "()Ljava/lang/Object;", "getResult$annotations", "()V", "result", "<init>", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc.class */
    public static class RemoveFirstDesc<T> extends AbstractAtomicDesc {

        /* renamed from: c */
        private static final AtomicReferenceFieldUpdater f23923c = AtomicReferenceFieldUpdater.newUpdater(RemoveFirstDesc.class, Object.class, "_affectedNode");

        /* renamed from: d */
        private static final AtomicReferenceFieldUpdater f23924d = AtomicReferenceFieldUpdater.newUpdater(RemoveFirstDesc.class, Object.class, "_originalNext");
        private volatile Object _affectedNode = null;
        private volatile Object _originalNext = null;
        @JvmField
        @NotNull

        /* renamed from: b */
        public final LockFreeLinkedListNode f23925b;

        public RemoveFirstDesc(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            this.f23925b = lockFreeLinkedListNode;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: e */
        protected Object mo512e(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            return lockFreeLinkedListNode == this.f23925b ? LockFreeLinkedListKt.m538b() : null;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        /* renamed from: f */
        protected final void mo511f(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2) {
            lockFreeLinkedListNode2.m530J(null);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        /* renamed from: g */
        public void mo510g(@NotNull PrepareOp prepareOp) {
            f23923c.compareAndSet(this, null, prepareOp.f23920a);
            f23924d.compareAndSet(this, null, prepareOp.f23921b);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: h */
        protected final LockFreeLinkedListNode mo509h() {
            return (LockFreeLinkedListNode) this._affectedNode;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: i */
        protected final LockFreeLinkedListNode mo508i() {
            return (LockFreeLinkedListNode) this._originalNext;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        /* renamed from: k */
        protected final boolean mo507k(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull Object obj) {
            if (!(obj instanceof Removed)) {
                return false;
            }
            ((Removed) obj).f23943a.m523Q();
            return true;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @Nullable
        /* renamed from: l */
        protected final LockFreeLinkedListNode mo506l(@NotNull OpDescriptor opDescriptor) {
            LockFreeLinkedListNode lockFreeLinkedListNode = this.f23925b;
            while (true) {
                Object obj = lockFreeLinkedListNode._next;
                if (obj instanceof OpDescriptor) {
                    OpDescriptor opDescriptor2 = (OpDescriptor) obj;
                    if (opDescriptor.m473b(opDescriptor2)) {
                        return null;
                    }
                    opDescriptor2.mo282c(this.f23925b);
                } else if (obj != null) {
                    return (LockFreeLinkedListNode) obj;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                }
            }
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        @NotNull
        /* renamed from: m */
        protected final Object mo505m(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2) {
            return lockFreeLinkedListNode2.m518V();
        }

        /* renamed from: n */
        public final T m504n() {
            T t = (T) mo509h();
            Intrinsics.m1832c(t);
            return t;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
        if (kotlinx.coroutines.internal.LockFreeLinkedListNode.f23912f.compareAndSet(r9, r8, ((kotlinx.coroutines.internal.Removed) r0).f23943a) != false) goto L_0x008d;
     */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.LockFreeLinkedListNode m530J(kotlinx.coroutines.internal.OpDescriptor r6) {
        /*
            r5 = this;
        L_0x0000:
            r0 = r5
            java.lang.Object r0 = r0._prev
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r7 = r0
            r0 = r7
            r8 = r0
        L_0x000a:
            r0 = 0
            r9 = r0
        L_0x000d:
            r0 = r8
            java.lang.Object r0 = r0._next
            r10 = r0
            r0 = r10
            r1 = r5
            if (r0 != r1) goto L_0x0031
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L_0x0020
            r0 = r8
            return r0
        L_0x0020:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f23913g
            r1 = r5
            r2 = r7
            r3 = r8
            boolean r0 = r0.compareAndSet(r1, r2, r3)
            if (r0 != 0) goto L_0x002f
            goto L_0x0000
        L_0x002f:
            r0 = r8
            return r0
        L_0x0031:
            r0 = r5
            boolean r0 = r0.mo522R()
            if (r0 == 0) goto L_0x003a
            r0 = 0
            return r0
        L_0x003a:
            r0 = r10
            r1 = r6
            if (r0 != r1) goto L_0x0042
            r0 = r8
            return r0
        L_0x0042:
            r0 = r10
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.OpDescriptor
            if (r0 == 0) goto L_0x0069
            r0 = r6
            if (r0 == 0) goto L_0x005c
            r0 = r6
            r1 = r10
            kotlinx.coroutines.internal.OpDescriptor r1 = (kotlinx.coroutines.internal.OpDescriptor) r1
            boolean r0 = r0.m473b(r1)
            if (r0 == 0) goto L_0x005c
            r0 = 0
            return r0
        L_0x005c:
            r0 = r10
            kotlinx.coroutines.internal.OpDescriptor r0 = (kotlinx.coroutines.internal.OpDescriptor) r0
            r1 = r8
            java.lang.Object r0 = r0.mo282c(r1)
            goto L_0x0000
        L_0x0069:
            r0 = r10
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.Removed
            if (r0 == 0) goto L_0x009e
            r0 = r9
            if (r0 == 0) goto L_0x0093
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f23912f
            r1 = r9
            r2 = r8
            r3 = r10
            kotlinx.coroutines.internal.Removed r3 = (kotlinx.coroutines.internal.Removed) r3
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = r3.f23943a
            boolean r0 = r0.compareAndSet(r1, r2, r3)
            if (r0 != 0) goto L_0x008d
            goto L_0x0000
        L_0x008d:
            r0 = r9
            r8 = r0
            goto L_0x000a
        L_0x0093:
            r0 = r8
            java.lang.Object r0 = r0._prev
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r8 = r0
            goto L_0x000d
        L_0x009e:
            r0 = r10
            if (r0 == 0) goto L_0x00b3
            r0 = r10
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            r8 = r0
            goto L_0x000d
        L_0x00b3:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
        */
        //  java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.m530J(kotlinx.coroutines.internal.OpDescriptor):kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    /* renamed from: K */
    private final LockFreeLinkedListNode m529K(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.mo522R()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) lockFreeLinkedListNode._prev;
        }
        return lockFreeLinkedListNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public final void m528L(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) lockFreeLinkedListNode._prev;
            if (m527M() != lockFreeLinkedListNode) {
                return;
            }
        } while (!f23913g.compareAndSet(lockFreeLinkedListNode, lockFreeLinkedListNode2, this));
        if (mo522R()) {
            lockFreeLinkedListNode.m530J(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public final Removed m518V() {
        Removed removed = (Removed) this._removedRef;
        if (removed == null) {
            removed = new Removed(this);
            f23914h.lazySet(this, removed);
        }
        return removed;
    }

    /* renamed from: G */
    public final void m533G(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        do {
        } while (!m525O().m532H(lockFreeLinkedListNode, this));
    }

    @PublishedApi
    /* renamed from: H */
    public final boolean m532H(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2) {
        f23913g.lazySet(lockFreeLinkedListNode, this);
        f23912f.lazySet(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        if (!f23912f.compareAndSet(this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.m528L(lockFreeLinkedListNode2);
        return true;
    }

    /* renamed from: I */
    public final boolean m531I(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        f23913g.lazySet(lockFreeLinkedListNode, this);
        f23912f.lazySet(lockFreeLinkedListNode, this);
        while (m527M() == this) {
            if (f23912f.compareAndSet(this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.m528L(this);
                return true;
            }
        }
        return false;
    }

    @NotNull
    /* renamed from: M */
    public final Object m527M() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).mo282c(this);
        }
    }

    @NotNull
    /* renamed from: N */
    public final LockFreeLinkedListNode m526N() {
        return LockFreeLinkedListKt.m537c(m527M());
    }

    @NotNull
    /* renamed from: O */
    public final LockFreeLinkedListNode m525O() {
        LockFreeLinkedListNode J = m530J(null);
        if (J == null) {
            J = m529K((LockFreeLinkedListNode) this._prev);
        }
        return J;
    }

    /* renamed from: P */
    public final void m524P() {
        Object M = m527M();
        if (M != null) {
            ((Removed) M).f23943a.m530J(null);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Removed");
    }

    @PublishedApi
    /* renamed from: Q */
    public final void m523Q() {
        LockFreeLinkedListNode lockFreeLinkedListNode = this;
        while (true) {
            Object M = lockFreeLinkedListNode.m527M();
            if (!(M instanceof Removed)) {
                lockFreeLinkedListNode.m530J(null);
                return;
            }
            lockFreeLinkedListNode = ((Removed) M).f23943a;
        }
    }

    /* renamed from: R */
    public boolean mo522R() {
        return m527M() instanceof Removed;
    }

    /* renamed from: S */
    public boolean mo521S() {
        return m519U() == null;
    }

    @Nullable
    /* renamed from: T */
    public final LockFreeLinkedListNode m520T() {
        while (true) {
            Object M = m527M();
            if (M != null) {
                LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) M;
                if (lockFreeLinkedListNode == this) {
                    return null;
                }
                if (lockFreeLinkedListNode.mo521S()) {
                    return lockFreeLinkedListNode;
                }
                lockFreeLinkedListNode.m524P();
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
    }

    @PublishedApi
    @Nullable
    /* renamed from: U */
    public final LockFreeLinkedListNode m519U() {
        Object M;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            M = m527M();
            if (M instanceof Removed) {
                return ((Removed) M).f23943a;
            }
            if (M == this) {
                return (LockFreeLinkedListNode) M;
            }
            if (M != null) {
                lockFreeLinkedListNode = (LockFreeLinkedListNode) M;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        } while (!f23912f.compareAndSet(this, M, lockFreeLinkedListNode.m518V()));
        lockFreeLinkedListNode.m530J(null);
        return null;
    }

    @PublishedApi
    /* renamed from: W */
    public final int m517W(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2, @NotNull CondAddOp condAddOp) {
        f23913g.lazySet(lockFreeLinkedListNode, this);
        f23912f.lazySet(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        condAddOp.f23918b = lockFreeLinkedListNode2;
        if (!f23912f.compareAndSet(this, lockFreeLinkedListNode2, condAddOp)) {
            return 0;
        }
        return condAddOp.mo282c(this) == null ? 1 : 2;
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
