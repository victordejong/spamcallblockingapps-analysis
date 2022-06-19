package p193e.p194a.p1195s.p1207q.p1208e;

import javax.inject.Inject;
import p193e.p194a.p1195s.p1205o.AbstractC20102d;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.s.q.e.b */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/e/b.class */
public final class C20114b implements AbstractC20113a {

    /* renamed from: a */
    public final AbstractC20102d f56729a;

    @e(c = "com.truecaller.callhero_assistant.onboarding.forward.CarrierRepositoryImpl", f = "CarrierRepository.kt", l = {19}, m = "getCarriers")
    /* renamed from: e.a.s.q.e.b$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/e/b$a.class */
    public static final class C20115a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f56730d;

        /* renamed from: e */
        public int f56731e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20115a(d dVar) {
            super(dVar);
            C20114b.this = r4;
        }

        /* renamed from: s */
        public final Object m11524s(Object obj) {
            this.f56730d = obj;
            this.f56731e |= Integer.MIN_VALUE;
            return C20114b.this.m11525a(this);
        }
    }

    @Inject
    public C20114b(AbstractC20102d abstractC20102d) {
        l.e(abstractC20102d, "restAdapter");
        this.f56729a = abstractC20102d;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|27|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|25|26))|7|8|27|(0)(0)|22|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0084, code lost:
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m11525a(s1.w.d<? super java.util.List<com.truecaller.callhero_assistant.data.Carrier>> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1195s.p1207q.p1208e.C20114b.C20115a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.s.q.e.b$a r0 = (p193e.p194a.p1195s.p1207q.p1208e.C20114b.C20115a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f56731e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f56731e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.s.q.e.b$a r0 = new e.a.s.q.e.b$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f56730d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f56731e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.lang.Exception -> L83
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
            e.a.s.o.d r0 = r0.f56729a     // Catch: java.lang.Exception -> L83
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f56731e = r1     // Catch: java.lang.Exception -> L83
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo11537f(r1)     // Catch: java.lang.Exception -> L83
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
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Exception -> L83
            r6 = r0
            goto L86
        L83:
            r6 = move-exception
            r0 = 0
            r6 = r0
        L86:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1195s.p1207q.p1208e.C20114b.m11525a(s1.w.d):java.lang.Object");
    }
}
