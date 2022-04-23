package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.internal.ads.zzais;
import com.google.android.gms.internal.ads.zzanx;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.v2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v2.class */
public final class C4126v2 implements InitializationCompleteCallback {

    /* renamed from: a */
    public final /* synthetic */ zzais f15692a;

    public C4126v2(zzanx zzanxVar, zzais zzaisVar) {
        this.f15692a = zzaisVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    /* renamed from: Q */
    public final void mo17945Q() {
        try {
            this.f15692a.mo16735Q();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    /* renamed from: e */
    public final void mo17944e(String str) {
        try {
            this.f15692a.mo16734e(str);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
