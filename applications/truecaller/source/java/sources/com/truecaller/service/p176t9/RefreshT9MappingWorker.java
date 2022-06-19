package com.truecaller.service.p176t9;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import java.util.HashMap;
import kotlin.Metadata;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u000b"}, d2 = {"Lcom/truecaller/service/t9/RefreshT9MappingWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.service.t9.RefreshT9MappingWorker */
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/t9/RefreshT9MappingWorker.class */
public final class RefreshT9MappingWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefreshT9MappingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
    }

    /* renamed from: n */
    public static final void m34740n() {
        HashMap hashMap = new HashMap();
        hashMap.put("RefreshT9MappingService.extra.rebuild_all", Boolean.TRUE);
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
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        TrueApp m36032b0;
        try {
            m36032b0 = TrueApp.m36032b0();
            l.d(m36032b0, "TrueApp.getApp()");
        } catch (Throwable th) {
            C10480a.m26061I1(th);
        }
        if (!m36032b0.mo28540W()) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        C26829f inputData = getInputData();
        l.d(inputData, "inputData");
        m36032b0.mo10154s().mo12173v1().m9037b(inputData.m1305b("RefreshT9MappingService.extra.rebuild_all", false));
        ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c2, "Result.success()");
        return c0417c2;
    }
}
