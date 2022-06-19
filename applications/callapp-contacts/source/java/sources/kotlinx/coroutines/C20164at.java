package kotlinx.coroutines;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p523b.p524a.AbstractC18318c;
import kotlin.p521c.p523b.p524a.AbstractC18320e;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\b\u0012\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\r\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u000eJ\r\u0010\u000f\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0010JH\u0010\u0011\u001a\u00020\u0012\"\u0004\b\u0001\u0010\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00152\"\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00130\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0017H\u0016ø\u0001��¢\u0006\u0002\u0010\u001aR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, m4298d2 = {"Lkotlinx/coroutines/DeferredCoroutine;", "T", "Lkotlinx/coroutines/AbstractCoroutine;", "Lkotlinx/coroutines/Deferred;", "Lkotlinx/coroutines/selects/SelectClause1;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "active", "", "(Lkotlin/coroutines/CoroutineContext;Z)V", "onAwait", "getOnAwait", "()Lkotlinx/coroutines/selects/SelectClause1;", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCompleted", "()Ljava/lang/Object;", "registerSelectClause1", "", "R", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.at */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/at.class */
public class C20164at<T> extends AbstractC20132a<T> implements AbstractC20163as<T> {

    @AbstractC18320e(m4089b = "Builders.common.kt", m4088c = {101}, m4087d = "await$suspendImpl", m4086e = "kotlinx.coroutines.DeferredCoroutine")
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0096@"}, m4298d2 = {"await", "", "T", "continuation", "Lkotlin/coroutines/Continuation;"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.at$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/at$a.class */
    public static final class C20165a extends AbstractC18318c {

        /* renamed from: a */
        /* synthetic */ Object f66570a;

        /* renamed from: b */
        int f66571b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20165a(AbstractC18332d abstractC18332d) {
            super(abstractC18332d);
            C20164at.this = r4;
        }

        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        public final Object mo57a(Object obj) {
            this.f66570a = obj;
            this.f66571b |= BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            return C20164at.m1071a(C20164at.this, (AbstractC18332d) this);
        }
    }

    public C20164at(AbstractC18335f abstractC18335f, boolean z) {
        super(abstractC18335f, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object m1071a(kotlinx.coroutines.C20164at r5, kotlin.p521c.AbstractC18332d r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.C20164at.C20165a
            if (r0 == 0) goto L26
            r0 = r6
            kotlinx.coroutines.at$a r0 = (kotlinx.coroutines.C20164at.C20165a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f66571b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r7
            r1 = r7
            int r1 = r1.f66571b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f66571b = r1
            r0 = r7
            r6 = r0
            goto L30
        L26:
            kotlinx.coroutines.at$a r0 = new kotlinx.coroutines.at$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L30:
            r0 = r6
            java.lang.Object r0 = r0.f66570a
            r7 = r0
            kotlin.c.a.a r0 = kotlin.p521c.p522a.EnumC18307a.COROUTINE_SUSPENDED
            r8 = r0
            r0 = r6
            int r0 = r0.f66571b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L5d
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L53
            r0 = r7
            kotlin.C18542p.m3835a(r0)
            r0 = r7
            r5 = r0
            goto L75
        L53:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5d:
            r0 = r7
            kotlin.C18542p.m3835a(r0)
            r0 = r6
            r1 = 1
            r0.f66571b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m955b(r1)
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = r8
            if (r0 != r1) goto L75
            r0 = r8
            return r0
        L75:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20164at.m1071a(kotlinx.coroutines.at, kotlin.c.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.AbstractC20163as
    /* renamed from: a */
    public final T mo1073a() {
        Object m935p = m935p();
        if (!(m935p instanceof AbstractC20213bq)) {
            if (m935p instanceof C20322z) {
                throw ((C20322z) m935p).f66802b;
            }
            return (T) C20233cb.m927b(m935p);
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    @Override // kotlinx.coroutines.AbstractC20163as
    /* renamed from: a */
    public final Object mo1072a(AbstractC18332d<? super T> abstractC18332d) {
        return m1071a((C20164at) this, (AbstractC18332d) abstractC18332d);
    }
}
