package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.r2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/r2.class */
public final class RunnableC25104r2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70268a;

    /* renamed from: b */
    public final /* synthetic */ zzjk f70269b;

    public RunnableC25104r2(zzjk zzjkVar, zzp zzpVar) {
        this.f70269b = zzjkVar;
        this.f70268a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70269b;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Failed to send consent settings to service");
            return;
        }
        try {
            Objects.requireNonNull(this.f70268a, "null reference");
            zzdxVar.m38600n(this.f70268a);
            this.f70269b.o();
        } catch (RemoteException e) {
            ((v0) this.f70269b).a.zzay().f.m38589b("Failed to send consent settings to the service", e);
        }
    }
}
