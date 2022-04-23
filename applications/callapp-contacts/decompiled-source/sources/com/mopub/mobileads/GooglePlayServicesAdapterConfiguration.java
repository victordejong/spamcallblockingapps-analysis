package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/GooglePlayServicesAdapterConfiguration.class */
public class GooglePlayServicesAdapterConfiguration extends BaseAdapterConfiguration {
    private static final String ADAPTER_VERSION = "18.2.0.4";
    private static final String KEY_EXTRA_APPLICATION_ID = "appid";
    private static final String MOPUB_NETWORK_NAME = "admob_native";
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
        String adapterVersion = getAdapterVersion();
        return !TextUtils.isEmpty(adapterVersion) ? adapterVersion.substring(0, adapterVersion.lastIndexOf(46)) : "";
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onNetworkInitializationFinishedListener);
        AtomicBoolean atomicBoolean = networkInitializationSucceeded;
        if (!atomicBoolean.get()) {
            synchronized (GooglePlayServicesAdapterConfiguration.class) {
                try {
                    if (!atomicBoolean.get()) {
                        String str = null;
                        if (map != null) {
                            str = null;
                            try {
                                if (!map.isEmpty()) {
                                    str = map.get("appid");
                                }
                            } catch (Exception e) {
                                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Initializing AdMob has encountered an exception.", e);
                            }
                        }
                        if (!TextUtils.isEmpty(str)) {
                            MobileAds.initialize(context, map.get("appid"));
                            MobileAds.setAppMuted(true);
                        } else {
                            MobileAds.initialize(context, new OnInitializationCompleteListener() { // from class: com.mopub.mobileads.GooglePlayServicesAdapterConfiguration.1
                                @Override // com.google.android.gms.ads.initialization.OnInitializationCompleteListener
                                public void onInitializationComplete(InitializationStatus initializationStatus) {
                                    MobileAds.setAppMuted(true);
                                }
                            });
                        }
                        atomicBoolean.set(true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (networkInitializationSucceeded.get()) {
            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(GooglePlayServicesAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
        } else {
            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(GooglePlayServicesAdapterConfiguration.class, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
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
