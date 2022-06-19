package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.q2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/q2.class */
public final class RunnableC25100q2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70251a;

    /* renamed from: b */
    public final /* synthetic */ zzjk f70252b;

    public RunnableC25100q2(zzjk zzjkVar, zzp zzpVar) {
        this.f70252b = zzjkVar;
        this.f70251a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70252b;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            Objects.requireNonNull(this.f70251a, "null reference");
            zzdxVar.m38605Z(this.f70251a);
            this.f70252b.o();
        } catch (RemoteException e) {
            ((v0) this.f70252b).a.zzay().f.m38589b("Failed to send measurementEnabled to the service", e);
        }
    }
}
