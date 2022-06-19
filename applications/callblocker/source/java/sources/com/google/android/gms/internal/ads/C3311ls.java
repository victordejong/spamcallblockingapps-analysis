package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.C2213a;
import com.google.ads.mediation.AbstractC2226c;
import com.google.ads.mediation.AbstractC2233d;
import com.google.ads.mediation.AbstractC2234e;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
/* renamed from: com.google.android.gms.internal.ads.ls */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ls.class */
public final class C3311ls<NETWORK_EXTRAS extends AbstractC2234e, SERVER_PARAMETERS extends MediationServerParameters> implements AbstractC2226c, AbstractC2233d {

    /* renamed from: a */
    private final AbstractC3286ku f16938a;

    public C3311ls(AbstractC3286ku abstractC3286ku) {
        this.f16938a = abstractC3286ku;
    }

    @Override // com.google.ads.mediation.AbstractC2226c
    /* renamed from: a */
    public final void mo7537a(MediationBannerAdapter<?, ?> mediationBannerAdapter, C2213a.EnumC2214a enumC2214a) {
        String valueOf = String.valueOf(enumC2214a);
        C3645yb.m6751b(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error. ").append(valueOf).toString());
        dyx.m8162a();
        if (!C3634xr.m6790b()) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", null);
            C3634xr.f17613a.post(new RunnableC3313lu(this, enumC2214a));
            return;
        }
        try {
            this.f16938a.mo7590a(C3316lx.m7497a(enumC2214a));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.AbstractC2233d
    /* renamed from: a */
    public final void mo7536a(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, C2213a.EnumC2214a enumC2214a) {
        String valueOf = String.valueOf(enumC2214a);
        C3645yb.m6751b(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error ").append(valueOf).append(".").toString());
        dyx.m8162a();
        if (!C3634xr.m6790b()) {
            C3645yb.m6744e("#008 Must be called on the main UI thread.", null);
            C3634xr.f17613a.post(new RunnableC3315lw(this, enumC2214a));
            return;
        }
        try {
            this.f16938a.mo7590a(C3316lx.m7497a(enumC2214a));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }
}
