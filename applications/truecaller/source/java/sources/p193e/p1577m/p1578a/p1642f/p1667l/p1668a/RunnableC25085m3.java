package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
/* renamed from: e.m.a.f.l.a.m3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/m3.class */
public final class RunnableC25085m3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ c4 f70211a;

    /* renamed from: b */
    public final /* synthetic */ AppMeasurementDynamiteService f70212b;

    public RunnableC25085m3(AppMeasurementDynamiteService appMeasurementDynamiteService, c4 c4Var) {
        this.f70212b = appMeasurementDynamiteService;
        this.f70211a = c4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70212b.a.r().t(this.f70211a);
    }
}
