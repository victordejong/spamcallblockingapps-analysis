package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzid;
import com.google.android.gms.measurement.internal.zzjk;
/* renamed from: e.m.a.f.l.a.l2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/l2.class */
public final class RunnableC25080l2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzid f70201a;

    /* renamed from: b */
    public final /* synthetic */ zzjk f70202b;

    public RunnableC25080l2(zzjk zzjkVar, zzid zzidVar) {
        this.f70202b = zzjkVar;
        this.f70201a = zzidVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70202b;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Failed to send current screen to service");
            return;
        }
        try {
            zzid zzidVar = this.f70201a;
            if (zzidVar == null) {
                zzdxVar.m38612A0(0L, null, null, ((v0) zzjkVar).a.a.getPackageName());
            } else {
                zzdxVar.m38612A0(zzidVar.f6441c, zzidVar.f6439a, zzidVar.f6440b, ((v0) zzjkVar).a.a.getPackageName());
            }
            this.f70202b.o();
        } catch (RemoteException e) {
            ((v0) this.f70202b).a.zzay().f.m38589b("Failed to send current screen to the service", e);
        }
    }
}
