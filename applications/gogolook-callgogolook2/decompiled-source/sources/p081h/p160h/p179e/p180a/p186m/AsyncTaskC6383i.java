package p081h.p160h.p179e.p180a.p186m;

import android.content.Context;
import android.os.AsyncTask;
import p081h.p160h.p179e.p180a.AbstractC6342c;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.p185l.C6373a;
import p081h.p160h.p179e.p180a.p187n.C6384a;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.m.i */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/m/i.class */
public class AsyncTaskC6383i extends AsyncTask {

    /* renamed from: a */
    public AbstractC6342c f15889a;

    public AsyncTaskC6383i() {
        this.f15889a = null;
    }

    public AsyncTaskC6383i(AbstractC6342c cVar) {
        this.f15889a = null;
        this.f15889a = cVar;
    }

    /* renamed from: a */
    public void m22889a() {
        C6382h hVar;
        int i;
        int i2;
        C6438i.m22579c("prepare handle queue task...");
        Context i3 = C6334a.m23211s().m23221i();
        C6334a.m23211s().m23270a();
        m22887b();
        int h = C6334a.m23211s().m23222h();
        boolean z = h > 0;
        while (h > 0) {
            C6341b[] b = C6334a.m23211s().m23241b();
            if (b == null || b.length == 0) {
                C6438i.m22578d("no avaliable queue task");
            } else {
                int i4 = 0;
                do {
                    if (b[i4].f15771q != 1) {
                        hVar = AsyncTaskC6381g.m22894a(i3, b[i4]);
                        C6334a.m23211s().m23260a(b[i4], hVar.f15879a, hVar.f15880b);
                    } else {
                        C6341b bVar = b[i4];
                        boolean z2 = false;
                        while (true) {
                            int i5 = i4 + 1;
                            if (i5 >= b.length || !bVar.m23204b(b[i5])) {
                                break;
                            }
                            C6334a.m23211s().m23268a(b[i5].f15759e);
                            i4 = i5;
                            z2 = true;
                        }
                        if (z2) {
                            int c = bVar.m23203c();
                            C6334a.m23211s().m23268a(bVar.f15759e);
                            bVar.f15765k = true;
                            bVar.f15759e = 0L;
                            if (c >= 10) {
                                bVar.f15771q = 0;
                            }
                        }
                        C6438i.m22578d("gga batch request object = " + bVar.toString());
                        hVar = AsyncTaskC6381g.m22894a(i3, bVar);
                        C6334a.m23211s().m23260a(bVar, hVar.f15879a, hVar.f15880b);
                    }
                    if (!(hVar == null || hVar.f15879a == 200)) {
                        m22886c();
                        m22888a(hVar.f15879a);
                    }
                    if (hVar == null || (i = hVar.f15879a) < 0 || (i >= 500 && i < 600)) {
                        C6334a.m23211s().m23267a(7200000L, 21600000L);
                        if (hVar != null) {
                            C6438i.m22579c("stop queue task with error : " + hVar.f15879a);
                            return;
                        }
                        return;
                    }
                    i2 = i4 + 1;
                    i4 = i2;
                } while (i2 < b.length);
            }
            int h2 = C6334a.m23211s().m23222h();
            if (h != h2) {
                if (h2 <= 0) {
                    break;
                }
                h = h2;
            } else {
                return;
            }
        }
        C6438i.m22579c("finish handle queue task...");
        if (z) {
            m22885d();
        }
    }

    /* renamed from: a */
    public final void m22888a(int i) {
        C6334a.m23211s().m23236b("pref_gga_job_last_error", i);
    }

    /* renamed from: b */
    public final void m22887b() {
        C6334a.m23211s().m23236b("pref_gga_job_start_count", C6334a.m23211s().m23253a("pref_gga_job_start_count", 0) + 1);
    }

    /* renamed from: c */
    public final void m22886c() {
        C6334a.m23211s().m23236b("pref_gga_job_error_count", C6334a.m23211s().m23253a("pref_gga_job_error_count", 0) + 1);
    }

    /* renamed from: d */
    public final void m22885d() {
        C6334a.m23211s().m23235b("pref_gga_job_last_success_time", System.currentTimeMillis());
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Object[] objArr) {
        m22889a();
        C6384a.m22849f();
        C6373a.m22917b();
        AbstractC6342c cVar = this.f15889a;
        if (cVar == null) {
            return null;
        }
        cVar.mo23197a();
        return null;
    }
}
