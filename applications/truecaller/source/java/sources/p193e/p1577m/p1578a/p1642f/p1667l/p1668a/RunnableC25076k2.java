package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.k2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/k2.class */
public final class RunnableC25076k2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70163a;

    /* renamed from: b */
    public final /* synthetic */ zzjk f70164b;

    public RunnableC25076k2(zzjk zzjkVar, zzp zzpVar) {
        this.f70164b = zzjkVar;
        this.f70163a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70164b;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Objects.requireNonNull(this.f70163a, "null reference");
            zzdxVar.m38601m(this.f70163a);
            ((v0) this.f70164b).a.n().j();
            this.f70164b.h(zzdxVar, (AbstractSafeParcelable) null, this.f70163a);
            this.f70164b.o();
        } catch (RemoteException e) {
            ((v0) this.f70164b).a.zzay().f.m38589b("Failed to send app launch to the service", e);
        }
    }
}
