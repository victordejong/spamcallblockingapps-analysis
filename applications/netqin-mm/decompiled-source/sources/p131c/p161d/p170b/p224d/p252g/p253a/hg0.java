package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzsw;
import com.google.android.gms.internal.ads.zztb;
/* renamed from: c.d.b.d.g.a.hg0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/hg0.class */
public final class hg0 implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ zzsw f13466a;

    public hg0(zzsw zzswVar) {
        this.f13466a = zzswVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        zztb zztbVar;
        Object obj2;
        obj = this.f13466a.f28963b;
        synchronized (obj) {
            this.f13466a.f28966e = null;
            zztbVar = this.f13466a.f28964c;
            if (zztbVar != null) {
                this.f13466a.f28964c = null;
            }
            obj2 = this.f13466a.f28963b;
            obj2.notifyAll();
        }
    }
}
