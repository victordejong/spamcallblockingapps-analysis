package com.mopub.mobileads;

import android.content.Context;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.framework.util.StringUtils;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.BidderTokenProvider;
import com.facebook.biddingkit.p291b.C10115a;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FacebookAdapterConfiguration.class */
public class FacebookAdapterConfiguration extends BaseAdapterConfiguration {
    private static final String ADAPTER_VERSION = "5.6.0.0";
    private static final String MOPUB_NETWORK_NAME = "facebook";
    private static final String NATIVE_BANNER_KEY = "native_banner";
    private static Boolean isNativeBanner;
    private static final AtomicBoolean networkInitializationSucceeded = new AtomicBoolean(false);
    private static boolean cachedInitializationParametersSet = false;
    private AtomicReference<String> tokenReference = new AtomicReference<>(null);
    private AtomicBoolean isComputingToken = new AtomicBoolean(false);

    public static Boolean getNativeBannerPref() {
        return isNativeBanner;
    }

    public static boolean isInitialized() {
        return networkInitializationSucceeded.get();
    }

    private void refreshBidderToken(final Context context) {
        if (this.isComputingToken.compareAndSet(false, true)) {
            new Task() { // from class: com.mopub.mobileads.FacebookAdapterConfiguration.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    try {
                        FacebookAdapterConfiguration.this.tokenReference.set(BidderTokenProvider.getBidderToken(context));
                        FacebookAdapterConfiguration.this.isComputingToken.set(false);
                    } catch (Exception e) {
                        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, e);
                    }
                }
            }.execute();
        }
    }

    private static void setNativeBannerPref(Boolean bool) {
        isNativeBanner = bool;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getAdapterVersion() {
        return ADAPTER_VERSION;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getBiddingToken(Context context) {
        Preconditions.checkNotNull(context);
        refreshBidderToken(context);
        if (networkInitializationSucceeded.get()) {
            return this.tokenReference.get();
        }
        return null;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getMoPubNetworkName() {
        return MOPUB_NETWORK_NAME;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getNetworkSdkVersion() {
        String adapterVersion = getAdapterVersion();
        return adapterVersion.substring(0, adapterVersion.lastIndexOf(46));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onNetworkInitializationFinishedListener);
        AtomicBoolean atomicBoolean = networkInitializationSucceeded;
        if (!atomicBoolean.get()) {
            synchronized (FacebookAdapterConfiguration.class) {
                try {
                    if (!atomicBoolean.get()) {
                        try {
                            AdSettings.setDataProcessingOptions(new String[0]);
                            AudienceNetworkAds.InitSettingsBuilder buildInitSettings = AudienceNetworkAds.buildInitSettings(context);
                            String m28703a = CallAppRemoteConfigManager.get().m28703a("facebookAudienceNetworkMediationServiceString");
                            if (StringUtils.m26045b((CharSequence) m28703a)) {
                                buildInitSettings.withMediationService(m28703a);
                            }
                            buildInitSettings.initialize();
                            if (map != null && !map.isEmpty()) {
                                Boolean valueOf = Boolean.valueOf(map.get(NATIVE_BANNER_KEY));
                                isNativeBanner = valueOf;
                                setNativeBannerPref(valueOf);
                            }
                            refreshBidderToken(context);
                            C10115a.m23376a(context);
                            atomicBoolean.set(true);
                        } catch (Exception e) {
                            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Initializing Facebook Audience Network has encountered an exception.", e);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (networkInitializationSucceeded.get()) {
            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(getClass(), MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
        } else {
            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(getClass(), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
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
