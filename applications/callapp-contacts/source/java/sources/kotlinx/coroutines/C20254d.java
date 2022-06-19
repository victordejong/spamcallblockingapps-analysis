package kotlinx.coroutines;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.p523b.p524a.AbstractC18318c;
import kotlin.p521c.p523b.p524a.AbstractC18320e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0002\u001a=\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004\"\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0006\u001a%\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u0004\"\u00020\nH\u0086@ø\u0001��¢\u0006\u0002\u0010\u000b\u001a-\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\fH\u0086@ø\u0001��¢\u0006\u0002\u0010\r\u001a\u001b\u0010\u0007\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\n0\fH\u0086@ø\u0001��¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m4298d2 = {"awaitAll", "", "T", "deferreds", "", "Lkotlinx/coroutines/Deferred;", "([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinAll", "", "jobs", "Lkotlinx/coroutines/Job;", "([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.d */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/d.class */
public final class C20254d {

    @AbstractC18320e(m4089b = "Await.kt", m4088c = {42}, m4087d = "awaitAll", m4086e = "kotlinx.coroutines.AwaitKt")
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n��\n\u0002\u0010��\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00070\u0006H\u0086@"}, m4298d2 = {"awaitAll", "", "T", "", "Lkotlinx/coroutines/Deferred;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/d$a.class */
    public static final class C20255a extends AbstractC18318c {

        /* renamed from: a */
        /* synthetic */ Object f66710a;

        /* renamed from: b */
        int f66711b;

        C20255a(AbstractC18332d abstractC18332d) {
            super(abstractC18332d);
        }

        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        public final Object mo57a(Object obj) {
            this.f66710a = obj;
            this.f66711b |= BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            return C20254d.m905a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m905a(java.util.Collection<? extends kotlinx.coroutines.AbstractC20163as<? extends T>> r4, kotlin.p521c.AbstractC18332d<? super java.util.List<? extends T>> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.C20254d.C20255a
            if (r0 == 0) goto L26
            r0 = r5
            kotlinx.coroutines.d$a r0 = (kotlinx.coroutines.C20254d.C20255a) r0
            r6 = r0
            r0 = r6
            int r0 = r0.f66711b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r6
            int r1 = r1.f66711b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f66711b = r1
            r0 = r6
            r5 = r0
            goto L2f
        L26:
            kotlinx.coroutines.d$a r0 = new kotlinx.coroutines.d$a
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r5 = r0
        L2f:
            r0 = r5
            java.lang.Object r0 = r0.f66710a
            r6 = r0
            kotlin.c.a.a r0 = kotlin.p521c.p522a.EnumC18307a.COROUTINE_SUSPENDED
            r7 = r0
            r0 = r5
            int r0 = r0.f66711b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5c
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L52
            r0 = r6
            kotlin.C18542p.m3835a(r0)
            r0 = r6
            r4 = r0
            goto La2
        L52:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5c:
            r0 = r6
            kotlin.C18542p.m3835a(r0)
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L70
            kotlin.a.z r0 = kotlin.p518a.C18297z.f63400a
            r4 = r0
            goto La2
        L70:
            r0 = r4
            r1 = 0
            kotlinx.coroutines.as[] r1 = new kotlinx.coroutines.AbstractC20163as[r1]
            java.lang.Object[] r0 = r0.toArray(r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            kotlinx.coroutines.c r0 = new kotlinx.coroutines.c
            r1 = r0
            r2 = r4
            kotlinx.coroutines.as[] r2 = (kotlinx.coroutines.AbstractC20163as[]) r2
            r1.<init>(r2)
            r4 = r0
            r0 = r5
            r1 = 1
            r0.f66711b = r1
            r0 = r4
            r1 = r5
            java.lang.Object r0 = r0.m979a(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = r7
            if (r0 != r1) goto La2
            r0 = r7
            return r0
        La2:
            r0 = r4
            java.util.List r0 = (java.util.List) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20254d.m905a(java.util.Collection, kotlin.c.d):java.lang.Object");
    }
}
