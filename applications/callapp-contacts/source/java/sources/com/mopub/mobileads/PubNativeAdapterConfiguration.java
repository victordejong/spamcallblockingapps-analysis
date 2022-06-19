package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.AndroidUtils;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import net.pubnative.lite.sdk.HyBid;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/PubNativeAdapterConfiguration.class */
public class PubNativeAdapterConfiguration extends BaseAdapterConfiguration {
    private static final String ADAPTER_VERSION = "0.9.0";
    private static final String MOPUB_NETWORK_NAME = "pubnative";
    private static Handler handler;
    private static HandlerThread handlerThread;
    private static final AtomicBoolean networkInitializationSucceeded = new AtomicBoolean(false);
    private static final AtomicBoolean networkInitializationInProcess = new AtomicBoolean(false);
    private static boolean cachedInitializationParametersSet = false;

    public PubNativeAdapterConfiguration() {
        HandlerThread handlerThread2 = new HandlerThread(PubNativeAdapterConfiguration.class.toString());
        handlerThread = handlerThread2;
        handlerThread2.start();
        AndroidUtils.m27631a(handlerThread.getLooper());
        handler = new Handler(handlerThread.getLooper());
    }

    public static boolean isInitialized() {
        return networkInitializationSucceeded.get();
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getAdapterVersion() {
        return "0.9.0";
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
        return getAdapterVersion();
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(Context context, Map<String, String> map, final OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onNetworkInitializationFinishedListener);
        AtomicBoolean atomicBoolean = networkInitializationSucceeded;
        if (!atomicBoolean.get()) {
            synchronized (PubNativeAdapterConfiguration.class) {
                try {
                    if (!atomicBoolean.get()) {
                        AtomicBoolean atomicBoolean2 = networkInitializationInProcess;
                        if (atomicBoolean2.get()) {
                            return;
                        }
                        atomicBoolean2.set(true);
                        final CountDownLatch countDownLatch = new CountDownLatch(1);
                        handler.post(new Runnable() { // from class: com.mopub.mobileads.PubNativeAdapterConfiguration.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    HyBid.setLocationUpdatesEnabled(false);
                                    HyBid.initialize(CallAppRemoteConfigManager.get().m28703a("pubnative_app_id"), CallAppApplication.get(), new HyBid.InitialisationListener() { // from class: com.mopub.mobileads.PubNativeAdapterConfiguration.1.1
                                        @Override // net.pubnative.lite.sdk.HyBid.InitialisationListener
                                        public void onInitialisationFinished(boolean z) {
                                            if (z) {
                                                PubNativeAdapterConfiguration.networkInitializationSucceeded.set(z);
                                                onNetworkInitializationFinishedListener.onNetworkInitializationFinished(PubNativeAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
                                            } else {
                                                onNetworkInitializationFinishedListener.onNetworkInitializationFinished(PubNativeAdapterConfiguration.class, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                                            }
                                            PubNativeAdapterConfiguration.networkInitializationInProcess.set(false);
                                            countDownLatch.countDown();
                                        }
                                    });
                                } catch (Exception e) {
                                    countDownLatch.countDown();
                                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Initializing PubNative has encountered an exception.", e);
                                    PubNativeAdapterConfiguration.networkInitializationInProcess.set(false);
                                    onNetworkInitializationFinishedListener.onNetworkInitializationFinished(PubNativeAdapterConfiguration.class, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                                }
                            }
                        });
                        try {
                            countDownLatch.await(1000L, TimeUnit.MILLISECONDS);
                        } catch (InterruptedException e) {
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
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
