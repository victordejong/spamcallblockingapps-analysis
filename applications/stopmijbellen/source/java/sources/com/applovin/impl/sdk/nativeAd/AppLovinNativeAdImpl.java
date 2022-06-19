package com.applovin.impl.sdk.nativeAd;

import android.content.Context;
import android.graphics.PointF;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.view.View;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p052a.C1260e;
import com.applovin.impl.sdk.p056d.C1322a;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.google.android.gms.common.internal.ImagesContract;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl.class */
public class AppLovinNativeAdImpl extends AppLovinAdBase implements AppLovinNativeAd {
    private static final String AD_RESPONSE_TYPE_APPLOVIN = "applovin";
    private static final String AD_RESPONSE_TYPE_ORTB = "ortb";
    private static final String AD_RESPONSE_TYPE_UNDEFINED = "undefined";
    private final C1260e adEventTracker;
    private final String advertiser;
    private final String body;
    private final String callToAction;
    private final Uri clickDestinationBackupUri;
    private final Uri clickDestinationUri;
    private final View$OnClickListenerC1432a clickHandler;
    private final List<String> clickTrackingUrls;
    private AppLovinNativeAdEventListener eventListener;
    private Uri iconUri;
    private final List<String> impressionUrls;
    private Uri mainImageUri;
    private AppLovinMediaView mediaView;
    private AppLovinOptionsView optionsView;
    private final Uri privacyDestinationUri;
    private Uri privacyIconUri;
    private final List<View> registeredViews;
    private final String tag;
    private final String title;
    private final C0875a vastAd;
    private final List<String> viewableMRC100Urls;
    private final List<String> viewableMRC50Urls;
    private final List<String> viewableVideo50Urls;

    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder.class */
    public static class Builder {
        private final JSONObject adObject;
        private String advertiser;
        private String body;
        private String callToAction;
        private Uri clickDestinationBackupUri;
        private Uri clickDestinationUri;
        private List<String> clickTrackingUrls;
        private final JSONObject fullResponse;
        private Uri iconUri;
        private List<String> impressionUrls;
        private Uri mainImageUri;
        private Uri privacyDestinationUri;
        private Uri privacyIconUri;
        private final C1408l sdk;
        private String title;
        private C0875a vastAd;
        private List<String> viewableMRC100Urls;
        private List<String> viewableMRC50Urls;
        private List<String> viewableVideo50Urls;

        public Builder(JSONObject jSONObject, JSONObject jSONObject2, C1408l c1408l) {
            this.adObject = jSONObject;
            this.fullResponse = jSONObject2;
            this.sdk = c1408l;
        }

        public AppLovinNativeAdImpl build() {
            return new AppLovinNativeAdImpl(this);
        }

        public Builder setAdvertiser(String str) {
            this.advertiser = str;
            return this;
        }

        public Builder setBody(String str) {
            this.body = str;
            return this;
        }

        public Builder setCallToAction(String str) {
            this.callToAction = str;
            return this;
        }

        public Builder setClickDestinationBackupUri(Uri uri) {
            this.clickDestinationBackupUri = uri;
            return this;
        }

        public Builder setClickDestinationUri(Uri uri) {
            this.clickDestinationUri = uri;
            return this;
        }

        public Builder setClickTrackingUrls(List<String> list) {
            this.clickTrackingUrls = list;
            return this;
        }

        public Builder setIconUri(Uri uri) {
            this.iconUri = uri;
            return this;
        }

        public Builder setImpressionUrls(List<String> list) {
            this.impressionUrls = list;
            return this;
        }

        public Builder setMainImageUri(Uri uri) {
            this.mainImageUri = uri;
            return this;
        }

        public Builder setPrivacyDestinationUri(Uri uri) {
            this.privacyDestinationUri = uri;
            return this;
        }

        public Builder setPrivacyIconUri(Uri uri) {
            this.privacyIconUri = uri;
            return this;
        }

        public Builder setTitle(String str) {
            this.title = str;
            return this;
        }

        public Builder setVastAd(C0875a c0875a) {
            this.vastAd = c0875a;
            return this;
        }

        public Builder setViewableMRC100Urls(List<String> list) {
            this.viewableMRC100Urls = list;
            return this;
        }

