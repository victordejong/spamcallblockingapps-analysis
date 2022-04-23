package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.internal.measurement.zzw;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
/* renamed from: c.d.b.d.i.a.d7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/d7.class */
public final class RunnableC4675d7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzw f17038a;

    /* renamed from: b */
    public final /* synthetic */ String f17039b;

    /* renamed from: c */
    public final /* synthetic */ String f17040c;

    /* renamed from: d */
    public final /* synthetic */ AppMeasurementDynamiteService f17041d;

    public RunnableC4675d7(AppMeasurementDynamiteService appMeasurementDynamiteService, zzw zzwVar, String str, String str2) {
        this.f17041d = appMeasurementDynamiteService;
        this.f17038a = zzwVar;
        this.f17039b = str;
        this.f17040c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17041d.f29779a.m9076D().m8904a(this.f17038a, this.f17039b, this.f17040c);
    }
}
