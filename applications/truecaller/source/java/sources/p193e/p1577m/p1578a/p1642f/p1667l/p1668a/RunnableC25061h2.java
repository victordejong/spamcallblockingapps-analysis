package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.h2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/h2.class */
public final class RunnableC25061h2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70118a;

    /* renamed from: b */
    public final /* synthetic */ zzjk f70119b;

    public RunnableC25061h2(zzjk zzjkVar, zzp zzpVar) {
        this.f70119b = zzjkVar;
        this.f70118a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70119b;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Objects.requireNonNull(this.f70118a, "null reference");
            zzdxVar.m38604g(this.f70118a);
        } catch (RemoteException e) {
            ((v0) this.f70119b).a.zzay().f.m38589b("Failed to reset data on the service: remote exception", e);
        }
        this.f70119b.o();
    }
}
