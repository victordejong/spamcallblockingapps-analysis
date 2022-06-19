package com.mopub.mobileads;

import android.content.Context;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import io.bidmachine.BidMachine;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BidMachineAdapterConfiguration.class */
public class BidMachineAdapterConfiguration extends BaseAdapterConfiguration {
    private static final String ADAPTER_VERSION = "1.5.2.0";
    private static final String MOPUB_NETWORK_NAME = "bid_machine";
    private static final String NETWORK_VERSION = "1.7.1";
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
        return "1.7.1";
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        AtomicBoolean atomicBoolean = networkInitializationSucceeded;
        if (!atomicBoolean.get()) {
            synchronized (BidMachineAdapterConfiguration.class) {
                try {
                    if (!atomicBoolean.get()) {
                        BidMachine.initialize(CallAppApplication.get(), CallAppRemoteConfigManager.get().m28703a("bid_machine_app_id"));
                        atomicBoolean.set(true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (atomicBoolean.get()) {
            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(BidMachineAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
        } else {
            onNetworkInitializationFinishedListener.onNetworkInitializationFinished(BidMachineAdapterConfiguration.class, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
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
