package com.mopub.mobileads;

import android.content.Context;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.MRAIDPolicy;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AmazonAdapterConfiguration.class */
public class AmazonAdapterConfiguration extends BaseAdapterConfiguration {
    private static final String ADAPTER_VERSION = "1.0";
    public static final String APP_KEY = "appKey";
    private static final String MOPUB_NETWORK_NAME = "amazonA9";
    private static JSONObject jsonPricePoints;
    private static final AtomicBoolean networkInitializationSucceeded = new AtomicBoolean(false);
    private static boolean cachedInitializationParametersSet = false;

    public static boolean isInitialized() {
        return networkInitializationSucceeded.get();
    }

    @Override // com.mopub.common.AdapterConfiguration
    public String getAdapterVersion() {
        return "1.0";
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
        return AdRegistration.j();
    }

    public double getPricePoints(String str) {
        JSONObject jSONObject = jsonPricePoints;
        if (jSONObject != null) {
            return jSONObject.optDouble(str, 0.0d);
        }
        return 0.0d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onNetworkInitializationFinishedListener);
        AtomicBoolean atomicBoolean = networkInitializationSucceeded;
        if (!atomicBoolean.get()) {
            synchronized (AmazonAdapterConfiguration.class) {
                try {
                    if (!atomicBoolean.get()) {
                        try {
                            String a2 = CallAppRemoteConfigManager.get().a("amazona9_app_id");
                            if (StringUtils.b((CharSequence) a2)) {
                                AdRegistration.a(a2, CallAppApplication.get());
                                AdRegistration.h();
                                if (CallAppRemoteConfigManager.get().c("amazonFromDfpEnabled")) {
                                    AdRegistration.a(new String[]{"1.0", "2.0", "3.0"});
                                    AdRegistration.a(MRAIDPolicy.CUSTOM);
                                } else {
                                    AdRegistration.a(MRAIDPolicy.MOPUB);
                                }
                                if (CallAppApplication.get().getResources().getBoolean(2131034115)) {
                                    AdRegistration.f();
                                }
                                new Task() { // from class: com.mopub.mobileads.AmazonAdapterConfiguration.1
                                    @Override // com.callapp.contacts.manager.task.Task
                                    public void doTask() {
                                        String a3 = CallAppRemoteConfigManager.get().a("amazonPricePointsUrl", false);
                                        String str = a3;
                                        if (StringUtils.a((CharSequence) a3)) {
                                            str = CallAppRemoteConfigManager.get().a("amazonPricePoints");
                                        }
                                        if (StringUtils.b((CharSequence) str)) {
                                            try {
                                                JSONObject unused = AmazonAdapterConfiguration.jsonPricePoints = new JSONObject(str);
                                            } catch (JSONException e) {
                                                CLog.a(AmazonAdapterConfiguration.class, e);
                                                AnalyticsManager.get().a(Constants.AD, "Failed to parse Amazon price points");
                                            }
                                        } else {
                                            AnalyticsManager.get().a(Constants.AD, "Failed to load Amazon price points");
                                        }
                                    }
                                }.execute();
                                atomicBoolean.set(true);
                            }
                        } catch (Exception e) {
                            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Initializing Amazon has encountered an exception.", e);
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
