package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.mediation.AbstractC4588c;
import com.google.ads.mediation.AbstractC4594d;
import com.google.ads.mediation.AbstractC4595e;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z80.class */
public final class z80<NETWORK_EXTRAS extends AbstractC4595e, SERVER_PARAMETERS extends MediationServerParameters> implements AbstractC4588c, AbstractC4594d {

    /* renamed from: a */
    private final y70 f32840a;

    public z80(y70 y70Var) {
        this.f32840a = y70Var;
    }

    @Override // com.google.ads.mediation.AbstractC4588c
    /* renamed from: a */
    public final void mo8485a(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest$ErrorCode adRequest$ErrorCode) {
        String valueOf = String.valueOf(adRequest$ErrorCode);
        valueOf.length();
        ei0.m15469a("Adapter called onFailedToReceiveAd with error. ".concat(valueOf));
        C7118wr.m9485a();
        if (!xh0.m9164n()) {
            ei0.m15461i("#008 Must be called on the main UI thread.", null);
            xh0.f32048a.post(new x80(this, adRequest$ErrorCode));
            return;
        }
        try {
            this.f32840a.mo8920Z(a90.m16670a(adRequest$ErrorCode));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.AbstractC4594d
    /* renamed from: b */
    public final void mo8484b(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest$ErrorCode adRequest$ErrorCode) {
        String valueOf = String.valueOf(adRequest$ErrorCode);
        StringBuilder sb = new StringBuilder(valueOf.length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        ei0.m15469a(sb.toString());
        C7118wr.m9485a();
        if (!xh0.m9164n()) {
            ei0.m15461i("#008 Must be called on the main UI thread.", null);
            xh0.f32048a.post(new y80(this, adRequest$ErrorCode));
            return;
        }
        try {
            this.f32840a.mo8920Z(a90.m16670a(adRequest$ErrorCode));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }
}
