package com.criteo.mediation.mopub;

import android.view.View;
import androidx.annotation.NonNull;
import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoErrorCode;
import com.mopub.mobileads.CustomEventBanner;
/* renamed from: com.criteo.mediation.mopub.a */
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/a.class */
public class C1889a implements CriteoBannerAdListener {
    @NonNull

    /* renamed from: a */
    public final CustomEventBanner.CustomEventBannerListener f1967a;

    public C1889a(@NonNull CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
        this.f1967a = customEventBannerListener;
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdClicked() {
        this.f1967a.onBannerClicked();
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdClosed() {
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
        this.f1967a.onBannerFailed(C1894d.m36070a(criteoErrorCode));
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdLeftApplication() {
        this.f1967a.onLeaveApplication();
    }

    @Override // com.criteo.publisher.CriteoAdListener
    public void onAdOpened() {
    }

    @Override // com.criteo.publisher.CriteoBannerAdListener
    public void onAdReceived(View view) {
        this.f1967a.onBannerLoaded(view);
    }
}
