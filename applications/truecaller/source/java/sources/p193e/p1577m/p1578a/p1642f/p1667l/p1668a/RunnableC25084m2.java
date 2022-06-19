package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.m2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/m2.class */
public final class RunnableC25084m2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70208a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f70209b;

    /* renamed from: c */
    public final /* synthetic */ zzjk f70210c;

    public RunnableC25084m2(zzjk zzjkVar, zzp zzpVar, Bundle bundle) {
        this.f70210c = zzjkVar;
        this.f70208a = zzpVar;
        this.f70209b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70210c;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Failed to send default event parameters to service");
            return;
        }
        try {
            Objects.requireNonNull(this.f70208a, "null reference");
            zzdxVar.m38610G(this.f70209b, this.f70208a);
        } catch (RemoteException e) {
            ((v0) this.f70210c).a.zzay().f.m38589b("Failed to send default event parameters to service", e);
        }
    }
}
