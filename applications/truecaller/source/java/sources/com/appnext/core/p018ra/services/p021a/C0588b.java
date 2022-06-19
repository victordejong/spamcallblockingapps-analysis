package com.appnext.core.p018ra.services.p021a;

import android.content.Context;
import android.os.Bundle;
import com.appnext.base.C0472a;
import com.appnext.core.p018ra.p020b.C0580a;
import com.appnext.core.ra.services.RecentAppsWorkManagerService;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.AbstractC26854w;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1845t.C26793m;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: com.appnext.core.ra.services.a.b */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/services/a/b.class */
public final class C0588b extends AbstractC0587a {
    public C0588b(Context context) {
        super(context);
    }

    /* renamed from: a */
    private static C26829f m42286a(Bundle bundle) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("action", Integer.valueOf(bundle.getInt("action")));
            hashMap.put("more_data", bundle.getString("more_data"));
            C26829f c26829f = new C26829f(hashMap);
            C26829f.m1300g(c26829f);
            return c26829f;
        } catch (Throwable th) {
            C0472a.m42577a("RecentAppsWorkManagerLogic$createDataFromBundle", th);
            return null;
        }
    }

    @Override // com.appnext.core.p018ra.services.p021a.AbstractC0587a
    /* renamed from: F */
    public final boolean mo42288F(String str) {
        C26855x.EnumC26856a enumC26856a;
        try {
            C26702l m1431n = C26702l.m1431n(getContext());
            Objects.requireNonNull(m1431n);
            C26793m c26793m = new C26793m(m1431n, str);
            ((C26822b) m1431n.f74726d).f75051a.execute(c26793m);
            c<T> cVar = c26793m.f74980a;
            if (cVar.get() == null) {
                return false;
            }
            Iterator it = ((List) cVar.get()).iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
                enumC26856a = ((C26855x) it.next()).f75110b;
                if (enumC26856a == C26855x.EnumC26856a.RUNNING) {
                    return true;
                }
            } while (enumC26856a != C26855x.EnumC26856a.ENQUEUED);
            return true;
        } catch (Throwable th) {
            C0472a.m42577a("RecentAppsWorkManagerLogic$isRAServicesScheduled", th);
            return false;
        }
    }

    @Override // com.appnext.core.p018ra.services.p021a.AbstractC0587a
    /* renamed from: G */
    public final void mo42287G(String str) {
        C26702l.m1431n(getContext()).mo1283e(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x007b, code lost:
        if (r7.m42305aU() < 900000) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00dd A[Catch: all -> 0x0105, TryCatch #0 {all -> 0x0105, blocks: (B:2:0x0000, B:4:0x0019, B:5:0x0053, B:9:0x0066, B:13:0x0073, B:17:0x0083, B:19:0x00dd, B:21:0x00ef), top: B:26:0x0000 }] */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r2v0 */
    @Override // com.appnext.core.p018ra.services.p021a.AbstractC0587a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo42285a(com.appnext.core.p018ra.p020b.C0580a r7) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.core.p018ra.services.p021a.C0588b.mo42285a(com.appnext.core.ra.b.a):void");
    }

    @Override // com.appnext.core.p018ra.services.p021a.AbstractC0587a
    /* renamed from: d */
    public final void mo42284d(List<C0580a> list) {
        try {
            int size = list.size();
            AbstractC26854w abstractC26854w = null;
            int i = 0;
            while (i < size) {
                C0580a c0580a = list.get(i);
                C26829f m42286a = m42286a(c0580a.m42307aP());
                C26842r m1272b = new C26842r.C26843a(RecentAppsWorkManagerService.class).m1267g(m42286a).m1267g(m42286a).m1273a(c0580a.m42306aT().name()).m1272b();
                abstractC26854w = i == 0 ? C26702l.m1431n(getContext()).m1285c(m1272b) : abstractC26854w.m1289b(m1272b);
                i++;
            }
            if (abstractC26854w == null) {
                return;
            }
            abstractC26854w.mo1290a();
        } catch (Throwable th) {
            C0472a.m42577a("RecentAppsWorkManagerLogic$scheduleEventsOrdered", th);
        }
    }
}
