package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
/* renamed from: e.m.a.f.l.a.b4 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/b4.class */
public final class RunnableC25031b4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzcf f70017a;

    /* renamed from: b */
    public final /* synthetic */ AppMeasurementDynamiteService f70018b;

    public RunnableC25031b4(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar) {
        this.f70018b = appMeasurementDynamiteService;
        this.f70017a = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70018b.a.w().x(this.f70017a, this.f70018b.a.b());
    }
}
