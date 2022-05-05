package com.mopub.mraid;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.MraidActivity;
import com.mopub.mobileads.ResponseBodyInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidInterstitial.class */
public class MraidInterstitial extends ResponseBodyInterstitial {
    @Nullable

    /* renamed from: e */
    public String f8947e;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo30254a(@NonNull CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MraidActivity.preRenderHtml(this, this.f8521b, customEventInterstitialListener, this.f8947e, Long.valueOf(this.f8523d));
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo30253a(Map<String, String> map) {
        this.f8947e = map.get("Html-Response-Body");
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MraidActivity.start(this.f8521b, this.f8522c, this.f8947e, this.f8523d);
    }
}
