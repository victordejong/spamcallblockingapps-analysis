package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import p626l.p641z.p642c.AbstractC15107a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016¨\u0006\u0007"}, m815d2 = {"kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "prepare", "", "affected", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1.class */
public final class LockFreeLinkedListNode$makeCondAddOp$1 extends LockFreeLinkedListNode.CondAddOp {
    public final /* synthetic */ AbstractC15107a $condition;
    public final /* synthetic */ LockFreeLinkedListNode $node;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LockFreeLinkedListNode$makeCondAddOp$1(AbstractC15107a aVar, LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        super(lockFreeLinkedListNode2);
        this.$condition = aVar;
        this.$node = lockFreeLinkedListNode;
    }

    public Object prepare(LockFreeLinkedListNode lockFreeLinkedListNode) {
        return ((Boolean) this.$condition.invoke()).booleanValue() ? null : LockFreeLinkedListKt.getCONDITION_FALSE();
    }
}
