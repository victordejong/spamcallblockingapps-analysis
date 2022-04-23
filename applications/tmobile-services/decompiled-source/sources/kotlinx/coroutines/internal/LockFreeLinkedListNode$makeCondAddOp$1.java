package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0019\n��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1", "kotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "prepare", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1.class */
public final class LockFreeLinkedListNode$makeCondAddOp$1 extends LockFreeLinkedListNode.CondAddOp {

    /* renamed from: d */
    final /* synthetic */ Function0 f23926d;

    @Nullable
    /* renamed from: j */
    public Object mo280h(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        return ((Boolean) this.f23926d.invoke()).booleanValue() ? null : LockFreeLinkedListKt.m539a();
    }
}
