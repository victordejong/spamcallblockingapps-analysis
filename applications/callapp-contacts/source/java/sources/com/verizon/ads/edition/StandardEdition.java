package com.verizon.ads.edition;

import android.app.Application;
import android.content.Context;
import com.flurry.android.FlurryAgent;
import com.flurry.android.FlurryConsent;
import com.verizon.ads.BuildConfig;
import com.verizon.ads.Configuration;
import com.verizon.ads.Logger;
import com.verizon.ads.PrivacyDataHelper;
import com.verizon.ads.VASAds;
import com.verizon.ads.inlineplacement.InlinePlacementPlugin;
import com.verizon.ads.inlinewebadapter.InlineWebAdapterPlugin;
import com.verizon.ads.interstitialplacement.InterstitialPlacementPlugin;
import com.verizon.ads.interstitialvastadapter.InterstitialVASTAdapterPlugin;
import com.verizon.ads.interstitialwebadapter.InterstitialWebAdapterPlugin;
import com.verizon.ads.nativeplacement.NativePlacementPlugin;
import com.verizon.ads.nativeverizonnativeadapter.NativeVerizonNativeAdapterPlugin;
import com.verizon.ads.omsdk.OMSDKPlugin;
import com.verizon.ads.support.SupportPlugin;
import com.verizon.ads.uriexperience.UriExperiencePlugin;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.vastcontroller.VASTControllerPlugin;
import com.verizon.ads.verizonnativecontroller.VerizonNativeControllerPlugin;
import com.verizon.ads.videoplayer.VideoPlayerPlugin;
import com.verizon.ads.webcontroller.WebControllerPlugin;
import com.verizon.ads.webview.WebViewPlugin;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/edition/StandardEdition.class */
public class StandardEdition {

    /* renamed from: a */
    private static final Logger f61297a = Logger.getInstance(StandardEdition.class);

