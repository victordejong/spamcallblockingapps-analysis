package kotlinx.coroutines;

import androidx.customview.p026a.AbstractC0610a;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p081e.p083b.C1694h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: kotlinx.coroutines.al */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/al.class */
public class C1794al<T> extends AbstractC1778a<T> implements AbstractC1793ak<T> {

    @AbstractC1634f(m3162b = "Builders.common.kt", m3161c = {99}, m3160d = "await$suspendImpl", m3159e = "kotlinx.coroutines.DeferredCoroutine")
    /* renamed from: kotlinx.coroutines.al$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/al$a.class */
    public static final class C1795a extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f4476a;

        /* renamed from: b */
        int f4477b;

        /* renamed from: d */
        Object f4479d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1795a(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C1794al.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f4476a = obj;
            this.f4477b |= AbstractC0610a.INVALID_ID;
            return C1794al.m2947a(C1794al.this, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1794al(AbstractC1646f abstractC1646f, boolean z) {
        super(abstractC1646f, z);
        C1694h.m3117b(abstractC1646f, "parentContext");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object m2947a(kotlinx.coroutines.C1794al r5, kotlin.p075c.AbstractC1641c r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.C1794al.C1795a
            if (r0 == 0) goto L26
            r0 = r6
            kotlinx.coroutines.al$a r0 = (kotlinx.coroutines.C1794al.C1795a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f4477b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r7
            r1 = r7
            int r1 = r1.f4477b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f4477b = r1
            r0 = r7
            r6 = r0
            goto L30
        L26:
            kotlinx.coroutines.al$a r0 = new kotlinx.coroutines.al$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L30:
            r0 = r6
            java.lang.Object r0 = r0.f4476a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f4477b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L70
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L66
            r0 = r6
            java.lang.Object r0 = r0.f4479d
            kotlinx.coroutines.al r0 = (kotlinx.coroutines.C1794al) r0
            r5 = r0
            r0 = r7
            boolean r0 = r0 instanceof kotlin.C1768j.C1770b
            if (r0 != 0) goto L5e
            r0 = r7
            r5 = r0
            goto L90
        L5e:
            r0 = r7
            kotlin.j$b r0 = (kotlin.C1768j.C1770b) r0
            java.lang.Throwable r0 = r0.f4445a
            throw r0
        L66:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L70:
            r0 = r7
            boolean r0 = r0 instanceof kotlin.C1768j.C1770b
            if (r0 != 0) goto L92
            r0 = r6
            r1 = r5
            r0.f4479d = r1
            r0 = r6
            r1 = 1
            r0.f4477b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m2774b(r1)
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = r8
            if (r0 != r1) goto L90
            r0 = r8
            return r0
        L90:
            r0 = r5
            return r0
        L92:
            r0 = r7
            kotlin.j$b r0 = (kotlin.C1768j.C1770b) r0
            java.lang.Throwable r0 = r0.f4445a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1794al.m2947a(kotlinx.coroutines.al, kotlin.c.c):java.lang.Object");
    }

    @Override // kotlinx.coroutines.AbstractC1793ak
    /* renamed from: a */
    public Object mo2948a(AbstractC1641c<? super T> abstractC1641c) {
        return m2947a(this, abstractC1641c);
    }

    @Override // kotlinx.coroutines.C1858bq
    /* renamed from: n_ */
    protected boolean mo2720n_() {
        return true;
    }
}
