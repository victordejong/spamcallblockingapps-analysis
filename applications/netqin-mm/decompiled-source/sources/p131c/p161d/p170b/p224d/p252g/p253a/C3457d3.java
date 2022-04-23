package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.google.android.gms.internal.ads.zzapm;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.d3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d3.class */
public final class C3457d3 implements SignalCallbacks {

    /* renamed from: a */
    public final /* synthetic */ zzapm f12604a;

    public C3457d3(zzapq zzapqVar, zzapm zzapmVar) {
        this.f12604a = zzapmVar;
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    /* renamed from: a */
    public final void mo17917a(String str) {
        try {
            this.f12604a.mo13750a(str);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.SignalCallbacks
    public final void onSuccess(String str) {
        try {
            this.f12604a.mo13748x(str);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
