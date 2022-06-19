package p193e.p194a.p1052m;

import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.m.d0 */
/* loaded from: classes7-dex2jar.jar:e/a/m/d0.class */
public final class C17862d0 implements AbstractC17860c0 {

    @e(c = "com.truecaller.consentrefresh.PrivacyRegionUpdaterImpl", f = "PrivacyRegionUpdater.kt", l = {19}, m = "updatePrivacyRegion")
    /* renamed from: e.a.m.d0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/m/d0$a.class */
    public static final class C17863a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f50838d;

        /* renamed from: e */
        public int f50839e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17863a(d dVar) {
            super(dVar);
            C17862d0.this = r4;
        }

        /* renamed from: s */
        public final Object m15750s(Object obj) {
            this.f50838d = obj;
            this.f50839e |= Integer.MIN_VALUE;
            return C17862d0.this.mo15751a(null, this);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|27|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|25|26))|7|8|27|(0)(0)|22|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    @Override // p193e.p194a.p1052m.AbstractC17860c0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15751a(java.lang.String r6, s1.w.d<? super x3.a0<s1.s>> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p1052m.C17862d0.C17863a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.m.d0$a r0 = (p193e.p194a.p1052m.C17862d0.C17863a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f50839e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f50839e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.m.d0$a r0 = new e.a.m.d0$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f50838d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f50839e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.io.IOException -> L91
            r0 = r8
            r6 = r0
            goto L89
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            com.truecaller.common.network.util.KnownEndpoints r0 = com.truecaller.common.network.util.KnownEndpoints.ACCOUNT     // Catch: java.io.IOException -> L91
            java.lang.Class<e.a.m.b0> r1 = p193e.p194a.p1052m.AbstractC17858b0.class
            java.lang.Object r0 = p193e.p194a.p372b0.p394b.p395a.C8367d.m28633a(r0, r1)     // Catch: java.io.IOException -> L91
            e.a.m.b0 r0 = (p193e.p194a.p1052m.AbstractC17858b0) r0     // Catch: java.io.IOException -> L91
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f50839e = r1     // Catch: java.io.IOException -> L91
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.m15752a(r1, r2)     // Catch: java.io.IOException -> L91
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L89
            r0 = r10
            return r0
        L89:
            r0 = r6
            x3.a0 r0 = (x3.a0) r0     // Catch: java.io.IOException -> L91
            r6 = r0
            goto L94
        L91:
            r6 = move-exception
            r0 = 0
            r6 = r0
        L94:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1052m.C17862d0.mo15751a(java.lang.String, s1.w.d):java.lang.Object");
    }
}
