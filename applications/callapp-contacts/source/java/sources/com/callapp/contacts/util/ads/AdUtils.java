package com.callapp.contacts.util.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Xml;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppAdapter;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.common.SdkConfiguration;
import com.mopub.mobileads.AmazonAdapterConfiguration;
import com.mopub.mobileads.BidMachineAdapterConfiguration;
import com.mopub.mobileads.CriteoAdapterConfiguration;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.mobileads.PubNativeAdapterConfiguration;
import com.mopub.mobileads.VerizonAdapterConfiguration;
import com.mopub.nativeads.CallAppMoPubStaticNativeAdRenderer;
import com.mopub.nativeads.CriteoAdRenderer;
import com.mopub.nativeads.FacebookAdRenderer;
import com.mopub.nativeads.GooglePlayServicesAdRenderer;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.PangleAdRenderer;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils.class */
public class AdUtils {

    /* renamed from: c */
    private static AttributeSet f27905c;

    /* renamed from: d */
    private static AttributeSet f27906d;

    /* renamed from: e */
    private static final HashMap<AdsLimitForNewUsers, Integer> f27907e = new HashMap<>();

    /* renamed from: a */
    public static final EnumSet<RequestParameters.NativeAdAsset> f27903a = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.TEXT, RequestParameters.NativeAdAsset.ICON_IMAGE, RequestParameters.NativeAdAsset.STAR_RATING, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT);

    /* renamed from: f */
    private static final EnumSet<RequestParameters.NativeAdAsset> f27908f = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.ICON_IMAGE, RequestParameters.NativeAdAsset.STAR_RATING, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT);

    /* renamed from: b */
    public static final EnumSet<RequestParameters.NativeAdAsset> f27904b = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.TEXT, RequestParameters.NativeAdAsset.ICON_IMAGE, RequestParameters.NativeAdAsset.MAIN_IMAGE, RequestParameters.NativeAdAsset.STAR_RATING, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT);

    /* renamed from: g */
    private static final EnumSet<RequestParameters.NativeAdAsset> f27909g = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.ICON_IMAGE);

    /* renamed from: com.callapp.contacts.util.ads.AdUtils$7 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils$7.class */
    public static /* synthetic */ class C78577 {

        /* renamed from: a */
        static final /* synthetic */ int[] f27926a;

        /* renamed from: b */
        static final /* synthetic */ int[] f27927b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:8:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f27927b = iArr;
            try {
                iArr[ConsentStatus.PERSONALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f27927b[ConsentStatus.NON_PERSONALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f27927b[ConsentStatus.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[MoPubView.MoPubAdSize.values().length];
            f27926a = iArr2;
            try {
                iArr2[MoPubView.MoPubAdSize.HEIGHT_250.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils$AdEvents.class */
    public interface AdEvents {

        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils$AdEvents$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$onAdClick(AdEvents adEvents) {
            }

            public static void $default$onBannerAdFailed(AdEvents adEvents, MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            }

            public static void $default$onBannerAdLoaded(AdEvents adEvents, MoPubView moPubView, boolean z) {
            }

            public static void $default$onInterstitialClicked(AdEvents adEvents, MoPubInterstitial moPubInterstitial) {
            }

            public static void $default$onInterstitialDismissed(AdEvents adEvents, MoPubInterstitial moPubInterstitial) {
            }

            public static void $default$onInterstitialFailed(AdEvents adEvents, MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                if (moPubInterstitial != null) {
                    moPubInterstitial.destroy();
                }
            }

            public static void $default$onInterstitialLoaded(AdEvents adEvents, MoPubInterstitial moPubInterstitial) {
            }

            public static void $default$onInterstitialShown(AdEvents adEvents, MoPubInterstitial moPubInterstitial) {
            }

            public static void $default$onNativeAdFailed(AdEvents adEvents, NativeErrorCode nativeErrorCode) {
            }

            public static void $default$onNativeAdLoaded(AdEvents adEvents, NativeAd nativeAd, boolean z) {
            }
        }

        void onAdClick();

        void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode);

        void onBannerAdLoaded(MoPubView moPubView, boolean z);

        void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

        void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

        void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

        void onInterstitialShown(MoPubInterstitial moPubInterstitial);

        void onNativeAdFailed(NativeErrorCode nativeErrorCode);

        void onNativeAdLoaded(NativeAd nativeAd, boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers.class */
    public enum AdsLimitForNewUsers {
        CALL_LOG,
        SMS,
        ANALYTICS_CARD,
        CONTACT_LIST
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils$ConsentStatus.class */
    public enum ConsentStatus {
        UNKNOWN,
        NON_PERSONALIZED,
        PERSONALIZED
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils$DummyActivity.class */
    public static class DummyActivity extends Activity {
        public DummyActivity(Context context) {
            attachBaseContext(context);
        }

        @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
        public void startActivity(Intent intent) {
            getBaseContext().startActivity(intent);
        }

        @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
        public void startActivity(Intent intent, Bundle bundle) {
            getBaseContext().startActivity(intent, bundle);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter.class */
    public interface NativeAdLayoutGetter {
        int getAdLayoutResourceId(int i);
    }

    static {
        MoPub.registerAdAnalyticsListener(new MoPub.AnalyticsEventsListener() { // from class: com.callapp.contacts.util.ads.AdUtils.1
            @Override // com.mopub.common.MoPub.AnalyticsEventsListener
            public final void onAdClicked(String str, String str2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
                CallAppAdsAnalyticsManager.m28738b(str, str2, ad_type_and_size);
            }

            @Override // com.mopub.common.MoPub.AnalyticsEventsListener
            public final void onAdLoggingImpression(String str, String str2, double d, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
                CallAppAdsAnalyticsManager.m28741a(str, str2, d, ad_type_and_size);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    /* renamed from: a */
    public static double m27266a(Map<String, String> map) {
        char doubleValue;
        String str = map.get(DataKeys.CALLAPP_FLOOR_PRICE_KEY);
        if (StringUtils.m26045b((CharSequence) str)) {
            try {
                doubleValue = Double.valueOf(str).doubleValue();
            } catch (NumberFormatException e) {
            }
            return doubleValue;
        }
        doubleValue = 0;
        return doubleValue;
    }

    /* renamed from: a */
    private static AttributeSet m27273a(MoPubView.MoPubAdSize moPubAdSize) {
        XmlResourceParser xml = CallAppApplication.get().getResources().getXml(C78577.f27926a[moPubAdSize.ordinal()] != 1 ? 2132082693 : 2132082692);
        try {
            xml.next();
            xml.nextTag();
        } catch (Exception e) {
            CLog.m27609a(AdUtils.class, e);
        }
        return Xml.asAttributeSet(xml);
    }

    /* renamed from: a */
    public static CallAppMoPubRecyclerAdapter m27284a(Activity activity, AdSettings adSettings, BaseCallAppAdapter baseCallAppAdapter) {
        RequestParameters requestParameters;
        ViewBinder.Builder callToActionId = new ViewBinder.Builder(adSettings.getAdLayoutResourceId()).iconImageId(2131363355).titleId(2131363360).privacyInformationIconImageId(2131363357).callToActionId(2131363351);
        if (adSettings.isTitlePrimaryColor()) {
            callToActionId.titleId(2131363362);
        }
        if (adSettings.isIncludeMainImage()) {
            requestParameters = m27267a(f27904b, (Boolean) null, (Double) null);
            callToActionId.mainImageId(2131363356);
            callToActionId.textId(2131363359);
        } else if (adSettings.isIncludeTextDescription()) {
            requestParameters = m27267a(f27903a, (Boolean) null, (Double) null);
            callToActionId.textId(2131363359);
            callToActionId.addExtra(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STAR_RATING, 2131363358);
        } else {
            requestParameters = m27267a(f27908f, (Boolean) null, (Double) null);
            callToActionId.addExtra(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STAR_RATING, 2131363358);
        }
        ViewBinder build = callToActionId.build();
        CallAppMoPubStaticNativeAdRenderer callAppMoPubStaticNativeAdRenderer = new CallAppMoPubStaticNativeAdRenderer(build, adSettings);
        CallAppMoPubRecyclerAdapter callAppMoPubRecyclerAdapter = new CallAppMoPubRecyclerAdapter(activity, baseCallAppAdapter, MoPubNativeAdPositioning.serverPositioning());
        CriteoAdRenderer criteoAdRenderer = new CriteoAdRenderer(build, adSettings);
        FacebookAdRenderer facebookAdRenderer = new FacebookAdRenderer(build, adSettings);
        GooglePlayServicesAdRenderer googlePlayServicesAdRenderer = new GooglePlayServicesAdRenderer(build, adSettings);
        PangleAdRenderer pangleAdRenderer = new PangleAdRenderer(build, adSettings);
        callAppMoPubRecyclerAdapter.registerAdRenderer(criteoAdRenderer);
        callAppMoPubRecyclerAdapter.registerAdRenderer(facebookAdRenderer);
        callAppMoPubRecyclerAdapter.registerAdRenderer(googlePlayServicesAdRenderer);
        callAppMoPubRecyclerAdapter.registerAdRenderer(callAppMoPubStaticNativeAdRenderer);
        callAppMoPubRecyclerAdapter.registerAdRenderer(pangleAdRenderer);
        if (m27285a() || !StringUtils.m26045b((CharSequence) adSettings.getAdUnitId())) {
            CLog.m27611a(AdUtils.class, "Not showing Ad because premium user");
        } else {
            callAppMoPubRecyclerAdapter.loadAds(adSettings.getAdUnitId(), requestParameters);
        }
        return callAppMoPubRecyclerAdapter;
    }

    /* renamed from: a */
    public static AdSettings m27268a(String str, String str2, NativeAdLayoutGetter nativeAdLayoutGetter) {
        JSONAdSettings jSONAdSettings;
        String m28703a = StringUtils.m26045b((CharSequence) str2) ? CallAppRemoteConfigManager.get().m28703a(str2) : null;
        if (StringUtils.m26045b((CharSequence) m28703a)) {
            try {
                JSONExperiment jSONExperiment = (JSONExperiment) Parser.m26917a(m28703a, new TypeReference<JSONExperiment<JSONAdSettings>>() { // from class: com.callapp.contacts.util.ads.AdUtils.5
                });
                if (jSONExperiment != null && CollectionUtils.m26068b(jSONExperiment.getExperiments())) {
                    int groupDimension = AbTestUtils.getGroupDimension();
                    List experiments = jSONExperiment.getExperiments();
                    if (CollectionUtils.m26068b(experiments)) {
                        Iterator it2 = experiments.iterator();
                        do {
                            if (it2.hasNext()) {
                                jSONAdSettings = (JSONAdSettings) it2.next();
                            }
                        } while (jSONAdSettings.getGroup() != groupDimension);
                        AdSettings adSettings = new AdSettings(str, nativeAdLayoutGetter.getAdLayoutResourceId(jSONAdSettings.getLayout()), false, 2, false);
                        adSettings.f27896a = isIconImageCircleByType(jSONAdSettings.getLayout());
                        return adSettings;
                    }
                }
            } catch (Exception e) {
                CLog.m27609a(AdUtils.class, e);
            }
        }
        return new AdSettings(str, nativeAdLayoutGetter.getAdLayoutResourceId(-1), false, 2, false);
    }

    /* renamed from: a */
    public static JSONAdPreferences m27270a(String str) {
        JSONAdPreferences jSONAdPreferences;
        String m28703a = StringUtils.m26045b((CharSequence) str) ? CallAppRemoteConfigManager.get().m28703a(str) : null;
        if (StringUtils.m26045b((CharSequence) m28703a)) {
            try {
                JSONExperiment jSONExperiment = (JSONExperiment) Parser.m26917a(m28703a, new TypeReference<JSONExperiment<JSONAdPreferences>>() { // from class: com.callapp.contacts.util.ads.AdUtils.6
                });
                if (jSONExperiment == null || !CollectionUtils.m26068b(jSONExperiment.getExperiments())) {
                    return null;
                }
                int groupDimension = AbTestUtils.getGroupDimension();
                Iterator it2 = jSONExperiment.getExperiments().iterator();
                do {
                    if (!it2.hasNext()) {
                        return null;
                    }
                    jSONAdPreferences = (JSONAdPreferences) it2.next();
                } while (groupDimension != jSONAdPreferences.getGroup());
                return jSONAdPreferences;
            } catch (Exception e) {
                CLog.m27609a(AdUtils.class, e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static MoPubView m27281a(Context context, MoPubView.MoPubAdSize moPubAdSize) {
        AttributeSet attributeSet;
        Activity dummyActivity = context instanceof Activity ? (Activity) context : new DummyActivity(context);
        if (C78577.f27926a[moPubAdSize.ordinal()] != 1) {
            if (f27905c == null) {
                f27905c = m27273a(moPubAdSize);
            }
            attributeSet = f27905c;
        } else {
            if (f27906d == null) {
                f27906d = m27273a(moPubAdSize);
            }
            attributeSet = f27906d;
        }
        return new MoPubView(dummyActivity, attributeSet);
    }

    /* renamed from: a */
    public static MoPubNative m27277a(AdSettings adSettings, ViewBinder viewBinder, EnumSet<RequestParameters.NativeAdAsset> enumSet, final AdEvents adEvents, boolean z, Map<String, Object> map, Double d, final boolean z2) {
        MoPubNative moPubNative = new MoPubNative(CallAppApplication.get(), adSettings.getAdUnitId(), new MoPubNative.MoPubNativeNetworkListener() { // from class: com.callapp.contacts.util.ads.AdUtils.4
            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public final void onNativeFail(NativeErrorCode nativeErrorCode) {
                adEvents.onNativeAdFailed(nativeErrorCode);
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public final void onNativeLoad(NativeAd nativeAd) {
                adEvents.onNativeAdLoaded(nativeAd, z2);
            }
        });
        if (CollectionUtils.m26067b(map)) {
            moPubNative.setLocalExtras(map);
        }
        CallAppMoPubStaticNativeAdRenderer callAppMoPubStaticNativeAdRenderer = new CallAppMoPubStaticNativeAdRenderer(viewBinder, adSettings);
        CriteoAdRenderer criteoAdRenderer = new CriteoAdRenderer(viewBinder, adSettings);
        FacebookAdRenderer facebookAdRenderer = new FacebookAdRenderer(viewBinder, adSettings);
        GooglePlayServicesAdRenderer googlePlayServicesAdRenderer = new GooglePlayServicesAdRenderer(viewBinder, adSettings);
        PangleAdRenderer pangleAdRenderer = new PangleAdRenderer(viewBinder, adSettings);
        moPubNative.registerAdRenderer(criteoAdRenderer);
        moPubNative.registerAdRenderer(facebookAdRenderer);
        moPubNative.registerAdRenderer(googlePlayServicesAdRenderer);
        moPubNative.registerAdRenderer(callAppMoPubStaticNativeAdRenderer);
        moPubNative.registerAdRenderer(pangleAdRenderer);
        moPubNative.makeRequest(m27267a(enumSet, Boolean.valueOf(z), d));
        return moPubNative;
    }

    /* renamed from: a */
    public static MoPubNative m27276a(AdSettings adSettings, ViewBinder viewBinder, EnumSet<RequestParameters.NativeAdAsset> enumSet, AdEvents adEvents, boolean z, Map<String, Object> map, boolean z2) {
        return m27277a(adSettings, viewBinder, enumSet, adEvents, z, map, null, z2);
    }

    /* renamed from: a */
    private static RequestParameters m27267a(EnumSet<RequestParameters.NativeAdAsset> enumSet, Boolean bool, Double d) {
        return new RequestParameters.Builder().location(null).keywords(m27262b(bool, d)).desiredAssets(enumSet).build();
    }

    /* renamed from: a */
    public static String m27271a(Double d) {
        return new DecimalFormat("0.00", new DecimalFormatSymbols(Locale.US)).format(d);
    }

    /* renamed from: a */
    public static String m27269a(String str, String str2) {
        return str + "_" + str2;
    }

    /* renamed from: a */
    public static String m27265a(Map<String, String> map, String str) {
        String str2 = map != null ? map.get("analytics_tag") : null;
        return StringUtils.m26045b((CharSequence) str2) ? str2 : str;
    }

    /* renamed from: a */
    public static EnumSet<RequestParameters.NativeAdAsset> m27278a(AdSettings adSettings) {
        int adLayoutResourceId = adSettings.getAdLayoutResourceId();
        return (adLayoutResourceId == 2131558532 || adLayoutResourceId == 2131558533 || adLayoutResourceId == 2131558534) ? f27904b : adLayoutResourceId == 2131558535 ? f27903a : f27904b;
    }

    /* renamed from: a */
    public static void m27283a(Activity activity, String str, AdEvents adEvents, boolean z) {
        m27282a(activity, str, adEvents, z, null);
    }

    /* renamed from: a */
    public static void m27282a(final Activity activity, final String str, final AdEvents adEvents, final boolean z, final Double d) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.AdUtils.2
            @Override // java.lang.Runnable
            public final void run() {
                MoPubInterstitial moPubInterstitial = new MoPubInterstitial(activity, str);
                moPubInterstitial.setKeywords(AdUtils.m27262b(Boolean.valueOf(z), d));
                moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.AdUtils.2.1
                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialClicked(MoPubInterstitial moPubInterstitial2) {
                        adEvents.onAdClick();
                        CallAppAdsAnalyticsManager.m28738b("general", str, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial2) {
                        adEvents.onInterstitialDismissed(moPubInterstitial2);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialFailed(MoPubInterstitial moPubInterstitial2, MoPubErrorCode moPubErrorCode) {
                        adEvents.onInterstitialFailed(moPubInterstitial2, moPubErrorCode);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial2) {
                        adEvents.onInterstitialLoaded(moPubInterstitial2);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialShown(MoPubInterstitial moPubInterstitial2) {
                        adEvents.onInterstitialShown(moPubInterstitial2);
                        CallAppAdsAnalyticsManager.m28739a("general", str, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL);
                    }
                });
                moPubInterstitial.load();
            }
        });
    }

    /* renamed from: a */
    public static void m27280a(Context context, String str, MoPubView.MoPubAdSize moPubAdSize, AdEvents adEvents, boolean z, Map<String, Object> map) {
        m27279a(context, str, moPubAdSize, adEvents, z, map, (Double) null);
    }

    /* renamed from: a */
    public static void m27279a(final Context context, final String str, final MoPubView.MoPubAdSize moPubAdSize, final AdEvents adEvents, final boolean z, final Map<String, Object> map, final Double d) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.AdUtils.3
            @Override // java.lang.Runnable
            public final void run() {
                MoPubView m27281a = AdUtils.m27281a(context, moPubAdSize);
                m27281a.setAdUnitId(str);
                m27281a.setKeywords(AdUtils.m27262b(Boolean.valueOf(z), d));
                if (CollectionUtils.m26067b(map)) {
                    m27281a.setLocalExtras(map);
                }
                m27281a.setBannerAdListener(new MoPubView.BannerAdListener() { // from class: com.callapp.contacts.util.ads.AdUtils.3.1
                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerClicked(MoPubView moPubView) {
                        adEvents.onAdClick();
                        CallAppAdsAnalyticsManager.m28738b("general", str, CallAppAdsAnalyticsManager.m28742a(moPubAdSize));
                    }

                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerCollapsed(MoPubView moPubView) {
                    }

                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerExpanded(MoPubView moPubView) {
                    }

                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                        adEvents.onBannerAdFailed(moPubView, moPubErrorCode);
                    }

                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerLoaded(MoPubView moPubView) {
                        adEvents.onBannerAdLoaded(moPubView, false);
                    }
                });
                m27281a.loadAd();
            }
        });
    }

    /* renamed from: a */
    public static void m27274a(ConsentStatus consentStatus) {
        m27259d();
        CLog.m27611a(AdUtils.class, "Setting consent statue: ".concat(String.valueOf(consentStatus)));
        int i = C78577.f27927b[consentStatus.ordinal()];
        if (i == 1) {
            MoPub.getPersonalInformationManager().grantConsent();
            Prefs.f26305bc.set(consentStatus);
        } else if (i != 2) {
        } else {
            MoPub.getPersonalInformationManager().revokeConsent();
            Prefs.f26305bc.set(consentStatus);
        }
    }

    /* renamed from: a */
    public static boolean m27285a() {
        return Prefs.f26339cJ.get().booleanValue() || DateUtils.m27124a(new Date(), Prefs.f26343cN.get(), TimeUnit.DAYS) >= 0;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: a */
    public static boolean m27275a(AdsLimitForNewUsers adsLimitForNewUsers) {
        String str = adsLimitForNewUsers.equals(AdsLimitForNewUsers.CALL_LOG) ? "daysNotToShowAdsInCallLogForNewUsers" : adsLimitForNewUsers.equals(AdsLimitForNewUsers.CONTACT_LIST) ? "daysNotToShowAdsInContactListForNewUsers" : adsLimitForNewUsers.equals(AdsLimitForNewUsers.SMS) ? "daysNotToShowAdsInSMSForNewUsers" : adsLimitForNewUsers.equals(AdsLimitForNewUsers.ANALYTICS_CARD) ? "daysNotToShowAdsInAnalyticssmallCDForNewUsers" : null;
        char m28699b = StringUtils.m26045b((CharSequence) str) ? CallAppRemoteConfigManager.get().m28699b(str) : (char) 0;
        return !Prefs.f26657n.get().booleanValue() && m28699b > 0 && Prefs.f26257ah.isNotNull() && CallAppApplication.get().getDaysSinceInstall() < m28699b;
    }

    /* renamed from: b */
    public static Pair<String, Boolean> m27261b(String str, String str2) {
        boolean z;
        if (!StringUtils.m26059a((CharSequence) str) || !StringUtils.m26059a((CharSequence) str2)) {
            String m28703a = CallAppRemoteConfigManager.get().m28703a(str);
            if (StringUtils.m26045b((CharSequence) m28703a)) {
                z = true;
            } else {
                m28703a = CallAppRemoteConfigManager.get().m28703a(str2);
                z = false;
            }
            return Pair.create(m28703a, Boolean.valueOf(z));
        }
        return null;
    }

    /* renamed from: b */
    public static ViewBinder m27263b(AdSettings adSettings) {
        ViewBinder.Builder addExtra = new ViewBinder.Builder(adSettings.getAdLayoutResourceId()).iconImageId(2131363355).titleId(2131363360).textId(2131363359).privacyInformationIconImageId(2131363357).callToActionId(2131363351).addExtra(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STAR_RATING, 2131363358);
        int adLayoutResourceId = adSettings.getAdLayoutResourceId();
        if (adLayoutResourceId == 2131558532) {
            addExtra.mainImageId(2131363356);
        } else if (adLayoutResourceId == 2131558533 || adLayoutResourceId == 2131558534) {
            addExtra.mainImageId(2131363356);
            addExtra.titleId(2131363362);
        }
        return addExtra.build();
    }

    /* renamed from: b */
    public static String m27262b(Boolean bool, Double d) {
        String str = "AB_Group:" + AbTestUtils.getGroupDimension();
        String str2 = str;
        if (bool != null) {
            str2 = str;
            if (bool.booleanValue()) {
                str2 = str + ",is_refresh:1";
            }
        }
        String str3 = str2;
        if (d != null) {
            str3 = str2 + ",bid_price:" + m27271a(d);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append(",billing_available:");
        sb.append(BillingManager.isBillingAvailable() ? "1" : "0");
        return sb.toString();
    }

    /* renamed from: b */
    public static boolean m27264b() {
        if (!BillingManager.isBillingAvailable() || m27285a() || Prefs.f26411dc.get().booleanValue()) {
            return false;
        }
        return Prefs.f26412dd.get().intValue() == 0 && Prefs.f26327by.get().intValue() >= 120;
    }

    /* renamed from: c */
    public static void m27260c() {
        Prefs.f26327by.set(0);
        Prefs.f26412dd.set(0);
        Prefs.f26411dc.set(Boolean.FALSE);
    }

    /* renamed from: d */
    public static void m27259d() {
        if (!MoPub.isSdkInitialized()) {
            MoPub.initializeSdk(CallAppApplication.get(), new SdkConfiguration.Builder(StringUtils.m26045b((CharSequence) null) ? null : CallAppRemoteConfigManager.get().m28703a(CallAppRemoteConfigManager.f25614b)).withAdditionalNetwork(AmazonAdapterConfiguration.class.getName()).withAdditionalNetwork(CriteoAdapterConfiguration.class.getName()).withAdditionalNetwork(VerizonAdapterConfiguration.class.getName()).withAdditionalNetwork(PubNativeAdapterConfiguration.class.getName()).withAdditionalNetwork(BidMachineAdapterConfiguration.class.getName()).withAdditionalNetwork(PangleAdapterConfiguration.class.getName()).withLegitimateInterestAllowed(true).build(), null);
        }
    }

    public static int getSmallCardAdLayoutResourceId(int i) {
        if (i != 13) {
            if (i == 15) {
                return 2131558532;
            }
            return i != 19 ? 2131558533 : 2131558534;
        }
        return 2131558535;
    }

    public static boolean isIconImageCircleByType(int i) {
        return i == 13;
    }
}
