package p193e.p194a.p1052m;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import s1.z.c.l;
/* renamed from: e.a.m.p */
/* loaded from: classes7-dex2jar.jar:e/a/m/p.class */
public final class C17876p implements AbstractC17870j {

    /* renamed from: a */
    public final Context f50850a;

    /* renamed from: b */
    public final AbstractC8426f f50851b;

    /* renamed from: c */
    public final a<AbstractC8438a> f50852c;

    @Inject
    public C17876p(Context context, AbstractC8426f abstractC8426f, a<AbstractC8438a> aVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8426f, "regionUtils");
        l.e(aVar, "accountSettings");
        this.f50850a = context;
        this.f50851b = abstractC8426f;
        this.f50852c = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005d, code lost:
        if (((p193e.p194a.p372b0.p406e.p409r.AbstractC8438a) r5.f50852c.get()).getBoolean("region_br_policy_accepted") == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b3, code lost:
        if (((p193e.p194a.p372b0.p406e.p409r.AbstractC8438a) r5.f50852c.get()).getBoolean("region_za_policy_accepted") == false) goto L27;
     */
    @Override // p193e.p194a.p1052m.AbstractC17870j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo15742a() {
        /*
            r5 = this;
            r0 = r5
            e.a.b0.e.f r0 = r0.f50851b
            com.truecaller.common.account.Region r0 = r0.mo28592f()
            int r0 = r0.ordinal()
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L75
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L21
            goto Lb9
        L21:
            r0 = r5
            android.content.Context r0 = r0.f50850a
            android.content.Context r0 = r0.getApplicationContext()
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
            if (r0 != 0) goto L33
            goto L36
        L33:
            r0 = r8
            r9 = r0
        L36:
            r0 = r9
            e.a.b0.g.a r0 = (p193e.p194a.p372b0.p411g.AbstractApplicationC8442a) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L63
            r0 = r9
            boolean r0 = r0.mo28540W()
            if (r0 == 0) goto Lb9
            r0 = r5
            o3.a<e.a.b0.e.r.a> r0 = r0.f50852c
            java.lang.Object r0 = r0.get()
            e.a.b0.e.r.a r0 = (p193e.p194a.p372b0.p406e.p409r.AbstractC8438a) r0
            java.lang.String r1 = "region_br_policy_accepted"
            boolean r0 = r0.getBoolean(r1)
            if (r0 != 0) goto Lb9
            goto Lbb
        L63:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.Class<e.a.b0.g.a> r2 = p193e.p194a.p372b0.p411g.AbstractApplicationC8442a.class
            java.lang.String r3 = "Application class does not implement "
            java.lang.StringBuilder r3 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r3)
            java.lang.String r2 = p193e.p1432d.p1439c.p1440a.C22128a.m8643a2(r2, r3)
            r1.<init>(r2)
            throw r0
        L75:
            r0 = r5
            android.content.Context r0 = r0.f50850a
            android.content.Context r0 = r0.getApplicationContext()
            r9 = r0
            r0 = r9
            boolean r0 = r0 instanceof p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
            if (r0 != 0) goto L8c
            r0 = r8
            r9 = r0
            goto L8c
        L8c:
            r0 = r9
            e.a.b0.g.a r0 = (p193e.p194a.p372b0.p411g.AbstractApplicationC8442a) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto Lbd
            r0 = r9
            boolean r0 = r0.mo28540W()
            if (r0 == 0) goto Lb9
            r0 = r5
            o3.a<e.a.b0.e.r.a> r0 = r0.f50852c
            java.lang.Object r0 = r0.get()
            e.a.b0.e.r.a r0 = (p193e.p194a.p372b0.p406e.p409r.AbstractC8438a) r0
            java.lang.String r1 = "region_za_policy_accepted"
            boolean r0 = r0.getBoolean(r1)
            if (r0 != 0) goto Lb9
            goto Lbb
        Lb9:
            r0 = 0
            r7 = r0
        Lbb:
            r0 = r7
            return r0
        Lbd:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.Class<e.a.b0.g.a> r2 = p193e.p194a.p372b0.p411g.AbstractApplicationC8442a.class
            java.lang.String r3 = "Application class does not implement "
            java.lang.StringBuilder r3 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r3)
            java.lang.String r2 = p193e.p1432d.p1439c.p1440a.C22128a.m8643a2(r2, r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1052m.C17876p.mo15742a():boolean");
    }
}
