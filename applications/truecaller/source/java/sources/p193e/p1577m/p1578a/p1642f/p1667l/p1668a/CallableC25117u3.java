package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzag;
import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzkp;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.l.a.u3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/u3.class */
public final class CallableC25117u3 implements Callable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70314a;

    /* renamed from: b */
    public final /* synthetic */ zzkp f70315b;

    public CallableC25117u3(zzkp zzkpVar, zzp zzpVar) {
        this.f70315b = zzkpVar;
        this.f70314a = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        String str;
        zzkp zzkpVar = this.f70315b;
        String str2 = this.f70314a.a;
        Objects.requireNonNull(str2, "null reference");
        zzah H = zzkpVar.H(str2);
        zzag zzagVar = zzag.ANALYTICS_STORAGE;
        if (!H.m38622e(zzagVar) || !zzah.m38625b(this.f70314a.v).m38622e(zzagVar)) {
            this.f70315b.zzay().n.m38590a("Analytics storage consent denied. Returning null app instance id");
            str = null;
        } else {
            str = this.f70315b.F(this.f70314a).m4197M();
        }
        return str;
    }
}
