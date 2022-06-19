package com.appnext.base.moments.services.p015a;

import android.content.Context;
import com.appnext.base.C0472a;
import com.appnext.base.moments.p011a.p012a.C0485c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.Objects;
import org.json.JSONObject;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1845t.C26780b;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: com.appnext.base.moments.services.a.b */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/services/a/b.class */
public final class C0499b extends AbstractC0498a {

    /* renamed from: aM */
    private Context f1694aM;

    public C0499b(Context context) {
        try {
            this.f1694aM = context.getApplicationContext();
        } catch (Throwable th) {
            C0472a.m42577a("WorkManagerLogic$WorkManagerLogic", th);
        }
    }

    /* renamed from: e */
    private static C26829f m42509e(C0485c c0485c) {
        try {
            JSONObject m42538af = c0485c.m42538af() != null ? c0485c.m42538af() : new JSONObject();
            HashMap hashMap = new HashMap();
            hashMap.put(AnalyticsConstants.KEY, c0485c.m42540ad());
            hashMap.put(AnalyticsConstants.KEY, c0485c.m42540ad());
            hashMap.put("cycle", c0485c.m42542ab());
            hashMap.put("cycle_type", c0485c.m42541ac());
            hashMap.put("sample", c0485c.m42544Z());
            hashMap.put("sample_type", c0485c.m42543aa());
            hashMap.put("service_key", c0485c.m42539ae());
            hashMap.put(UpdateKey.STATUS, c0485c.m42545Y());
            hashMap.put(RemoteMessageConst.DATA, m42538af.toString());
            C26829f c26829f = new C26829f(hashMap);
            C26829f.m1300g(c26829f);
            return c26829f;
        } catch (Throwable th) {
            C0472a.m42577a("WorkManagerLogic$createDataFromConfigDataModel", th);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0070, code lost:
        if (r10 < 900000) goto L12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00ab A[Catch: all -> 0x00d9, TryCatch #0 {all -> 0x00d9, blocks: (B:2:0x0000, B:5:0x0011, B:13:0x0078, B:15:0x00ab, B:17:0x00bf), top: B:22:0x0000 }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r2v0 */
    @Override // com.appnext.base.moments.services.p015a.AbstractC0498a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo42511a(com.appnext.base.moments.p011a.p012a.C0485c r7, long r8, long r10) {
        /*
            r6 = this;
            r0 = r7
            n3.m0.f r0 = m42509e(r0)     // Catch: java.lang.Throwable -> Ld9
            r12 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L58
            n3.m0.r$a r0 = new n3.m0.r$a     // Catch: java.lang.Throwable -> Ld9
            r14 = r0
            r0 = r14
            java.lang.Class<com.appnext.base.moments.services.OperationWorkManager> r1 = com.appnext.base.moments.services.OperationWorkManager.class
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Ld9
            r0 = r14
            r1 = r12
            n3.m0.z$a r0 = r0.m1267g(r1)     // Catch: java.lang.Throwable -> Ld9
            n3.m0.r$a r0 = (p1727n3.p1834m0.C26842r.C26843a) r0     // Catch: java.lang.Throwable -> Ld9
            r1 = r12
            n3.m0.z$a r0 = r0.m1267g(r1)     // Catch: java.lang.Throwable -> Ld9
            n3.m0.r$a r0 = (p1727n3.p1834m0.C26842r.C26843a) r0     // Catch: java.lang.Throwable -> Ld9
            r1 = r7
            java.lang.String r1 = r1.m42540ad()     // Catch: java.lang.Throwable -> Ld9
            n3.m0.z$a r0 = r0.m1273a(r1)     // Catch: java.lang.Throwable -> Ld9
            n3.m0.r$a r0 = (p1727n3.p1834m0.C26842r.C26843a) r0     // Catch: java.lang.Throwable -> Ld9
            n3.m0.z r0 = r0.m1272b()     // Catch: java.lang.Throwable -> Ld9
            n3.m0.r r0 = (p1727n3.p1834m0.C26842r) r0     // Catch: java.lang.Throwable -> Ld9
            r14 = r0
            r0 = r6
            android.content.Context r0 = r0.f1694aM     // Catch: java.lang.Throwable -> Ld9
            n3.m0.c0.l r0 = p1727n3.p1834m0.p1835c0.C26702l.m1431n(r0)     // Catch: java.lang.Throwable -> Ld9
            r1 = r7
            java.lang.String r1 = r1.m42540ad()     // Catch: java.lang.Throwable -> Ld9
            n3.m0.h r2 = p1727n3.p1834m0.EnumC26832h.REPLACE     // Catch: java.lang.Throwable -> Ld9
            r3 = r14
            n3.m0.s r0 = r0.m1279i(r1, r2, r3)     // Catch: java.lang.Throwable -> Ld9
            goto Le0
        L58:
            r0 = r13
            if (r0 < 0) goto L73
            r0 = r10
            r15 = r0
            r0 = r13
            if (r0 <= 0) goto L78
            r0 = r10
            r15 = r0
            r0 = r10
            r1 = 900000(0xdbba0, double:4.44659E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L78
        L73:
            r0 = 900000(0xdbba0, double:4.44659E-318)
            r15 = r0
        L78:
            n3.m0.u$a r0 = new n3.m0.u$a     // Catch: java.lang.Throwable -> Ld9
            r17 = r0
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> Ld9
            r14 = r0
            r0 = r17
            java.lang.Class<com.appnext.base.moments.services.OperationWorkManager> r1 = com.appnext.base.moments.services.OperationWorkManager.class
            r2 = r15
            r3 = r14
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> Ld9
            r0 = r17
            r1 = r12
            n3.m0.z$a r0 = r0.m1267g(r1)     // Catch: java.lang.Throwable -> Ld9
            n3.m0.u$a r0 = (p1727n3.p1834m0.C26851u.C26852a) r0     // Catch: java.lang.Throwable -> Ld9
            r1 = r7
            java.lang.String r1 = r1.m42540ad()     // Catch: java.lang.Throwable -> Ld9
            n3.m0.z$a r0 = r0.m1273a(r1)     // Catch: java.lang.Throwable -> Ld9
            n3.m0.u$a r0 = (p1727n3.p1834m0.C26851u.C26852a) r0     // Catch: java.lang.Throwable -> Ld9
            r12 = r0
            r0 = r8
            long r1 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Ld9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto Lbe
            r0 = r12
            r1 = r8
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Ld9
            long r1 = r1 - r2
            r2 = 60000(0xea60, double:2.9644E-319)
            long r1 = java.lang.Math.max(r1, r2)     // Catch: java.lang.Throwable -> Ld9
            r2 = r14
            n3.m0.z$a r0 = r0.m1268f(r1, r2)     // Catch: java.lang.Throwable -> Ld9
        Lbe:
            r0 = r6
            android.content.Context r0 = r0.f1694aM     // Catch: java.lang.Throwable -> Ld9
            n3.m0.c0.l r0 = p1727n3.p1834m0.p1835c0.C26702l.m1431n(r0)     // Catch: java.lang.Throwable -> Ld9
            r1 = r7
            java.lang.String r1 = r1.m42540ad()     // Catch: java.lang.Throwable -> Ld9
            n3.m0.g r2 = p1727n3.p1834m0.EnumC26831g.REPLACE     // Catch: java.lang.Throwable -> Ld9
            r3 = r12
            n3.m0.z r3 = r3.m1272b()     // Catch: java.lang.Throwable -> Ld9
            n3.m0.u r3 = (p1727n3.p1834m0.C26851u) r3     // Catch: java.lang.Throwable -> Ld9
            n3.m0.s r0 = r0.mo1280h(r1, r2, r3)     // Catch: java.lang.Throwable -> Ld9
            return
        Ld9:
            r7 = move-exception
            java.lang.String r0 = "WorkManagerLogic$scheduleOperation"
            r1 = r7
            com.appnext.base.C0472a.m42577a(r0, r1)
        Le0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.base.moments.services.p015a.C0499b.mo42511a(com.appnext.base.moments.a.a.c, long, long):void");
    }

    @Override // com.appnext.base.moments.services.p015a.AbstractC0498a
    /* renamed from: d */
    public final void mo42510d(C0485c c0485c) {
        try {
            C26702l m1431n = C26702l.m1431n(this.f1694aM);
            String m42539ae = c0485c.m42539ae();
            Objects.requireNonNull(m1431n);
            ((C26822b) m1431n.f74726d).f75051a.execute(new C26780b(m1431n, m42539ae));
        } catch (Throwable th) {
            C0472a.m42577a("WorkManagerLogic$cancelOperationLogic", th);
        }
    }
}
