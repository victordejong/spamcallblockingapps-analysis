package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzjk;
/* renamed from: e.m.a.f.l.a.b1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/b1.class */
public final class RunnableC25028b1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzcf f70013a;

    /* renamed from: b */
    public final /* synthetic */ AppMeasurementDynamiteService f70014b;

    public RunnableC25028b1(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar) {
        this.f70014b = appMeasurementDynamiteService;
        this.f70013a = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk u = this.f70014b.a.u();
        zzcf zzcfVar = this.f70013a;
        u.d();
        u.e();
        u.p(new RunnableC25072j2(u, u.m(false), zzcfVar));
    }
}
