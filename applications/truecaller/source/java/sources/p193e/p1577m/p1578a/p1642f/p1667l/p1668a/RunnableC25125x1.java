package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzkw;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.x1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/x1.class */
public final class RunnableC25125x1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzcf f70337a;

    /* renamed from: b */
    public final /* synthetic */ zzau f70338b;

    /* renamed from: c */
    public final /* synthetic */ String f70339c;

    /* renamed from: d */
    public final /* synthetic */ AppMeasurementDynamiteService f70340d;

    public RunnableC25125x1(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, zzau zzauVar, String str) {
        this.f70340d = appMeasurementDynamiteService;
        this.f70337a = zzcfVar;
        this.f70338b = zzauVar;
        this.f70339c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk u = this.f70340d.a.u();
        zzcf zzcfVar = this.f70337a;
        zzau zzauVar = this.f70338b;
        String str = this.f70339c;
        u.d();
        u.e();
        zzkw w = ((v0) u).a.w();
        Objects.requireNonNull(w);
        if (GoogleApiAvailabilityLight.f5675b.mo39062e(((v0) w).a.a, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) == 0) {
            u.p(new RunnableC25093o2(u, zzauVar, str, zzcfVar));
            return;
        }
        ((v0) u).a.zzay().i.m38590a("Not bundling data. Service unavailable or out of date");
        ((v0) u).a.w().A(zzcfVar, new byte[0]);
    }
}
