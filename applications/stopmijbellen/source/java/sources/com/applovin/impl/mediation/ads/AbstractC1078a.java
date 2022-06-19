package com.applovin.impl.mediation.ads;

import android.app.Activity;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1469j;
import com.applovin.impl.sdk.utils.C1530k;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.sdk.AppLovinSdk;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.mediation.ads.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/a.class */
public abstract class AbstractC1078a {

    /* renamed from: a */
    private static C1408l f3900a;
    public final MaxAdFormat adFormat;
    public final String adUnitId;
    public String customPostbackData;
    public final C1479t logger;
    public final C1408l sdk;
    public final String tag;
    public final Map<String, Object> localExtraParameters = Collections.synchronizedMap(new HashMap());
    public MaxAdListener adListener = null;
    public MaxAdRevenueListener revenueListener = null;
    public final C1469j.C1471a loadRequestBuilder = new C1469j.C1471a();

    /* renamed from: com.applovin.impl.mediation.ads.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/a$a.class */
    public interface AbstractC1079a extends MaxAdListener, MaxAdRevenueListener {
    }

    public AbstractC1078a(String str, MaxAdFormat maxAdFormat, String str2, C1408l c1408l) {
        this.adUnitId = str;
        this.adFormat = maxAdFormat;
        this.sdk = c1408l;
        this.tag = str2;
        this.logger = c1408l.m5542A();
    }

    public static void logApiCall(String str, String str2) {
        C1408l c1408l = f3900a;
        if (c1408l != null) {
            c1408l.m5542A().m5116b(str, str2);
            return;
        }
        for (AppLovinSdk appLovinSdk : AppLovinSdk.m4868a()) {
            C1408l c1408l2 = appLovinSdk.coreSdk;
            if (!c1408l2.m5467e()) {
                c1408l2.m5542A().m5116b(str, str2);
                f3900a = c1408l2;
            }
        }
    }

    /* renamed from: a */
    public void m6544a(AbstractC1044a abstractC1044a) {
        C1530k c1530k = new C1530k();
        c1530k.m4990a().m4984a("MAX Ad").m4987a(abstractC1044a).m4990a();
        C1479t.m5110f(this.tag, c1530k.toString());
    }

    public void destroy() {
        this.localExtraParameters.clear();
        this.adListener = null;
        this.revenueListener = null;
    }

    public String getAdUnitId() {
        return this.adUnitId;
    }

    public void logApiCall(String str) {
        this.logger.m5116b(this.tag, str);
    }

    public void setCustomPostbackData(String str) {
        this.customPostbackData = str;
        this.loadRequestBuilder.m5162a(str);
        if (str == null || str.length() <= 8000) {
            return;
        }
        String str2 = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Provided custom postback data parameter longer than supported (");
        m8752j.append(str.length());
        m8752j.append(" bytes, ");
        m8752j.append(8000);
        m8752j.append(" maximum)");
        C1479t.m5108h(str2, m8752j.toString());
    }

    public void setExtraParameter(String str, String str2) {
        if (str != null) {
            if (this.adFormat.isAdViewAd() && "ad_refresh_seconds".equals(str) && StringUtils.isValidString(str2)) {
                int parseInt = Integer.parseInt(str2);
                if (parseInt > TimeUnit.MINUTES.toSeconds(2L)) {
                    String str3 = this.tag;
                    C1479t.m5107i(str3, "Attempting to set extra parameter \"ad_refresh_seconds\" to over 2 minutes (" + parseInt + "s) - this will be ignored");
                }
            }
            this.loadRequestBuilder.m5161a(str, str2);
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    public void setListener(MaxAdListener maxAdListener) {
        C1479t c1479t = this.logger;
        String str = this.tag;
        c1479t.m5116b(str, "Setting listener: " + maxAdListener);
        this.adListener = maxAdListener;
    }

    public void setLocalExtraParameter(String str, Object obj) {
        if (str != null) {
            if (obj instanceof Activity) {
                this.logger.m5111e(this.tag, "Ignoring setting local extra parameter to Activity instance - please pass a WeakReference of it instead!");
                return;
            }
            if ("amazon_ad_response".equals(str) || "amazon_ad_error".equals(str)) {
                setExtraParameter("is_amazon_integration", Boolean.toString(true));
            }
            this.localExtraParameters.put(str, obj);
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        C1479t c1479t = this.logger;
        String str = this.tag;
        c1479t.m5116b(str, "Setting revenue listener: " + maxAdRevenueListener);
        this.revenueListener = maxAdRevenueListener;
    }
}
