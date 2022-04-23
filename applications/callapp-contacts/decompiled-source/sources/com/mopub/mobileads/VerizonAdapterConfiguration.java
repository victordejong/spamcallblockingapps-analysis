package com.mopub.mobileads;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.CLog;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.verizon.ads.BuildConfig;
import com.verizon.ads.Configuration;
import com.verizon.ads.VASAds;
import com.verizon.ads.edition.StandardEdition;
import com.verizon.ads.utils.ThreadUtils;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VerizonAdapterConfiguration.class */
public class VerizonAdapterConfiguration extends BaseAdapterConfiguration {
    private static final String ADAPTER_VERSION = "1.5.0.0";
    public static final String MEDIATOR_ID = "MoPubVAS-1.5.0.0";
    private static final String MOPUB_NETWORK_NAME = "Verizon";
    static final String REQUEST_METADATA_AD_CONTENT_KEY = "adContent";
    public static final String SERVER_EXTRAS_AD_CONTENT_KEY = "adm";
    public static final String VAS_SITE_ID_KEY = "siteId";
    private static final AtomicBoolean networkInitializationSucceeded = new AtomicBoolean(false);
    private static boolean cachedInitializationParametersSet = false;

    public static boolean isInitialized() {
        return networkInitializationSucceeded.get();
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getAdapterVersion() {
        return ADAPTER_VERSION;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getBiddingToken(Context context) {
        return null;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getMoPubNetworkName() {
        return MOPUB_NETWORK_NAME;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getNetworkSdkVersion() {
        String string = Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "editionVersion", null);
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String adapterVersion = getAdapterVersion();
        return !TextUtils.isEmpty(adapterVersion) ? adapterVersion.substring(0, adapterVersion.lastIndexOf(46)) : "";
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(final Context context, Map<String, String> map, final OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onNetworkInitializationFinishedListener);
        MoPubLog.LogLevel logLevel = MoPubLog.getLogLevel();
        if (logLevel == MoPubLog.LogLevel.DEBUG) {
            VASAds.setLogLevel(3);
        } else if (logLevel == MoPubLog.LogLevel.INFO) {
            VASAds.setLogLevel(4);
        }
        final String a2 = CallAppRemoteConfigManager.get().a("verizon_app_id");
        if (TextUtils.isEmpty(a2)) {
            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(VerizonAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
        } else if (!networkInitializationSucceeded.get()) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.mopub.mobileads.VerizonAdapterConfiguration.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!VerizonAdapterConfiguration.networkInitializationSucceeded.get()) {
                        VASAds.setShareAdvertiserIdEnabled(true);
                        VASAds.setShareApplicationIdEnabled(true);
                        try {
                            if (StandardEdition.initialize((Application) context.getApplicationContext(), a2)) {
                                VerizonAdapterConfiguration.networkInitializationSucceeded.set(true);
                                onNetworkInitializationFinishedListener.onNetworkInitializationFinished(VerizonAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
                                return;
                            }
                            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(VerizonAdapterConfiguration.class, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                        } catch (Exception e) {
                            CLog.a(VerizonAdapterConfiguration.class, e);
                            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(VerizonAdapterConfiguration.class, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                        }
                    } else {
                        onNetworkInitializationFinishedListener.onNetworkInitializationFinished(VerizonAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
                    }
                }
            });
        }
    }

    @Override // com.mopub.common.BaseAdapterConfiguration, com.mopub.common.AdapterConfiguration
    public void setCachedInitializationParameters(Context context, Map<String, String> map) {
        if (!cachedInitializationParametersSet) {
            cachedInitializationParametersSet = true;
            super.setCachedInitializationParameters(context, map);
        }
    }
}
