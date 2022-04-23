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

    /* renamed from: c  reason: collision with root package name */
    private static AttributeSet f15997c;

    /* renamed from: d  reason: collision with root package name */
    private static AttributeSet f15998d;
    private static final HashMap<AdsLimitForNewUsers, Integer> e = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    public static final EnumSet<RequestParameters.NativeAdAsset> f15995a = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.TEXT, RequestParameters.NativeAdAsset.ICON_IMAGE, RequestParameters.NativeAdAsset.STAR_RATING, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT);
    private static final EnumSet<RequestParameters.NativeAdAsset> f = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.ICON_IMAGE, RequestParameters.NativeAdAsset.STAR_RATING, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT);

    /* renamed from: b  reason: collision with root package name */
    public static final EnumSet<RequestParameters.NativeAdAsset> f15996b = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.TEXT, RequestParameters.NativeAdAsset.ICON_IMAGE, RequestParameters.NativeAdAsset.MAIN_IMAGE, RequestParameters.NativeAdAsset.STAR_RATING, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT);
    private static final EnumSet<RequestParameters.NativeAdAsset> g = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.ICON_IMAGE);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ads.AdUtils$7  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdUtils$7.class */
    public static /* synthetic */ class AnonymousClass7 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16011a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f16012b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:8:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f16012b = iArr;
            try {
                iArr[ConsentStatus.PERSONALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16012b[ConsentStatus.NON_PERSONALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f16012b[ConsentStatus.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[MoPubView.MoPubAdSize.values().length];
            f16011a = iArr2;
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
                CallAppAdsAnalyticsManager.b(str, str2, ad_type_and_size);
            }

            @Override // com.mopub.common.MoPub.AnalyticsEventsListener
            public final void onAdLoggingImpression(String str, String str2, double d2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
                CallAppAdsAnalyticsManager.a(str, str2, d2, ad_type_and_size);
            }
        });
    }

    public static double a(Map<String, String> map) {
        double doubleValue;
        String str = map.get(DataKeys.CALLAPP_FLOOR_PRICE_KEY);
        if (StringUtils.b((CharSequence) str)) {
            try {
                doubleValue = Double.valueOf(str).doubleValue();
            } catch (NumberFormatException e2) {
            }
            return doubleValue;
        }
        doubleValue = 0.0d;
        return doubleValue;
    }

    private static AttributeSet a(MoPubView.MoPubAdSize moPubAdSize) {
        XmlResourceParser xml = CallAppApplication.get().getResources().getXml(AnonymousClass7.f16011a[moPubAdSize.ordinal()] != 1 ? 2132082693 : 2132082692);
        try {
            xml.next();
            xml.nextTag();
        } catch (Exception e2) {
            CLog.a(AdUtils.class, e2);
        }
        return Xml.asAttributeSet(xml);
    }

    public static CallAppMoPubRecyclerAdapter a(Activity activity, AdSettings adSettings, BaseCallAppAdapter baseCallAppAdapter) {
        RequestParameters requestParameters;
        ViewBinder.Builder callToActionId = new ViewBinder.Builder(adSettings.getAdLayoutResourceId()).iconImageId(2131363355).titleId(2131363360).privacyInformationIconImageId(2131363357).callToActionId(2131363351);
        if (adSettings.isTitlePrimaryColor()) {
            callToActionId.titleId(2131363362);
        }
        if (adSettings.isIncludeMainImage()) {
            requestParameters = a(f15996b, (Boolean) null, (Double) null);
            callToActionId.mainImageId(2131363356);
            callToActionId.textId(2131363359);
        } else if (adSettings.isIncludeTextDescription()) {
            requestParameters = a(f15995a, (Boolean) null, (Double) null);
            callToActionId.textId(2131363359);
            callToActionId.addExtra(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STAR_RATING, 2131363358);
        } else {
            requestParameters = a(f, (Boolean) null, (Double) null);
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
        if (a() || !StringUtils.b((CharSequence) adSettings.getAdUnitId())) {
            CLog.a(AdUtils.class, "Not showing Ad because premium user");
        } else {
            callAppMoPubRecyclerAdapter.loadAds(adSettings.getAdUnitId(), requestParameters);
        }
        return callAppMoPubRecyclerAdapter;
    }

    public static AdSettings a(String str, String str2, NativeAdLayoutGetter nativeAdLayoutGetter) {
        JSONAdSettings jSONAdSettings;
        String a2 = StringUtils.b((CharSequence) str2) ? CallAppRemoteConfigManager.get().a(str2) : null;
        if (StringUtils.b((CharSequence) a2)) {
            try {
                JSONExperiment jSONExperiment = (JSONExperiment) Parser.a(a2, new TypeReference<JSONExperiment<JSONAdSettings>>() { // from class: com.callapp.contacts.util.ads.AdUtils.5
                });
                if (jSONExperiment != null && CollectionUtils.b(jSONExperiment.getExperiments())) {
                    int groupDimension = AbTestUtils.getGroupDimension();
                    List experiments = jSONExperiment.getExperiments();
                    if (CollectionUtils.b(experiments)) {
                        Iterator it2 = experiments.iterator();
                        do {
                            if (it2.hasNext()) {
                                jSONAdSettings = (JSONAdSettings) it2.next();
                            }
                        } while (jSONAdSettings.getGroup() != groupDimension);
                        AdSettings adSettings = new AdSettings(str, nativeAdLayoutGetter.getAdLayoutResourceId(jSONAdSettings.getLayout()), false, 2, false);
                        adSettings.f15991a = isIconImageCircleByType(jSONAdSettings.getLayout());
                        return adSettings;
                    }
                }
            } catch (Exception e2) {
                CLog.a(AdUtils.class, e2);
            }
        }
        return new AdSettings(str, nativeAdLayoutGetter.getAdLayoutResourceId(-1), false, 2, false);
    }

    public static JSONAdPreferences a(String str) {
        JSONAdPreferences jSONAdPreferences;
        String a2 = StringUtils.b((CharSequence) str) ? CallAppRemoteConfigManager.get().a(str) : null;
        if (!StringUtils.b((CharSequence) a2)) {
            return null;
        }
        try {
            JSONExperiment jSONExperiment = (JSONExperiment) Parser.a(a2, new TypeReference<JSONExperiment<JSONAdPreferences>>() { // from class: com.callapp.contacts.util.ads.AdUtils.6
            });
            if (jSONExperiment == null || !CollectionUtils.b(jSONExperiment.getExperiments())) {
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
        } catch (Exception e2) {
            CLog.a(AdUtils.class, e2);
            return null;
        }
    }

    public static MoPubView a(Context context, MoPubView.MoPubAdSize moPubAdSize) {
        AttributeSet attributeSet;
        Context dummyActivity = context instanceof Activity ? (Activity) context : new DummyActivity(context);
        if (AnonymousClass7.f16011a[moPubAdSize.ordinal()] != 1) {
            if (f15997c == null) {
                f15997c = a(moPubAdSize);
            }
            attributeSet = f15997c;
        } else {
            if (f15998d == null) {
                f15998d = a(moPubAdSize);
            }
            attributeSet = f15998d;
        }
        return new MoPubView(dummyActivity, attributeSet);
    }

    public static MoPubNative a(AdSettings adSettings, ViewBinder viewBinder, EnumSet<RequestParameters.NativeAdAsset> enumSet, final AdEvents adEvents, boolean z, Map<String, Object> map, Double d2, final boolean z2) {
        MoPubNative moPubNative = new MoPubNative(CallAppApplication.get(), adSettings.getAdUnitId(), new MoPubNative.MoPubNativeNetworkListener() { // from class: com.callapp.contacts.util.ads.AdUtils.4
            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public final void onNativeFail(NativeErrorCode nativeErrorCode) {
                AdEvents.this.onNativeAdFailed(nativeErrorCode);
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public final void onNativeLoad(NativeAd nativeAd) {
                AdEvents.this.onNativeAdLoaded(nativeAd, z2);
            }
        });
        if (CollectionUtils.b(map)) {
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
        moPubNative.makeRequest(a(enumSet, Boolean.valueOf(z), d2));
        return moPubNative;
    }

    public static MoPubNative a(AdSettings adSettings, ViewBinder viewBinder, EnumSet<RequestParameters.NativeAdAsset> enumSet, AdEvents adEvents, boolean z, Map<String, Object> map, boolean z2) {
        return a(adSettings, viewBinder, enumSet, adEvents, z, map, null, z2);
    }

    private static RequestParameters a(EnumSet<RequestParameters.NativeAdAsset> enumSet, Boolean bool, Double d2) {
        return new RequestParameters.Builder().location(null).keywords(b(bool, d2)).desiredAssets(enumSet).build();
    }

    public static String a(Double d2) {
        return new DecimalFormat("0.00", new DecimalFormatSymbols(Locale.US)).format(d2);
    }

    public static String a(String str, String str2) {
        return str + "_" + str2;
    }

    public static String a(Map<String, String> map, String str) {
        String str2 = map != null ? map.get("analytics_tag") : null;
        return StringUtils.b((CharSequence) str2) ? str2 : str;
    }

    public static EnumSet<RequestParameters.NativeAdAsset> a(AdSettings adSettings) {
        int adLayoutResourceId = adSettings.getAdLayoutResourceId();
        return (adLayoutResourceId == 2131558532 || adLayoutResourceId == 2131558533 || adLayoutResourceId == 2131558534) ? f15996b : adLayoutResourceId == 2131558535 ? f15995a : f15996b;
    }

    public static void a(Activity activity, String str, AdEvents adEvents, boolean z) {
        a(activity, str, adEvents, z, null);
    }

    public static void a(final Activity activity, final String str, final AdEvents adEvents, final boolean z, final Double d2) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.AdUtils.2
            @Override // java.lang.Runnable
            public final void run() {
                MoPubInterstitial moPubInterstitial = new MoPubInterstitial(activity, str);
                moPubInterstitial.setKeywords(AdUtils.b(Boolean.valueOf(z), d2));
                moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.AdUtils.2.1
                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialClicked(MoPubInterstitial moPubInterstitial2) {
                        adEvents.onAdClick();
                        CallAppAdsAnalyticsManager.b("general", str, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL);
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
                        CallAppAdsAnalyticsManager.a("general", str, MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL);
                    }
                });
                moPubInterstitial.load();
            }
        });
    }

    public static void a(Context context, String str, MoPubView.MoPubAdSize moPubAdSize, AdEvents adEvents, boolean z, Map<String, Object> map) {
        a(context, str, moPubAdSize, adEvents, z, map, (Double) null);
    }

    public static void a(final Context context, final String str, final MoPubView.MoPubAdSize moPubAdSize, final AdEvents adEvents, final boolean z, final Map<String, Object> map, final Double d2) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.AdUtils.3
            @Override // java.lang.Runnable
            public final void run() {
                MoPubView a2 = AdUtils.a(context, moPubAdSize);
                a2.setAdUnitId(str);
                a2.setKeywords(AdUtils.b(Boolean.valueOf(z), d2));
                if (CollectionUtils.b(map)) {
                    a2.setLocalExtras(map);
                }
                a2.setBannerAdListener(new MoPubView.BannerAdListener() { // from class: com.callapp.contacts.util.ads.AdUtils.3.1
                    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
                    public void onBannerClicked(MoPubView moPubView) {
                        adEvents.onAdClick();
                        CallAppAdsAnalyticsManager.b("general", str, CallAppAdsAnalyticsManager.a(moPubAdSize));
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
                a2.loadAd();
            }
        });
    }

    public static void a(ConsentStatus consentStatus) {
        d();
        CLog.a(AdUtils.class, "Setting consent statue: ".concat(String.valueOf(consentStatus)));
        int i = AnonymousClass7.f16012b[consentStatus.ordinal()];
        if (i == 1) {
            MoPub.getPersonalInformationManager().grantConsent();
            Prefs.bc.set(consentStatus);
        } else if (i == 2) {
            MoPub.getPersonalInformationManager().revokeConsent();
            Prefs.bc.set(consentStatus);
        }
    }

    public static boolean a() {
        return Prefs.cJ.get().booleanValue() || DateUtils.a(new Date(), Prefs.cN.get(), TimeUnit.DAYS) >= 0;
    }

    public static boolean a(AdsLimitForNewUsers adsLimitForNewUsers) {
        String str = adsLimitForNewUsers.equals(AdsLimitForNewUsers.CALL_LOG) ? "daysNotToShowAdsInCallLogForNewUsers" : adsLimitForNewUsers.equals(AdsLimitForNewUsers.CONTACT_LIST) ? "daysNotToShowAdsInContactListForNewUsers" : adsLimitForNewUsers.equals(AdsLimitForNewUsers.SMS) ? "daysNotToShowAdsInSMSForNewUsers" : adsLimitForNewUsers.equals(AdsLimitForNewUsers.ANALYTICS_CARD) ? "daysNotToShowAdsInAnalyticssmallCDForNewUsers" : null;
        long b2 = StringUtils.b((CharSequence) str) ? CallAppRemoteConfigManager.get().b(str) : 0L;
        return !Prefs.n.get().booleanValue() && b2 > 0 && Prefs.ah.isNotNull() && CallAppApplication.get().getDaysSinceInstall() < b2;
    }

    public static Pair<String, Boolean> b(String str, String str2) {
        boolean z;
        if (StringUtils.a((CharSequence) str) && StringUtils.a((CharSequence) str2)) {
            return null;
        }
        String a2 = CallAppRemoteConfigManager.get().a(str);
        if (StringUtils.b((CharSequence) a2)) {
            z = true;
        } else {
            a2 = CallAppRemoteConfigManager.get().a(str2);
            z = false;
        }
        return Pair.create(a2, Boolean.valueOf(z));
    }

    public static ViewBinder b(AdSettings adSettings) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Boolean bool, Double d2) {
        String str = "AB_Group:" + AbTestUtils.getGroupDimension();
        String str2 = str;
        if (bool != null) {
            str2 = str;
            if (bool.booleanValue()) {
                str2 = str + ",is_refresh:1";
            }
        }
        String str3 = str2;
        if (d2 != null) {
            str3 = str2 + ",bid_price:" + a(d2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append(",billing_available:");
        sb.append(BillingManager.isBillingAvailable() ? "1" : "0");
        return sb.toString();
    }

    public static boolean b() {
        if (!BillingManager.isBillingAvailable() || a() || Prefs.dc.get().booleanValue()) {
            return false;
        }
        return Prefs.dd.get().intValue() == 0 && Prefs.by.get().intValue() >= 120;
    }

    public static void c() {
        Prefs.by.set(0);
        Prefs.dd.set(0);
        Prefs.dc.set(Boolean.FALSE);
    }

    public static void d() {
        if (!MoPub.isSdkInitialized()) {
            MoPub.initializeSdk(CallAppApplication.get(), new SdkConfiguration.Builder(StringUtils.b((CharSequence) null) ? null : CallAppRemoteConfigManager.get().a(CallAppRemoteConfigManager.f14815b)).withAdditionalNetwork(AmazonAdapterConfiguration.class.getName()).withAdditionalNetwork(CriteoAdapterConfiguration.class.getName()).withAdditionalNetwork(VerizonAdapterConfiguration.class.getName()).withAdditionalNetwork(PubNativeAdapterConfiguration.class.getName()).withAdditionalNetwork(BidMachineAdapterConfiguration.class.getName()).withAdditionalNetwork(PangleAdapterConfiguration.class.getName()).withLegitimateInterestAllowed(true).build(), null);
        }
    }

    public static int getSmallCardAdLayoutResourceId(int i) {
        if (i == 13) {
            return 2131558535;
        }
        if (i != 15) {
            return i != 19 ? 2131558533 : 2131558534;
        }
        return 2131558532;
    }

    public static boolean isIconImageCircleByType(int i) {
        return i == 13;
    }
}
