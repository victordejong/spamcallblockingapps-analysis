package kotlinx.coroutines;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import kotlin.Metadata;
import kotlin.c.b.a.c;
import kotlin.c.b.a.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0002\u001a=\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004\"\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0006\u001a%\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u0004\"\u00020\nH\u0086@ø\u0001��¢\u0006\u0002\u0010\u000b\u001a-\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\fH\u0086@ø\u0001��¢\u0006\u0002\u0010\r\u001a\u001b\u0010\u0007\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\n0\fH\u0086@ø\u0001��¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"awaitAll", "", "T", "deferreds", "", "Lkotlinx/coroutines/Deferred;", "([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinAll", "", "jobs", "Lkotlinx/coroutines/Job;", "([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/d.class */
public final class d {

    /* JADX INFO: Access modifiers changed from: package-private */
    @e(b = "Await.kt", c = {42}, d = "awaitAll", e = "kotlinx.coroutines.AwaitKt")
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00070\u0006H\u0086@"}, d2 = {"awaitAll", "", "T", "", "Lkotlinx/coroutines/Deferred;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/d$a.class */
    public static final class a extends c {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f38791a;

        /* renamed from: b  reason: collision with root package name */
        int f38792b;

        a(kotlin.c.d dVar) {
            super(dVar);
        }

        @Override // kotlin.c.b.a.a
        public final Object a(Object obj) {
            this.f38791a = obj;
            this.f38792b |= BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            return d.a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object a(java.util.Collection<? extends kotlinx.coroutines.as<? extends T>> r4, kotlin.c.d<? super java.util.List<? extends T>> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.d.a
            if (r0 == 0) goto L_0x0026
            r0 = r5
            kotlinx.coroutines.d$a r0 = (kotlinx.coroutines.d.a) r0
            r6 = r0
            r0 = r6
            int r0 = r0.f38792b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r6
            r1 = r6
            int r1 = r1.f38792b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f38792b = r1
            r0 = r6
            r5 = r0
            goto L_0x002f
        L_0x0026:
            kotlinx.coroutines.d$a r0 = new kotlinx.coroutines.d$a
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r5 = r0
        L_0x002f:
            r0 = r5
            java.lang.Object r0 = r0.f38791a
            r6 = r0
            kotlin.c.a.a r0 = kotlin.c.a.a.COROUTINE_SUSPENDED
            r7 = r0
            r0 = r5
            int r0 = r0.f38792b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x005c
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0052
            r0 = r6
            kotlin.p.a(r0)
            r0 = r6
            r4 = r0
            goto L_0x00a2
        L_0x0052:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x005c:
            r0 = r6
            kotlin.p.a(r0)
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0070
            kotlin.a.z r0 = kotlin.a.z.f36608a
            r4 = r0
            goto L_0x00a2
        L_0x0070:
            r0 = r4
            r1 = 0
            kotlinx.coroutines.as[] r1 = new kotlinx.coroutines.as[r1]
            java.lang.Object[] r0 = r0.toArray(r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            kotlinx.coroutines.c r0 = new kotlinx.coroutines.c
            r1 = r0
            r2 = r4
            kotlinx.coroutines.as[] r2 = (kotlinx.coroutines.as[]) r2
            r1.<init>(r2)
            r4 = r0
            r0 = r5
            r1 = 1
            r0.f38792b = r1
            r0 = r4
            r1 = r5
            java.lang.Object r0 = r0.a(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = r7
            if (r0 != r1) goto L_0x00a2
            r0 = r7
            return r0
        L_0x00a2:
            r0 = r4
            java.util.List r0 = (java.util.List) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.d.a(java.util.Collection, kotlin.c.d):java.lang.Object");
    }
}
