package com.applovin.impl.sdk.nativeAd;

import android.text.TextUtils;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.C1283c;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/AppLovinNativeAdService.class */
public class AppLovinNativeAdService {
    private static final String TAG = "AppLovinNativeAdService";
    private final C1479t logger;
    private final C1408l sdk;

    public AppLovinNativeAdService(C1408l c1408l) {
        this.sdk = c1408l;
        this.logger = c1408l.m5542A();
    }

    public void loadNextAdForAdToken(String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        StringBuilder sb;
        String str2;
        String trim = str != null ? str.trim() : null;
        if (TextUtils.isEmpty(trim)) {
            C1479t.m5107i(TAG, "Invalid ad token specified");
            C1496j.m5034a(appLovinNativeAdLoadListener, -8);
            return;
        }
        C1283c c1283c = new C1283c(trim, this.sdk);
        if (c1283c.m6012b() == C1283c.EnumC1284a.REGULAR) {
            C1479t c1479t = this.logger;
            c1479t.m5116b(TAG, "Loading next ad for token: " + c1283c);
            this.sdk.m5525R().m5653a(new C1435b(c1283c, appLovinNativeAdLoadListener, this.sdk), C1362o.EnumC1364a.MAIN);
            return;
        }
        if (c1283c.m6012b() == C1283c.EnumC1284a.AD_RESPONSE_JSON) {
            JSONObject m6010d = c1283c.m6010d();
            if (m6010d != null) {
                C1493h.m5048f(m6010d, this.sdk);
                C1493h.m5052d(m6010d, this.sdk);
                C1493h.m5053c(m6010d, this.sdk);
                C1493h.m5050e(m6010d, this.sdk);
                if (JsonUtils.getJSONArray(m6010d, "ads", new JSONArray()).length() > 0) {
                    C1479t c1479t2 = this.logger;
                    c1479t2.m5116b(TAG, "Rendering ad for token: " + c1283c);
                    this.sdk.m5525R().m5653a(new C1437d(m6010d, appLovinNativeAdLoadListener, this.sdk), C1362o.EnumC1364a.MAIN);
                    return;
                }
                C1479t c1479t3 = this.logger;
                c1479t3.m5111e(TAG, "No ad returned from the server for token: " + c1283c);
                C1496j.m5034a(appLovinNativeAdLoadListener, 204);
                return;
            }
            sb = new StringBuilder();
            str2 = "Unable to retrieve ad response JSON from token: ";
        } else {
            sb = new StringBuilder();
            str2 = "Invalid ad token specified: ";
        }
        sb.append(str2);
        sb.append(c1283c);
        C1479t.m5107i(TAG, sb.toString());
        C1496j.m5034a(appLovinNativeAdLoadListener, -8);
    }
}
