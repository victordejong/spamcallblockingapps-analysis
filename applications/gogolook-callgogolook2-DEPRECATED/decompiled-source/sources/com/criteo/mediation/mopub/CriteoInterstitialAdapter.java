package com.criteo.mediation.mopub;

import android.content.Context;
import androidx.annotation.NonNull;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/CriteoInterstitialAdapter.class */
public class CriteoInterstitialAdapter extends CustomEventInterstitial {
    public static final String ADUNIT_ID = "adUnitId";
    public static final String CRITEO_PUBLISHER_ID = "cpId";

    /* renamed from: c */
    public static final String f1962c = "CriteoInterstitialAdapter";

    /* renamed from: a */
    public CriteoInterstitial f1963a;

    /* renamed from: b */
    public final C1892b f1964b;

    public CriteoInterstitialAdapter() {
        this(new C1892b());
    }

    @VisibleForTesting
    public CriteoInterstitialAdapter(@NonNull C1892b bVar) {
        this.f1964b = bVar;
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubErrorCode moPubErrorCode;
        if (map2 == null || map2.isEmpty()) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f1962c, "Server parameters are empty");
        } else {
            String str = map2.get("cpId");
            if (str == null) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f1962c, "CriteoPublisherId cannot be null");
            } else {
                String str2 = map2.get("adUnitId");
                if (str2 == null) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f1962c, "Missing adunit Id");
                    moPubErrorCode = MoPubErrorCode.MISSING_AD_UNIT_ID;
                    customEventInterstitialListener.onInterstitialFailed(moPubErrorCode);
                }
                this.f1964b.m36071b(context, str);
                try {
                    this.f1963a = new CriteoInterstitial(context, new InterstitialAdUnit(str2));
                    C1893c cVar = new C1893c(customEventInterstitialListener);
                    this.f1963a.setCriteoInterstitialAdListener(cVar);
                    this.f1963a.setCriteoInterstitialAdDisplayListener(cVar);
                    this.f1963a.loadAd();
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f1962c, "Criteo Interstitial is loading");
                    return;
                } catch (Exception e) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f1962c, "Initialization failed");
                    customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
                    return;
                }
            }
        }
        moPubErrorCode = MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR;
        customEventInterstitialListener.onInterstitialFailed(moPubErrorCode);
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        CriteoInterstitial criteoInterstitial = this.f1963a;
        if (criteoInterstitial != null) {
            criteoInterstitial.show();
        }
    }
}