        public Builder setViewableMRC50Urls(List<String> list) {
            this.viewableMRC50Urls = list;
            return this;
        }

        public Builder setViewableVideo50Urls(List<String> list) {
            this.viewableVideo50Urls = list;
            return this;
        }
    }

    /* renamed from: com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a.class */
    public static class View$OnClickListenerC1432a implements View.OnClickListener, AppLovinTouchToClickListener.OnClickListener {

        /* renamed from: a */
        private final AppLovinNativeAdImpl f5384a;

        public View$OnClickListenerC1432a(AppLovinNativeAdImpl appLovinNativeAdImpl) {
            this.f5384a = appLovinNativeAdImpl;
        }

        /* renamed from: a */
        private void m5373a(Context context) {
            this.f5384a.sdk.m5449u().maybeSubmitPersistentPostbacks(this.f5384a.getDirectClickTrackingPostbacks());
            for (String str : this.f5384a.clickTrackingUrls) {
                this.f5384a.sdk.m5520W().dispatchPostbackAsync(str, null);
            }
            if (Utils.openUri(context, this.f5384a.clickDestinationUri, this.f5384a.sdk) || Utils.openUri(context, this.f5384a.clickDestinationBackupUri, this.f5384a.sdk)) {
                C1496j.m5035a(this.f5384a.eventListener, this.f5384a);
            }
        }

        /* renamed from: a */
        public AppLovinNativeAdImpl m5374a() {
            return this.f5384a;
        }

