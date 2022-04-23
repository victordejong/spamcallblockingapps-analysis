package kotlinx.coroutines.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\f\b\u0017\u0018��2\u00020C:\u0005JKLMNB\u0007¢\u0006\u0004\b\u0001\u0010\u0002J\u0019\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060��j\u0002`\u0003¢\u0006\u0004\b\u0006\u0010\u0007J,\u0010\u000b\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\u000e\b\u0004\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0086\b¢\u0006\u0004\b\u000b\u0010\fJ4\u0010\u000f\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\u0016\u0010\u000e\u001a\u0012\u0012\b\u0012\u00060��j\u0002`\u0003\u0012\u0004\u0012\u00020\t0\rH\u0086\b¢\u0006\u0004\b\u000f\u0010\u0010JD\u0010\u0011\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\u0016\u0010\u000e\u001a\u0012\u0012\b\u0012\u00060��j\u0002`\u0003\u0012\u0004\u0012\u00020\t0\r2\u000e\b\u0004\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0014\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\n\u0010\u0013\u001a\u00060��j\u0002`\u0003H\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\t2\n\u0010\u0004\u001a\u00060��j\u0002`\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\"\u0010\u001a\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0082\u0010¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001d\"\f\b��\u0010\u001c*\u00060��j\u0002`\u00032\u0006\u0010\u0004\u001a\u00028��¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\f\u0012\b\u0012\u00060��j\u0002`\u00030 ¢\u0006\u0004\b!\u0010\"J \u0010$\u001a\u00060��j\u0002`\u00032\n\u0010#\u001a\u00060��j\u0002`\u0003H\u0082\u0010¢\u0006\u0004\b$\u0010%J\u001b\u0010&\u001a\u00020\u00052\n\u0010\u0013\u001a\u00060��j\u0002`\u0003H\u0002¢\u0006\u0004\b&\u0010\u0007J\r\u0010'\u001a\u00020\u0005¢\u0006\u0004\b'\u0010\u0002J\u000f\u0010(\u001a\u00020\u0005H\u0001¢\u0006\u0004\b(\u0010\u0002J,\u0010*\u001a\u00020)2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\u000e\b\u0004\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0081\b¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0003H\u0014¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010/J.\u00100\u001a\u0004\u0018\u00018��\"\u0006\b��\u0010\u001c\u0018\u00012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\t0\rH\u0086\b¢\u0006\u0004\b0\u00101J\u0015\u00102\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0003¢\u0006\u0004\b2\u0010-J\u0017\u00103\u001a\n\u0018\u00010��j\u0004\u0018\u0001`\u0003H\u0001¢\u0006\u0004\b3\u0010-J\u000f\u00105\u001a\u000204H\u0002¢\u0006\u0004\b5\u00106J\u000f\u00108\u001a\u000207H\u0016¢\u0006\u0004\b8\u00109J/\u0010<\u001a\u00020;2\n\u0010\u0004\u001a\u00060��j\u0002`\u00032\n\u0010\u0013\u001a\u00060��j\u0002`\u00032\u0006\u0010:\u001a\u00020)H\u0001¢\u0006\u0004\b<\u0010=J'\u0010A\u001a\u00020\u00052\n\u0010>\u001a\u00060��j\u0002`\u00032\n\u0010\u0013\u001a\u00060��j\u0002`\u0003H��¢\u0006\u0004\b?\u0010@R\u0016\u0010B\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bB\u0010/R\u0013\u0010\u0013\u001a\u00020C8F@\u0006¢\u0006\u0006\u001a\u0004\bD\u0010ER\u0017\u0010G\u001a\u00060��j\u0002`\u00038F@\u0006¢\u0006\u0006\u001a\u0004\bF\u0010-R\u0017\u0010I\u001a\u00060��j\u0002`\u00038F@\u0006¢\u0006\u0006\u001a\u0004\bH\u0010-¨\u0006O"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "<init>", "()V", "Lkotlinx/coroutines/internal/Node;", "node", "", "addLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "Lkotlin/Function0;", "", "condition", "addLastIf", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z", "Lkotlin/Function1;", "predicate", "addLastIfPrev", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;)Z", "addLastIfPrevAndIf", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z", "next", "addNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "addOneIfEmpty", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z", "Lkotlinx/coroutines/internal/OpDescriptor;", "op", "correctPrev", "(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "T", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "describeAddLast", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "describeRemoveFirst", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "current", "findPrevNonRemoved", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "finishAdd", "helpRemove", "helpRemovePrev", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "makeCondAddOp", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "nextIfRemoved", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "remove", "()Z", "removeFirstIfIsInstanceOfOrPeekIf", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "removeFirstOrNull", "removeOrNext", "Lkotlinx/coroutines/internal/Removed;", "removed", "()Lkotlinx/coroutines/internal/Removed;", "", "toString", "()Ljava/lang/String;", "condAdd", "", "tryCondAddNext", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I", "prev", "validateNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "validateNode", "isRemoved", "", "getNext", "()Ljava/lang/Object;", "getNextNode", "nextNode", "getPrevNode", "prevNode", "AbstractAtomicDesc", "AddLastDesc", "CondAddOp", "PrepareOp", "RemoveFirstDesc", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/l.class */
public class l {
    volatile /* synthetic */ Object _next = this;
    volatile /* synthetic */ Object _prev = this;
    private volatile /* synthetic */ Object _removedRef = null;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f38826d = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_next");
    public static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_prev");

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f38825a = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_removedRef");

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\b!\u0018��2\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0011\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0002\u0010\u0005J\u001e\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u00060\u0002j\u0002`\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u0014\u0010\u0004\u001a\u00060\u0002j\u0002`\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u001a\u0010\u0006\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "Lkotlinx/coroutines/internal/AtomicOp;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "newNode", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "oldNext", EventConstants.COMPLETE, "", "affected", "failure", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/l$a.class */
    public static abstract class a extends c<l> {

