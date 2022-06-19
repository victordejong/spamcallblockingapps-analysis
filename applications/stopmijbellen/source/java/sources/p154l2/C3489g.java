package p154l2;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbes;
@VisibleForTesting
/* renamed from: l2.g */
/* loaded from: classes-dex2jar.jar:l2/g.class */
public final class C3489g extends AdListener implements AppEventListener, zzbes {
    @VisibleForTesting

    /* renamed from: a */
    public final AbstractAdViewAdapter f11597a;
    @VisibleForTesting

    /* renamed from: b */
    public final MediationBannerListener f11598b;

    public C3489g(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
        this.f11597a = abstractAdViewAdapter;
        this.f11598b = mediationBannerListener;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClicked() {
        this.f11598b.onAdClicked(this.f11597a);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
        this.f11598b.onAdClosed(this.f11597a);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f11598b.onAdFailedToLoad(this.f11597a, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.f11598b.onAdLoaded(this.f11597a);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdOpened() {
        this.f11598b.onAdOpened(this.f11597a);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(String str, String str2) {
        this.f11598b.zzd(this.f11597a, str, str2);
    }
}
