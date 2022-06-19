package p193e.p194a.p195a.p198b;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.a.b.g0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/g0.class */
public final class C4957g0 implements AbstractC4955f0 {

    /* renamed from: a */
    public final AbstractC19022f0 f16866a;

    /* renamed from: b */
    public final AbstractC6005m f16867b;

    /* renamed from: c */
    public final f f16868c;

    @e(c = "com.truecaller.messaging.messaginglist.PromotionalTabPromoStateManagerImpl", f = "PromoStateManager.kt", l = {171}, m = "getInboxCleanerPromotionalTabState")
    /* renamed from: e.a.a.b.g0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/g0$a.class */
    public static final class C4958a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f16869d;

        /* renamed from: e */
        public int f16870e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4958a(d dVar) {
            super(dVar);
            C4957g0.this = r4;
        }

        /* renamed from: s */
        public final Object m34192s(Object obj) {
            this.f16869d = obj;
            this.f16870e |= Integer.MIN_VALUE;
            return C4957g0.this.m34193b(this);
        }
    }

    @Inject
    public C4957g0(AbstractC19022f0 abstractC19022f0, AbstractC6005m abstractC6005m, @Named("IO") f fVar) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6005m, "inboxCleaner");
        l.e(fVar, "asyncContext");
        this.f16866a = abstractC19022f0;
        this.f16867b = abstractC6005m;
        this.f16868c = fVar;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4951d0
    /* renamed from: a */
    public Object mo34097a(d<? super AbstractC6798d1> dVar) {
        return !this.f16866a.mo14245a() ? AbstractC6798d1.C6820p.f22367b : s1.a.a.a.v0.f.d.a4(this.f16868c, new C4960h0(this, null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m34193b(s1.w.d<? super p193e.p194a.p195a.p258m.AbstractC6798d1> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p195a.p198b.C4957g0.C4958a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.a.b.g0$a r0 = (p193e.p194a.p195a.p198b.C4957g0.C4958a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f16870e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f16870e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.a.b.g0$a r0 = new e.a.a.b.g0$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f16869d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f16870e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L7b
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.a.e.m r0 = r0.f16867b
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f16870e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo32055b(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7b
            r0 = r9
            return r0
        L7b:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L8c
            e.a.a.m.d1$k r0 = p193e.p194a.p195a.p258m.AbstractC6798d1.C6815k.f22362b
            r6 = r0
            goto L8e
        L8c:
            r0 = 0
            r6 = r0
        L8e:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4957g0.m34193b(s1.w.d):java.lang.Object");
    }
}
