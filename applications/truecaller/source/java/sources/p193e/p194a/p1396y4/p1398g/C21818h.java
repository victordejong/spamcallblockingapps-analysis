package p193e.p194a.p1396y4.p1398g;

import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.service.contact.RefreshContactIndexingService;
import com.truecaller.service.p176t9.RefreshT9MappingWorker;
import java.util.HashMap;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1396y4.p1397f.C21804e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.service.t9.T9SyncHelper$scheduleT9Sync$1", f = "T9SyncHelper.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.y4.g.h */
/* loaded from: classes13-dex2jar.jar:e/a/y4/g/h.class */
public final class C21818h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ TrueApp f60681e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21818h(TrueApp trueApp, d dVar) {
        super(2, dVar);
        this.f60681e = trueApp;
    }

    /* renamed from: i */
    public final d<s> m9033i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21818h(this.f60681e, dVar);
    }

    /* renamed from: k */
    public final Object m9032k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21818h c21818h = new C21818h(this.f60681e, dVar);
        s sVar = s.a;
        c21818h.m9031s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m9031s(Object obj) {
        C25225a.m3932a3(obj);
        this.f60681e.getContentResolver().registerContentObserver(C17891a1.C17904m.m15552a(), true, new C21804e());
        if (this.f60681e.mo28540W()) {
            HashMap hashMap = new HashMap();
            hashMap.put("RefreshT9MappingService.extra.rebuild_all", Boolean.FALSE);
            C26829f c26829f = new C26829f(hashMap);
            C26829f.m1300g(c26829f);
            l.d(c26829f, "Data.Builder()\n         …\n                .build()");
            TrueApp m36032b0 = TrueApp.m36032b0();
            l.d(m36032b0, "TrueApp.getApp()");
            AbstractC26857y mo11659D = m36032b0.mo10154s().mo11659D();
            l.d(mo11659D, "TrueApp.getApp().objectsGraph.workManager()");
            C26842r.C26843a c26843a = new C26842r.C26843a(RefreshT9MappingWorker.class);
            c26843a.f75127c.f74906e = c26829f;
            C26842r m1272b = c26843a.m1272b();
            l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
            mo11659D.m1279i("com.truecaller.service.t9.RefreshT9MappingWorker", EnumC26832h.REPLACE, m1272b);
            TrueApp trueApp = this.f60681e;
            l.e(trueApp, AnalyticsConstants.CONTEXT);
            AbstractServiceC26431i.enqueueWork(trueApp, RefreshContactIndexingService.class, (int) C2752R.C2754id.refresh_contacts_index_service_id, new Intent(trueApp, RefreshContactIndexingService.class).setAction("RefreshContactIndexingService.action.sync"));
        }
        return s.a;
    }
}