    /* renamed from: a */
    private static boolean m5513a() {
        try {
            Class.forName("com.flurry.android.FlurryAgent");
            return true;
        } catch (ClassNotFoundException e) {
            f61297a.m5564e("Flurry Analytics library not found", e);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m5512a(Context context) {
        Map<?, ?> map = null;
        String string = Configuration.getString("com.verizon.ads.standardedition", "flurry.api-key", null);
        String trim = string == null ? null : string.trim();
        if (trim == null) {
            f61297a.m5563i("No Flurry Analytics api-key provided.");
            return true;
        } else if (TextUtils.isEmpty(trim)) {
            f61297a.m5565e("Unable to initialize Flurry Analytics. The flurry.api-key is empty.");
            return false;
        } else if (!m5513a()) {
            f61297a.m5565e("Unable to initialize Flurry Analytics. The flurry.api-key has been set but no Flurry Analytics library can be found.");
            return false;
        } else {
            try {
                if (FlurryAgent.isSessionActive()) {
                    f61297a.m5561v("Flurry Analytics session already initialized.");
                    return true;
                }
                FlurryAgent.Builder builder = new FlurryAgent.Builder();
                if (Logger.isLogLevelEnabled(3)) {
                    int logLevel = Logger.getLogLevel();
                    builder.withLogEnabled(true);
                    builder.withLogLevel(logLevel);
                    Logger logger = f61297a;
                    StringBuilder sb = new StringBuilder("Flurry Analytics logLevel is set to ");
                    sb.append(logLevel != 2 ? logLevel != 3 ? logLevel != 4 ? logLevel != 5 ? logLevel != 6 ? "UNKNOWN" : "ERROR" : "WARN" : "INFO" : "DEBUG" : "VERBOSE");
                    logger.m5567d(sb.toString());
                }
                Object object = Configuration.getObject("com.verizon.ads.standardedition", "flurry.isGdprScope", null);
                Boolean bool = !(object instanceof Boolean) ? null : (Boolean) object;
                if (bool == null) {
                    f61297a.m5565e("Unable to initialize Flurry Analytics. The flurry.isGdprScope key must be set.");
                    return false;
                }
                Map map2 = Configuration.getMap(VASAds.DOMAIN, VASAds.USER_PRIVACY_DATA_KEY, null);
                if (map2 != null) {
                    map = new PrivacyDataHelper(map2).getGDPRConsentMap();
                }
                builder.withConsent(new FlurryConsent(bool.booleanValue(), map));
                boolean z = Configuration.getBoolean("com.verizon.ads.standardedition", "flurry.dataSaleOptOutCCPA", false);
                builder.withDataSaleOptOut(z);
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger2 = f61297a;
                    logger2.m5567d("Flurry Analytics api-key is set to ".concat(String.valueOf(trim)));
                    logger2.m5567d("Flurry Analytics isGdprScope is set to ".concat(String.valueOf(bool)));
                    logger2.m5567d("Flurry Analytics consentStrings is set to ".concat(String.valueOf(map)));
                    logger2.m5567d("Flurry Analytics dataSaleOptOut is set to ".concat(String.valueOf(z)));
                }
                builder.build(context, trim);
                FlurryAgent.addOrigin("vas", String.format("%s-%s", "standard-edition", BuildConfig.VERSION_NAME));
                return true;
            } catch (IllegalArgumentException e) {
                f61297a.m5564e("Unable to initialize Flurry Analytics. Invalid flurry.api-key.", e);
                return false;
            } catch (Exception e2) {
                f61297a.m5564e("Unable to initialize Flurry Analytics.", e2);
                return false;
            }
        }
    }

    public static boolean initialize(Application application, String str) {
        if (TextUtils.isEmpty(str)) {
            f61297a.m5565e("siteId cannot be null or empty.");
            return false;
        }
        Context applicationContext = application.getApplicationContext();
        VASAds.registerPlugin(new SupportPlugin(applicationContext), true);
        VASAds.registerPlugin(new InlinePlacementPlugin(applicationContext), true);
        VASAds.registerPlugin(new InlineWebAdapterPlugin(applicationContext), true);
        VASAds.registerPlugin(new InterstitialPlacementPlugin(applicationContext), true);
        VASAds.registerPlugin(new InterstitialWebAdapterPlugin(applicationContext), true);
        VASAds.registerPlugin(new NativeVerizonNativeAdapterPlugin(applicationContext), true);
        VASAds.registerPlugin(new NativePlacementPlugin(applicationContext), true);
        VASAds.registerPlugin(new VerizonNativeControllerPlugin(applicationContext), true);
        VASAds.registerPlugin(new VASTControllerPlugin(applicationContext), true);
        VASAds.registerPlugin(new VideoPlayerPlugin(applicationContext), true);
        VASAds.registerPlugin(new WebControllerPlugin(applicationContext), true);
        VASAds.registerPlugin(new WebViewPlugin(applicationContext), true);
        VASAds.registerPlugin(new InterstitialVASTAdapterPlugin(applicationContext), true);
        VASAds.registerPlugin(new OMSDKPlugin(applicationContext), true);
        VASAds.registerPlugin(new UriExperiencePlugin(applicationContext), true);
        Configuration.setString("waterfallprovider/verizonssp", VASAds.DOMAIN, "defaultWaterfallProvider", "vas-core-key");
        Configuration.setString("standard-edition", BuildConfig.LIBRARY_PACKAGE_NAME, "editionName", "vas-core-key");
        Configuration.setString(BuildConfig.VERSION_NAME, BuildConfig.LIBRARY_PACKAGE_NAME, "editionVersion", "vas-core-key");
        if (m5512a(application.getApplicationContext())) {
            return VASAds.initialize(application, str);
        }
        f61297a.m5565e("Flurry Analytics initialization failed. Unable to initialize Verizon Ads SDK.");
        return false;
    }
}
