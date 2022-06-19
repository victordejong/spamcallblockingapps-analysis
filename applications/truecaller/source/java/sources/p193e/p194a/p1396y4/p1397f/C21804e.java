package p193e.p194a.p1396y4.p1397f;

import android.content.Context;
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
import p193e.p194a.p372b0.p413i.AbstractC8449b;
import s1.z.c.l;
/* renamed from: e.a.y4.f.e */
/* loaded from: classes13-dex2jar.jar:e/a/y4/f/e.class */
public final class C21804e extends AbstractC8449b {

    /* renamed from: d */
    public final Context f60664d;

    public C21804e() {
        super(null, 2000L);
        TrueApp m36032b0 = TrueApp.m36032b0();
        l.d(m36032b0, "TrueApp.getApp()");
        Context mo12335j = m36032b0.mo10154s().mo12335j();
        l.d(mo12335j, "TrueApp.getApp().objectsGraph.applicationContext()");
        this.f60664d = mo12335j;
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8449b
    /* renamed from: a */
    public void mo9046a() {
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
        Context context = this.f60664d;
        l.e(context, AnalyticsConstants.CONTEXT);
        AbstractServiceC26431i.enqueueWork(context, RefreshContactIndexingService.class, (int) C2752R.C2754id.refresh_contacts_index_service_id, new Intent(context, RefreshContactIndexingService.class).setAction("RefreshContactIndexingService.action.sync"));
    }
}
