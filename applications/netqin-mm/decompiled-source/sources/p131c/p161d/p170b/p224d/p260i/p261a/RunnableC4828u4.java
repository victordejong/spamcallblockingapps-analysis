package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzhb;
/* renamed from: c.d.b.d.i.a.u4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/u4.class */
public final class RunnableC4828u4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f17411a;

    /* renamed from: b */
    public final /* synthetic */ zzhb f17412b;

    public RunnableC4828u4(zzhb zzhbVar, long j) {
        this.f17412b = zzhbVar;
        this.f17411a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17412b.m24898g().f17223q.m9130a(this.f17411a);
        this.f17412b.mo8789p().m9145x().m9142a("Session timeout duration set", Long.valueOf(this.f17411a));
    }
}
