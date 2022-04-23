package kotlinx.coroutines;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import kotlin.Metadata;
import kotlin.c.b.a.c;
import kotlin.c.b.a.e;
import kotlin.c.d;
import kotlin.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\b\u0012\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\r\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u000eJ\r\u0010\u000f\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0010JH\u0010\u0011\u001a\u00020\u0012\"\u0004\b\u0001\u0010\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00152\"\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00130\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0017H\u0016ø\u0001��¢\u0006\u0002\u0010\u001aR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/DeferredCoroutine;", "T", "Lkotlinx/coroutines/AbstractCoroutine;", "Lkotlinx/coroutines/Deferred;", "Lkotlinx/coroutines/selects/SelectClause1;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "active", "", "(Lkotlin/coroutines/CoroutineContext;Z)V", "onAwait", "getOnAwait", "()Lkotlinx/coroutines/selects/SelectClause1;", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCompleted", "()Ljava/lang/Object;", "registerSelectClause1", "", "R", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/at.class */
class at<T> extends kotlinx.coroutines.a<T> implements as<T> {

    /* JADX INFO: Access modifiers changed from: package-private */
    @e(b = "Builders.common.kt", c = {101}, d = "await$suspendImpl", e = "kotlinx.coroutines.DeferredCoroutine")
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0096@"}, d2 = {"await", "", "T", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/at$a.class */
    public static final class a extends c {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f38693a;

        /* renamed from: b  reason: collision with root package name */
        int f38694b;

        a(d dVar) {
            super(dVar);
        }

        @Override // kotlin.c.b.a.a
        public final Object a(Object obj) {
            this.f38693a = obj;
            this.f38694b |= BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            return at.a(at.this, (d) this);
        }
    }

    public at(f fVar, boolean z) {
        super(fVar, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object a(kotlinx.coroutines.at r5, kotlin.c.d r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.at.a
            if (r0 == 0) goto L_0x0026
            r0 = r6
            kotlinx.coroutines.at$a r0 = (kotlinx.coroutines.at.a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f38694b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r7
            r1 = r7
            int r1 = r1.f38694b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f38694b = r1
            r0 = r7
            r6 = r0
            goto L_0x0030
        L_0x0026:
            kotlinx.coroutines.at$a r0 = new kotlinx.coroutines.at$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L_0x0030:
            r0 = r6
            java.lang.Object r0 = r0.f38693a
            r7 = r0
            kotlin.c.a.a r0 = kotlin.c.a.a.COROUTINE_SUSPENDED
            r8 = r0
            r0 = r6
            int r0 = r0.f38694b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x005d
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L_0x0053
            r0 = r7
            kotlin.p.a(r0)
            r0 = r7
            r5 = r0
            goto L_0x0075
        L_0x0053:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x005d:
            r0 = r7
            kotlin.p.a(r0)
            r0 = r6
            r1 = 1
            r0.f38694b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.b(r1)
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = r8
            if (r0 != r1) goto L_0x0075
            r0 = r8
            return r0
        L_0x0075:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.at.a(kotlinx.coroutines.at, kotlin.c.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.as
    public final T a() {
        Object p = p();
        if (!(!(p instanceof bq))) {
            throw new IllegalStateException("This job has not completed yet".toString());
        } else if (!(p instanceof z)) {
            return (T) cb.b(p);
        } else {
            throw ((z) p).f38868b;
        }
    }

    @Override // kotlinx.coroutines.as
    public final Object a(d<? super T> dVar) {
        return a((at) this, (d) dVar);
    }
}
