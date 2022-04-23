package com.mopub.mobileads;

import android.content.Context;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.ads.AdUtils;
import com.criteo.publisher.Criteo;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentStatus;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/CriteoAdapterConfiguration.class */
public class CriteoAdapterConfiguration extends BaseAdapterConfiguration {
    private static final String ADAPTER_VERSION = "1.6.2";
    private static final String MOPUB_NETWORK_NAME = "criteo";
    private static final AtomicBoolean networkInitializationSucceeded = new AtomicBoolean(false);
    private static boolean cachedInitializationParametersSet = false;

    /* renamed from: com.mopub.mobileads.CriteoAdapterConfiguration$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/CriteoAdapterConfiguration$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdUtils.ConsentStatus.values().length];
            $SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus = iArr;
            try {
                iArr[AdUtils.ConsentStatus.PERSONALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus[AdUtils.ConsentStatus.NON_PERSONALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus[AdUtils.ConsentStatus.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

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
        return getAdapterVersion();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onNetworkInitializationFinishedListener);
        AtomicBoolean atomicBoolean = networkInitializationSucceeded;
        if (!atomicBoolean.get()) {
            synchronized (CriteoAdapterConfiguration.class) {
                try {
                    if (!atomicBoolean.get()) {
                        try {
                            Criteo.Builder adUnits = new Criteo.Builder(CallAppApplication.get(), CallAppRemoteConfigManager.get().a("criteo_app_id")).adUnits(new ArrayList());
                            int i = AnonymousClass1.$SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus[((AdUtils.ConsentStatus) Prefs.bc.get()).ordinal()];
                            if (i == 1) {
                                adUnits.mopubConsent(ConsentStatus.EXPLICIT_YES.name());
                            } else if (i == 2) {
                                adUnits.mopubConsent(ConsentStatus.EXPLICIT_NO.name());
                            }
                            adUnits.init();
                            atomicBoolean.set(true);
                        } catch (Exception e) {
                            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Initializing Criteo has encountered an exception.", e);
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
