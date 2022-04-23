package com.mopub.mraid;

import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.MraidActivity;
import com.mopub.mobileads.ResponseBodyInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidInterstitial.class */
public class MraidInterstitial extends ResponseBodyInterstitial {
    public static final String ADAPTER_NAME = "MraidInterstitial";

    /* renamed from: g */
    public CreativeOrientation f34612g;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo4032a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        MraidActivity.preRenderHtml(this, this.f34198c, customEventInterstitialListener, Long.valueOf(this.f34200e), this.f34199d);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo4049a(Map<String, String> map) {
        map.get(DataKeys.HTML_RESPONSE_BODY_KEY);
        this.f34612g = CreativeOrientation.fromString(map.get(DataKeys.CREATIVE_ORIENTATION_KEY));
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, ADAPTER_NAME);
        MraidActivity.start(this.f34198c, this.f34199d, this.f34200e, this.f34612g);
    }
}
