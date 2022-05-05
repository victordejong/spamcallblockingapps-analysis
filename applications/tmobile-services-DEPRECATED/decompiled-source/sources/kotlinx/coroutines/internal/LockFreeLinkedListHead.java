package kotlinx.coroutines.internal;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\b\u0016\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u000fJ4\u0010\u0007\u001a\u00020\u0005\"\u000e\b��\u0010\u0003\u0018\u0001*\u00060\u0001j\u0002`\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00050\u0004H\u0086\b¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u0002H\u0014¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u0005H��¢\u0006\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0011\u001a\u00020\u000b8F@\u0006¢\u0006\u0006\u001a\u0004\b\u0011\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\r¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "T", "Lkotlin/Function1;", "", "block", "forEach", "(Lkotlin/Function1;)V", "nextIfRemoved", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "", "remove", "()Z", "validate$kotlinx_coroutines_core", "()V", "validate", "isEmpty", "isRemoved", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeLinkedListHead.class */
public class LockFreeLinkedListHead extends LockFreeLinkedListNode {
    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    /* renamed from: R */
    public boolean mo522R() {
        return false;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    /* renamed from: S */
    public final boolean mo521S() {
        throw new IllegalStateException("head cannot be removed".toString());
    }

    /* renamed from: X */
    public final boolean m540X() {
        return m527M() == this;
    }
}
