package p154l2;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* renamed from: l2.i */
/* loaded from: classes-dex2jar.jar:l2/i.class */
public final class C3491i extends FullScreenContentCallback {
    @VisibleForTesting

    /* renamed from: a */
    public final AbstractAdViewAdapter f11601a;
    @VisibleForTesting

    /* renamed from: b */
    public final MediationInterstitialListener f11602b;

    public C3491i(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f11601a = abstractAdViewAdapter;
        this.f11602b = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdDismissedFullScreenContent() {
        this.f11602b.onAdClosed(this.f11601a);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void onAdShowedFullScreenContent() {
        this.f11602b.onAdOpened(this.f11601a);
    }
}
