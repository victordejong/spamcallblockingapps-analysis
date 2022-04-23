package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzahz;
import com.google.android.gms.internal.ads.zzaik;
import com.google.android.gms.internal.ads.zzbcg;
/* renamed from: c.d.b.d.g.a.u0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u0.class */
public final class C4087u0 implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    public final /* synthetic */ zzbcg f15436a;

    /* renamed from: b */
    public final /* synthetic */ zzaik f15437b;

    public C4087u0(zzaik zzaikVar, zzbcg zzbcgVar) {
        this.f15437b = zzaikVar;
        this.f15436a = zzbcgVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzahz zzahzVar;
        try {
            zzbcg zzbcgVar = this.f15436a;
            zzahzVar = this.f15437b.f24135a;
            zzbcgVar.m15835a((zzbcg) zzahzVar.m16744H());
        } catch (DeadObjectException e) {
            this.f15436a.m15834a((Throwable) e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzbcg zzbcgVar = this.f15436a;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i);
        zzbcgVar.m15834a((Throwable) new RuntimeException(sb.toString()));
    }
}
