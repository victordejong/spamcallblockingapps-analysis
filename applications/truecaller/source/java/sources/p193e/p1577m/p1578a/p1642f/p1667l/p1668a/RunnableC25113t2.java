package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzjk;
/* renamed from: e.m.a.f.l.a.t2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/t2.class */
public final class RunnableC25113t2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzcf f70295a;

    /* renamed from: b */
    public final /* synthetic */ String f70296b;

    /* renamed from: c */
    public final /* synthetic */ String f70297c;

    /* renamed from: d */
    public final /* synthetic */ boolean f70298d;

    /* renamed from: e */
    public final /* synthetic */ AppMeasurementDynamiteService f70299e;

    public RunnableC25113t2(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, String str, String str2, boolean z) {
        this.f70299e = appMeasurementDynamiteService;
        this.f70295a = zzcfVar;
        this.f70296b = str;
        this.f70297c = str2;
        this.f70298d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk u = this.f70299e.a.u();
        zzcf zzcfVar = this.f70295a;
        String str = this.f70296b;
        String str2 = this.f70297c;
        boolean z = this.f70298d;
        u.d();
        u.e();
        u.p(new RunnableC25050f2(u, str, str2, u.m(false), z, zzcfVar));
    }
}
