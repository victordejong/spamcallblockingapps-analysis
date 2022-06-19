package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzhw;
/* renamed from: e.m.a.f.l.a.c1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/c1.class */
public final class RunnableC25034c1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f70024a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70025b;

    public RunnableC25034c1(zzhw zzhwVar, long j) {
        this.f70025b = zzhwVar;
        this.f70024a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((v0) this.f70025b).a.p().k.m38579b(this.f70024a);
        ((v0) this.f70025b).a.zzay().m.m38589b("Session timeout duration set", Long.valueOf(this.f70024a));
    }
}
