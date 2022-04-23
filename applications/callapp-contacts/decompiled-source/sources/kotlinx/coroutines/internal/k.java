package kotlinx.coroutines.internal;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n��\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0010\u0010\u0010\u001a\u00060\u0011j\u0002`\u0012*\u00020\u0001H\u0001\"\u001c\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00078��X\u0081T¢\u0006\b\n��\u0012\u0004\b\b\u0010\u0003\"\u001c\u0010\t\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u000e\n��\u0012\u0004\b\n\u0010\u0003\u001a\u0004\b\u000b\u0010\u0005\"\u0016\u0010\f\u001a\u00020\u00078��X\u0081T¢\u0006\b\n��\u0012\u0004\b\r\u0010\u0003\"\u0016\u0010\u000e\u001a\u00020\u00078��X\u0081T¢\u0006\b\n��\u0012\u0004\b\u000f\u0010\u0003*\n\u0010\u0013\"\u00020\u00142\u00020\u0014*\u001c\u0010\u0015\u001a\u0004\b��\u0010\u0016\"\b\u0012\u0004\u0012\u0002H\u00160\u00172\b\u0012\u0004\u0012\u0002H\u00160\u0017*\f\b\u0002\u0010\u0018\"\u00020\u00112\u00020\u0011*\n\u0010\u0019\"\u00020\u001a2\u00020\u001a*\u001c\u0010\u001b\u001a\u0004\b��\u0010\u0016\"\b\u0012\u0004\u0012\u0002H\u00160\u001c2\b\u0012\u0004\u0012\u0002H\u00160\u001c¨\u0006\u001d"}, d2 = {"CONDITION_FALSE", "", "getCONDITION_FALSE$annotations", "()V", "getCONDITION_FALSE", "()Ljava/lang/Object;", "FAILURE", "", "getFAILURE$annotations", "LIST_EMPTY", "getLIST_EMPTY$annotations", "getLIST_EMPTY", "SUCCESS", "getSUCCESS$annotations", "UNDECIDED", "getUNDECIDED$annotations", "unwrap", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "AbstractAtomicDesc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;", "AddLastDesc", "T", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Node", "PrepareOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "RemoveFirstDesc", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f38823a = new v("CONDITION_FALSE");

    /* renamed from: b  reason: collision with root package name */
    private static final Object f38824b = new v("LIST_EMPTY");

    public static final Object a() {
        return f38823a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r0 == null) goto L_0x0022;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.coroutines.internal.l a(java.lang.Object r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof kotlinx.coroutines.internal.s
            if (r0 != 0) goto L_0x000c
            r0 = 0
            r4 = r0
            goto L_0x000e
        L_0x000c:
            r0 = r3
            r4 = r0
        L_0x000e:
            r0 = r4
            kotlinx.coroutines.internal.s r0 = (kotlinx.coroutines.internal.s) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0022
            r0 = r4
            kotlinx.coroutines.internal.l r0 = r0.f38840a
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            if (r0 != 0) goto L_0x002e
        L_0x0022:
            r0 = r3
        */
        //  java.lang.String r1 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r3
            kotlinx.coroutines.internal.l r0 = (kotlinx.coroutines.internal.l) r0
            r4 = r0
        L_0x002e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.k.a(java.lang.Object):kotlinx.coroutines.internal.l");
    }
}
