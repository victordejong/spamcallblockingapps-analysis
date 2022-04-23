package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.internal.ads.zzanh;
import com.google.android.gms.internal.ads.zzapg;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.c3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/c3.class */
public final class C3420c3 implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {

    /* renamed from: a */
    public final /* synthetic */ zzapg f12519a;

    /* renamed from: b */
    public final /* synthetic */ zzanh f12520b;

    /* renamed from: c */
    public final /* synthetic */ zzapq f12521c;

    public C3420c3(zzapq zzapqVar, zzapg zzapgVar, zzanh zzanhVar) {
        this.f12521c = zzapqVar;
        this.f12519a = zzapgVar;
        this.f12520b = zzanhVar;
    }

    /* renamed from: a */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        if (mediationRewardedAd == null) {
            zzbbq.m15852d("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f12519a.mo16488b("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzbbq.m15855b("", e);
                return null;
            }
        } else {
            try {
                this.f12521c.f24241c = mediationRewardedAd;
                this.f12519a.mo16487r0();
            } catch (RemoteException e2) {
                zzbbq.m15855b("", e2);
            }
            return new C3494e3(this.f12520b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* renamed from: a */
    public final void mo17937a(String str) {
        try {
            this.f12519a.mo16488b(str);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
