package com.applovin.mediation;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.applovin.sdk.AppLovinSdk;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import p131c.p135b.p154b.C2441c;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinNativeAdapter.class */
public class AppLovinNativeAdapter implements MediationNativeAdapter {
    public static final String KEY_EXTRA_AD_ID = "ad_id";
    public static final String KEY_EXTRA_CAPTION_TEXT = "caption_text";

    /* renamed from: a */
    public static final String f21799a = "AppLovinNativeAdapter";

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        if (nativeMediationAdRequest.mo16532d() || nativeMediationAdRequest.mo16530f()) {
            AppLovinSdk retrieveSdk = AppLovinUtils.retrieveSdk(bundle, context);
            retrieveSdk.getNativeAdService().loadNativeAds(1, new C2441c(this, mediationNativeListener, retrieveSdk, context, nativeMediationAdRequest));
            return;
        }
        Log.e(f21799a, AppLovinMediationAdapter.createAdapterError(102, "Failed to request native ad. Unified Native Ad or App install Ad should be requested"));
        mediationNativeListener.mo16618a(this, 102);
    }
}
