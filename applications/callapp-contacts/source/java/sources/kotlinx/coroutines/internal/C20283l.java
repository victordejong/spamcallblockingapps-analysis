package kotlinx.coroutines.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��j\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\f\b\u0017\u0018��2\u00020C:\u0005JKLMNB\u0007¢\u0006\u0004\b\u0001\u0010\u0002J\u0019\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060��j\u0002`\u0003¢\u0006\u0004\b\u0006\u0010\u0007J,\u0010\u000b\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\u000e\b\u0004\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0086\b¢\u0006\u0004\b\u000b\u0010\fJ4\u0010\u000f\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\u0016\u0010\u000e\u001a\u0012\u0012\b\u0012\u00060��j\u0002`\u0003\u0012\u0004\u0012\u00020\t0\rH\u0086\b¢\u0006\u0004\b\u000f\u0010\u0010JD\u0010\u0011\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\u0016\u0010\u000e\u001a\u0012\u0012\b\u0012\u00060��j\u0002`\u0003\u0012\u0004\u0012\u00020\t0\r2\u000e\b\u0004\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0014\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\n\u0010\u0013\u001a\u00060��j\u0002`\u0003H\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\"\u0010\u001a\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0082\u0010¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001d\"\f\b��\u0010\u001c*\u00060��j\u0002`\u00032\u0006\u0010\u0004\u001a\u00028��¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\f\u0012\b\u0012\u00060��j\u0002`\u00030 ¢\u0006\u0004\b!\u0010\"J \u0010$\u001a\u00060��j\u0002`\u00032\n\u0010#\u001a\u00060��j\u0002`\u0003H\u0082\u0010¢\u0006\u0004\b$\u0010%J\u001b\u0010&\u001a\u00020\u00052\n\u0010\u0013\u001a\u00060��j\u0002`\u0003H\u0002¢\u0006\u0004\b&\u0010\u0007J\r\u0010'\u001a\u00020\u0005¢\u0006\u0004\b'\u0010\u0002J\u000f\u0010(\u001a\u00020\u0005H\u0001¢\u0006\u0004\b(\u0010\u0002J,\u0010*\u001a\u00020)2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\u000e\b\u0004\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0081\b¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0003H\u0014¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010/J.\u00100\u001a\u0004\u0018\u00018��\"\u0006\b��\u0010\u001c\u0018\u00012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\t0\rH\u0086\b¢\u0006\u0004\b0\u00101J\u0015\u00102\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0003¢\u0006\u0004\b2\u0010-J\u0017\u00103\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0003H\u0001¢\u0006\u0004\b3\u0010-J\u000f\u00105\u001a\u000204H\u0002¢\u0006\u0004\b5\u00106J\u000f\u00108\u001a\u000207H\u0016¢\u0006\u0004\b8\u00109J/\u0010<\u001a\u00020;2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\n\u0010\u0013\u001a\u00060��j\u0002`\u00032\u0006\u0010:\u001a\u00020)H\u0001¢\u0006\u0004\b<\u0010=J'\u0010A\u001a\u00020\u00052\n\u0010>\u001a\u00060��j\u0002`\u00032\n\u0010\u0013\u001a\u00060��j\u0002`\u0003H��¢\u0006\u0004\b?\u0010@R\u0016\u0010B\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bB\u0010/R\u0013\u0010\u0013\u001a\u00020C8F@\u0006¢\u0006\u0006\u001a\u0004\bD\u0010ER\u0017\u0010G\u001a\u00060��j\u0002`\u00038F@\u0006¢\u0006\u0006\u001a\u0004\bF\u0010-R\u0017\u0010I\u001a\u00060��j\u0002`\u00038F@\u0006¢\u0006\u0006\u001a\u0004\bH\u0010-¨\u0006O"}, m4298d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "<init>", "()V", "Lkotlinx/coroutines/internal/Node;", "node", "", "addLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "Lkotlin/Function0;", "", "condition", "addLastIf", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z", "Lkotlin/Function1;", "predicate", "addLastIfPrev", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;)Z", "addLastIfPrevAndIf", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z", "next", "addNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "addOneIfEmpty", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "Lkotlinx/coroutines/internal/OpDescriptor;", "op", "correctPrev", "(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "T", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "describeAddLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "describeRemoveFirst", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "current", "findPrevNonRemoved", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "finishAdd", "helpRemove", "helpRemovePrev", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "makeCondAddOp", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "nextIfRemoved", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "remove", "()Z", "removeFirstIfIsInstanceOfOrPeekIf", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "removeFirstOrNull", "removeOrNext", "Lkotlinx/coroutines/internal/Removed;", "removed", "()Lkotlinx/coroutines/internal/Removed;", "", "toString", "()Ljava/lang/String;", "condAdd", "", "tryCondAddNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I", "prev", "validateNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "validateNode", "isRemoved", "", "getNext", "()Ljava/lang/Object;", "getNextNode", "nextNode", "getPrevNode", "prevNode", "AbstractAtomicDesc", "AddLastDesc", "CondAddOp", "PrepareOp", "RemoveFirstDesc", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.l */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/l.class */
public class C20283l {
    volatile /* synthetic */ Object _next = this;
    volatile /* synthetic */ Object _prev = this;
    private volatile /* synthetic */ Object _removedRef = null;

    /* renamed from: d */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f66749d = AtomicReferenceFieldUpdater.newUpdater(C20283l.class, Object.class, "_next");

    /* renamed from: e */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f66750e = AtomicReferenceFieldUpdater.newUpdater(C20283l.class, Object.class, "_prev");

    /* renamed from: a */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f66748a = AtomicReferenceFieldUpdater.newUpdater(C20283l.class, Object.class, "_removedRef");

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\b!\u0018��2\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0011\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0002\u0010\u0005J\u001e\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u00060\u0002j\u0002`\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u0014\u0010\u0004\u001a\u00060\u0002j\u0002`\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u001a\u0010\u0006\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "Lkotlinx/coroutines/internal/AtomicOp;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "newNode", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "oldNext", EventConstants.COMPLETE, "", "affected", "failure", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.l$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/l$a.class */
    public static abstract class AbstractC20284a extends AbstractC20267c<C20283l> {

        /* renamed from: d */
        public C20283l f66751d;

        /* renamed from: e */
        public final C20283l f66752e;

        public AbstractC20284a(C20283l c20283l) {
            this.f66752e = c20283l;
        }

        @Override // kotlinx.coroutines.internal.AbstractC20267c
        /* renamed from: a */
        public final /* synthetic */ void mo850a(C20283l c20283l, Object obj) {
            C20283l c20283l2 = c20283l;
            boolean z = obj == null;
            C20283l c20283l3 = z ? this.f66752e : this.f66751d;
            if (c20283l3 == null || !C20283l.f66749d.compareAndSet(c20283l2, this, c20283l3) || !z) {
                return;
            }
            C20283l c20283l4 = this.f66752e;
            C20283l c20283l5 = this.f66751d;
            C18524p.m3851a(c20283l5);
            c20283l4.m856c(c20283l5);
        }
    }

    /* renamed from: b */
    private static C20283l m857b(C20283l c20283l) {
        while (c20283l.mo855d()) {
            c20283l = (C20283l) c20283l._prev;
        }
        return c20283l;
    }

    /* renamed from: c */
    public final void m856c(C20283l c20283l) {
        C20283l c20283l2;
        do {
            c20283l2 = (C20283l) c20283l._prev;
            if (m854e() != c20283l) {
                return;
            }
        } while (!f66750e.compareAndSet(c20283l, c20283l2, this));
        if (mo855d()) {
            c20283l.m851h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
        if (kotlinx.coroutines.internal.C20283l.f66749d.compareAndSet(r8, r7, ((kotlinx.coroutines.internal.C20293s) r0).f66769a) == false) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlinx.coroutines.internal.C20283l m851h() {
        /*
            r5 = this;
        L0:
            r0 = r5
            java.lang.Object r0 = r0._prev
            kotlinx.coroutines.internal.l r0 = (kotlinx.coroutines.internal.C20283l) r0
            r6 = r0
            r0 = r6
            r7 = r0
        La:
            r0 = 0
            r8 = r0
        Lc:
            r0 = r7
            java.lang.Object r0 = r0._next
            r9 = r0
            r0 = r9
            r1 = r5
            kotlinx.coroutines.internal.l r1 = (kotlinx.coroutines.internal.C20283l) r1
            if (r0 != r1) goto L30
            r0 = r6
            r1 = r7
            if (r0 != r1) goto L22
            r0 = r7
            return r0
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.C20283l.f66750e
            r1 = r5
            r2 = r6
            r3 = r7
            boolean r0 = r0.compareAndSet(r1, r2, r3)
            if (r0 == 0) goto L0
            r0 = r7
            return r0
        L30:
            r0 = r5
            boolean r0 = r0.mo855d()
            if (r0 == 0) goto L39
            r0 = 0
            return r0
        L39:
            r0 = r9
            if (r0 != 0) goto L40
            r0 = r7
            return r0
        L40:
            r0 = r9
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.AbstractC20292r
            if (r0 == 0) goto L55
            r0 = r9
            kotlinx.coroutines.internal.r r0 = (kotlinx.coroutines.internal.AbstractC20292r) r0
            r1 = r7
            java.lang.Object r0 = r0.mo822a(r1)
            goto L0
        L55:
            r0 = r9
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.C20293s
            if (r0 == 0) goto L81
            r0 = r8
            if (r0 == 0) goto L79
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.C20283l.f66749d
            r1 = r8
            r2 = r7
            r3 = r9
            kotlinx.coroutines.internal.s r3 = (kotlinx.coroutines.internal.C20293s) r3
            kotlinx.coroutines.internal.l r3 = r3.f66769a
            boolean r0 = r0.compareAndSet(r1, r2, r3)
            if (r0 == 0) goto L0
            r0 = r8
            r7 = r0
            goto La
        L79:
            r0 = r7
            java.lang.Object r0 = r0._prev
            r7 = r0
            goto L8e
        L81:
            r0 = r9
        */
        //  java.lang.String r1 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            r8 = r0
            r0 = r9
            r7 = r0
        L8e:
            r0 = r7
            kotlinx.coroutines.internal.l r0 = (kotlinx.coroutines.internal.C20283l) r0
            r7 = r0
            goto Lc
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.C20283l.m851h():kotlinx.coroutines.internal.l");
    }

    /* renamed from: a */
    public final boolean m859a(C20283l c20283l) {
        f66750e.lazySet(c20283l, this);
        f66749d.lazySet(c20283l, this);
        while (m854e() == this) {
            if (f66749d.compareAndSet(this, this, c20283l)) {
                c20283l.m856c(this);
                return true;
            }
        }
        return false;
    }

    public boolean ay_() {
        C20283l c20283l;
        while (true) {
            Object m854e = m854e();
            if (!(m854e instanceof C20293s)) {
                if (m854e != this) {
                    Objects.requireNonNull(m854e, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                    C20283l c20283l2 = (C20283l) m854e;
                    C20293s c20293s = (C20293s) c20283l2._removedRef;
                    C20293s c20293s2 = c20293s;
                    if (c20293s == null) {
                        c20293s2 = new C20293s(c20283l2);
                        f66748a.lazySet(c20283l2, c20293s2);
                    }
                    if (f66749d.compareAndSet(this, m854e, c20293s2)) {
                        c20283l2.m851h();
                        c20283l = null;
                        break;
                    }
                } else {
                    c20283l = (C20283l) m854e;
                    break;
                }
            } else {
                c20283l = ((C20293s) m854e).f66769a;
                break;
            }
        }
        return c20283l == null;
    }

    /* renamed from: d */
    public boolean mo855d() {
        return m854e() instanceof C20293s;
    }

    /* renamed from: e */
    public final Object m854e() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof AbstractC20292r)) {
                return obj;
            }
            ((AbstractC20292r) obj).mo822a(this);
        }
    }

    /* renamed from: f */
    public final C20283l m853f() {
        return C20282k.m860a(m854e());
    }

    /* renamed from: g */
    public final C20283l m852g() {
        C20283l m851h = m851h();
        C20283l c20283l = m851h;
        if (m851h == null) {
            c20283l = m857b((C20283l) this._prev);
        }
        return c20283l;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