        /* renamed from: d  reason: collision with root package name */
        public l f38827d;
        public final l e;

        public a(l lVar) {
            this.e = lVar;
        }

        @Override // kotlinx.coroutines.internal.c
        public final /* synthetic */ void a(l lVar, Object obj) {
            l lVar2 = lVar;
            boolean z = obj == null;
            l lVar3 = z ? this.e : this.f38827d;
            if (lVar3 != null && l.f38826d.compareAndSet(lVar2, this, lVar3) && z) {
                l lVar4 = this.e;
                l lVar5 = this.f38827d;
                p.a(lVar5);
                lVar4.c(lVar5);
            }
        }
    }

    private static l b(l lVar) {
        while (lVar.d()) {
            lVar = (l) lVar._prev;
        }
        return lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(l lVar) {
        l lVar2;
        do {
            lVar2 = (l) lVar._prev;
            if (e() != lVar) {
                return;
            }
        } while (!e.compareAndSet(lVar, lVar2, this));
        if (d()) {
            lVar.h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
        if (kotlinx.coroutines.internal.l.f38826d.compareAndSet(r8, r7, ((kotlinx.coroutines.internal.s) r0).f38840a) == false) goto L_0x0000;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlinx.coroutines.internal.l h() {
        /*
            r5 = this;
        L_0x0000:
            r0 = r5
            java.lang.Object r0 = r0._prev
            kotlinx.coroutines.internal.l r0 = (kotlinx.coroutines.internal.l) r0
            r6 = r0
            r0 = r6
            r7 = r0
        L_0x000a:
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r7
            java.lang.Object r0 = r0._next
            r9 = r0
            r0 = r9
            r1 = r5
            kotlinx.coroutines.internal.l r1 = (kotlinx.coroutines.internal.l) r1
            if (r0 != r1) goto L_0x0030
            r0 = r6
            r1 = r7
            if (r0 != r1) goto L_0x0022
            r0 = r7
            return r0
        L_0x0022:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.l.e
            r1 = r5
            r2 = r6
            r3 = r7
            boolean r0 = r0.compareAndSet(r1, r2, r3)
            if (r0 == 0) goto L_0x0000
            r0 = r7
            return r0
        L_0x0030:
            r0 = r5
            boolean r0 = r0.d()
            if (r0 == 0) goto L_0x0039
            r0 = 0
            return r0
        L_0x0039:
            r0 = r9
            if (r0 != 0) goto L_0x0040
            r0 = r7
            return r0
        L_0x0040:
            r0 = r9
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.r
            if (r0 == 0) goto L_0x0055
            r0 = r9
            kotlinx.coroutines.internal.r r0 = (kotlinx.coroutines.internal.r) r0
            r1 = r7
            java.lang.Object r0 = r0.a(r1)
            goto L_0x0000
        L_0x0055:
            r0 = r9
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.s
            if (r0 == 0) goto L_0x0081
            r0 = r8
            if (r0 == 0) goto L_0x0079
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.l.f38826d
            r1 = r8
            r2 = r7
            r3 = r9
            kotlinx.coroutines.internal.s r3 = (kotlinx.coroutines.internal.s) r3
            kotlinx.coroutines.internal.l r3 = r3.f38840a
            boolean r0 = r0.compareAndSet(r1, r2, r3)
            if (r0 == 0) goto L_0x0000
            r0 = r8
            r7 = r0
            goto L_0x000a
        L_0x0079:
            r0 = r7
            java.lang.Object r0 = r0._prev
            r7 = r0
            goto L_0x008e
        L_0x0081:
            r0 = r9
        */
        //  java.lang.String r1 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            r8 = r0
            r0 = r9
            r7 = r0
        L_0x008e:
            r0 = r7
            kotlinx.coroutines.internal.l r0 = (kotlinx.coroutines.internal.l) r0
            r7 = r0
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.l.h():kotlinx.coroutines.internal.l");
    }

    public final boolean a(l lVar) {
        e.lazySet(lVar, this);
        f38826d.lazySet(lVar, this);
        while (e() == this) {
            if (f38826d.compareAndSet(this, this, lVar)) {
                lVar.c(this);
                return true;
            }
        }
        return false;
    }

    public boolean ay_() {
        l lVar;
        while (true) {
            Object e2 = e();
            if (!(e2 instanceof s)) {
                if (e2 != this) {
                    Objects.requireNonNull(e2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                    l lVar2 = (l) e2;
                    s sVar = (s) lVar2._removedRef;
                    s sVar2 = sVar;
                    if (sVar == null) {
                        sVar2 = new s(lVar2);
                        f38825a.lazySet(lVar2, sVar2);
                    }
                    if (f38826d.compareAndSet(this, e2, sVar2)) {
                        lVar2.h();
                        lVar = null;
                        break;
                    }
                } else {
                    lVar = (l) e2;
                    break;
                }
            } else {
                lVar = ((s) e2).f38840a;
                break;
            }
        }
        return lVar == null;
    }

    public boolean d() {
        return e() instanceof s;
    }

    public final Object e() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof r)) {
                return obj;
            }
            ((r) obj).a(this);
        }
    }

    public final l f() {
        return k.a(e());
    }

    public final l g() {
        l h = h();
        l lVar = h;
        if (h == null) {
            lVar = b((l) this._prev);
        }
        return lVar;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
