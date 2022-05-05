package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ComponentName;
import android.content.Context;
/* renamed from: h.i.a.e.m.b.b3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/b3.class */
public final class RunnableC8952b3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ServiceConnectionC9085x2 f20235a;

    public RunnableC8952b3(ServiceConnectionC9085x2 x2Var) {
        this.f20235a = x2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C9000j2 j2Var = this.f20235a.f20762c;
        Context context = j2Var.getContext();
        this.f20235a.f20762c.mo16187b();
        j2Var.m16537a(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