        /* renamed from: a */
        public boolean m5372a(Object obj) {
            return obj instanceof View$OnClickListenerC1432a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof View$OnClickListenerC1432a)) {
                return false;
            }
            View$OnClickListenerC1432a view$OnClickListenerC1432a = (View$OnClickListenerC1432a) obj;
            if (!view$OnClickListenerC1432a.m5372a(this)) {
                return false;
            }
            AppLovinNativeAdImpl m5374a = m5374a();
            AppLovinNativeAdImpl m5374a2 = view$OnClickListenerC1432a.m5374a();
            return m5374a == null ? m5374a2 == null : m5374a.equals(m5374a2);
        }

        public int hashCode() {
            AppLovinNativeAdImpl m5374a = m5374a();
            return 59 + (m5374a == null ? 43 : m5374a.hashCode());
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m5373a(view.getContext());
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, PointF pointF) {
            m5373a(view.getContext());
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("AppLovinNativeAdImpl.ClickHandler(ad=");
            m8752j.append(m5374a());
            m8752j.append(")");
            return m8752j.toString();
        }
    }

    private AppLovinNativeAdImpl(Builder builder) {
        super(builder.adObject, builder.fullResponse, builder.sdk);
        this.registeredViews = new ArrayList();
        this.clickHandler = new View$OnClickListenerC1432a(this);
        this.adEventTracker = new C1260e(this);
        this.title = builder.title;
        this.advertiser = builder.advertiser;
        this.body = builder.body;
        this.callToAction = builder.callToAction;
        this.iconUri = builder.iconUri;
        this.mainImageUri = builder.mainImageUri;
        this.privacyIconUri = builder.privacyIconUri;
        this.vastAd = builder.vastAd;
        this.privacyDestinationUri = builder.privacyDestinationUri;
        this.clickDestinationUri = builder.clickDestinationUri;
        this.clickDestinationBackupUri = builder.clickDestinationBackupUri;
        this.clickTrackingUrls = builder.clickTrackingUrls;
        this.impressionUrls = builder.impressionUrls;
        this.viewableMRC50Urls = builder.viewableMRC50Urls;
        this.viewableMRC100Urls = builder.viewableMRC100Urls;
        this.viewableVideo50Urls = builder.viewableVideo50Urls;
        StringBuilder m8752j = C0082b.m8752j("AppLovinNativeAd:");
        m8752j.append(getAdIdNumber());
        this.tag = m8752j.toString();
    }

    public List<C1322a> getDirectClickTrackingPostbacks() {
        List<C1322a> postbacks;
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("click_tracking_urls", this.adObject, getClCode(), getStringFromAdObject("click_tracking_url", null), this.sdk);
        }
        return postbacks;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public C1260e getAdEventTracker() {
        return this.adEventTracker;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.sdk.AppLovinAd
    public long getAdIdNumber() {
        return getLongFromAdObject("ad_id", -1L);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getAdvertiser() {
        return this.advertiser;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getBody() {
        return this.body;
    }

    public String getCachePrefix() {
        return getStringFromAdObject("cache_prefix", null);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getCallToAction() {
        return this.callToAction;
    }

    public View$OnClickListenerC1432a getClickHandler() {
        return this.clickHandler;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public Uri getIconUri() {
        return this.iconUri;
    }

    public List<String> getImpressionUrls() {
        return this.impressionUrls;
    }

    public Uri getMainImageUri() {
        return this.mainImageUri;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public AppLovinMediaView getMediaView() {
        return this.mediaView;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public String getOpenMeasurementContentUrl() {
        return getStringFromAdObject("omid_content_url", null);
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public String getOpenMeasurementCustomReferenceData() {
        return getStringFromAdObject("omid_custom_ref_data", "");
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public List<VerificationScriptResource> getOpenMeasurementVerificationScriptResources() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.adObjectLock) {
            JSONArray jSONArray = JsonUtils.getJSONArray(this.adObject, "omid_verification_script_resources", null);
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
                    URL url = new URL(JsonUtils.getString(jSONObject, ImagesContract.URL, null));
                    String string = JsonUtils.getString(jSONObject, "vendor_key", null);
                    String string2 = JsonUtils.getString(jSONObject, "parameters", null);
                    arrayList.add((!StringUtils.isValidString(string) || !StringUtils.isValidString(string2)) ? VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url) : VerificationScriptResource.createVerificationScriptResourceWithParameters(string, url, string2));
                }
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public AppLovinOptionsView getOptionsView() {
        return this.optionsView;
    }

    public Uri getPrivacyDestinationUri() {
        return this.privacyDestinationUri;
    }

    public Uri getPrivacyIconUri() {
        return this.privacyIconUri;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return getStringFromAdObject("type", "undefined");
    }

    public C0875a getVastAd() {
        return this.vastAd;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public boolean isOpenMeasurementEnabled() {
        return getBooleanFromAdObject("omsdk_enabled", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public void registerViewsForInteraction(List<View> list) {
        if (this.clickDestinationUri == null && this.clickDestinationBackupUri == null) {
            return;
        }
        for (View view : list) {
            if (view.hasOnClickListeners()) {
                C1479t m5542A = this.sdk.m5542A();
                String str = this.tag;
                m5542A.m5111e(str, "View has an onClickListener already - " + view);
            }
            view.setOnClickListener(this.clickHandler);
            this.registeredViews.add(view);
        }
        C1479t m5542A2 = this.sdk.m5542A();
        String str2 = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Registered views: ");
        m8752j.append(this.registeredViews);
        m5542A2.m5116b(str2, m8752j.toString());
    }

    public void setEventListener(AppLovinNativeAdEventListener appLovinNativeAdEventListener) {
        this.eventListener = appLovinNativeAdEventListener;
    }

    public void setIconUri(Uri uri) {
        this.iconUri = uri;
    }

    public void setMainImageUri(Uri uri) {
        this.mainImageUri = uri;
    }

    public void setPrivacyIconUri(Uri uri) {
        this.privacyIconUri = uri;
    }

    public void setUpNativeAdViewComponents() {
        C1408l c1408l = this.sdk;
        this.mediaView = new AppLovinMediaView(this, c1408l, c1408l.m5532K());
        C1408l c1408l2 = this.sdk;
        this.optionsView = new AppLovinOptionsView(this, c1408l2, c1408l2.m5532K());
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinNativeAd{adIdNumber=");
        m8752j.append(getAdIdNumber());
        m8752j.append(" - ");
        m8752j.append(getTitle());
        m8752j.append("}");
        return m8752j.toString();
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public void unregisterViewsForInteraction() {
        for (View view : this.registeredViews) {
            view.setOnClickListener(null);
        }
        C1479t m5542A = this.sdk.m5542A();
        String str = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Unregistered views: ");
        m8752j.append(this.registeredViews);
        m5542A.m5116b(str, m8752j.toString());
        this.registeredViews.clear();
    }
}
