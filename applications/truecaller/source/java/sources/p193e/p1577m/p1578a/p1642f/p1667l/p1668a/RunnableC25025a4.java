package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzjk;
/* renamed from: e.m.a.f.l.a.a4 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/a4.class */
public final class RunnableC25025a4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzcf f70005a;

    /* renamed from: b */
    public final /* synthetic */ String f70006b;

    /* renamed from: c */
    public final /* synthetic */ String f70007c;

    /* renamed from: d */
    public final /* synthetic */ AppMeasurementDynamiteService f70008d;

    public RunnableC25025a4(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, String str, String str2) {
        this.f70008d = appMeasurementDynamiteService;
        this.f70005a = zzcfVar;
        this.f70006b = str;
        this.f70007c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk u = this.f70008d.a.u();
        zzcf zzcfVar = this.f70005a;
        String str = this.f70006b;
        String str2 = this.f70007c;
        u.d();
        u.e();
        u.p(new RunnableC25123w2(u, str, str2, u.m(false), zzcfVar));
    }
}
