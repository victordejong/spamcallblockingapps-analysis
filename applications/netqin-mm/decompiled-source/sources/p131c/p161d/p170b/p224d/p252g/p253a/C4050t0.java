package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzaik;
import com.google.android.gms.internal.ads.zzbcg;
/* renamed from: c.d.b.d.g.a.t0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/t0.class */
public final class C4050t0 implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ zzbcg f15337a;

    public C4050t0(zzaik zzaikVar, zzbcg zzbcgVar) {
        this.f15337a = zzbcgVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f15337a.m15834a((Throwable) new RuntimeException("Connection failed."));
    }
}
