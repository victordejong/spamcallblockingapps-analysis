package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.internal.ads.zzanh;
import com.google.android.gms.internal.ads.zzanx;
import com.google.android.gms.internal.ads.zzavv;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.u2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u2.class */
public final class C4089u2 implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {

    /* renamed from: a */
    public final /* synthetic */ zzanh f15441a;

    /* renamed from: b */
    public final /* synthetic */ zzanx f15442b;

    public C4089u2(zzanx zzanxVar, zzanh zzanhVar) {
        this.f15442b = zzanxVar;
        this.f15441a = zzanhVar;
    }

    /* renamed from: a */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        try {
            this.f15442b.f24209e = mediationRewardedAd;
            this.f15441a.mo13775x();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
        return new zzavv(this.f15441a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* renamed from: a */
    public final void mo17937a(String str) {
        Object obj;
        try {
            obj = this.f15442b.f24205a;
            String canonicalName = obj.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 31 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded mediation ad: ");
            sb.append(str);
            zzbbq.m15858a(sb.toString());
            this.f15441a.mo13791a(0, str);
            this.f15441a.mo13792a(0);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
