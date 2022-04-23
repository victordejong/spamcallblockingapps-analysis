package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;
import com.mopub.mobileads.MoPubErrorCode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/AdapterConfigurationManager.class */
public class AdapterConfigurationManager implements AdapterConfigurationsInitializationListener {
    private static final String TOKEN_KEY = "token";
    private volatile Map<String, AdapterConfiguration> mAdapterConfigurations;
    private SdkInitializationListener mSdkInitializationListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/AdapterConfigurationManager$AdapterConfigurationsInitializationAsyncTask.class */
    public static class AdapterConfigurationsInitializationAsyncTask extends AsyncTask<Void, Void, Map<String, AdapterConfiguration>> {
        private final Set<String> adapterConfigurationClasses;
        private final AdapterConfigurationsInitializationListener adapterConfigurationsInitializationListener;
        private final Map<String, Map<String, String>> moPubRequestOptions;
        private final Map<String, Map<String, String>> networkMediationConfigurations;
        private final WeakReference<Context> weakContext;

        AdapterConfigurationsInitializationAsyncTask(Context context, Set<String> set, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2, AdapterConfigurationsInitializationListener adapterConfigurationsInitializationListener) {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(set);
            Preconditions.checkNotNull(map);
            Preconditions.checkNotNull(map2);
            Preconditions.checkNotNull(adapterConfigurationsInitializationListener);
            this.weakContext = new WeakReference<>(context);
            this.adapterConfigurationClasses = set;
            this.networkMediationConfigurations = map;
            this.moPubRequestOptions = map2;
            this.adapterConfigurationsInitializationListener = adapterConfigurationsInitializationListener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Map<String, AdapterConfiguration> doInBackground(Void... voidArr) {
            HashMap hashMap = new HashMap();
            for (String str : this.adapterConfigurationClasses) {
                try {
                    AdapterConfiguration adapterConfiguration = (AdapterConfiguration) Reflection.instantiateClassWithEmptyConstructor(str, AdapterConfiguration.class);
                    Context context = this.weakContext.get();
                    if (context == null) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Context null. Unable to initialize adapter configuration ".concat(String.valueOf(str)));
                    } else {
                        Map<String, String> map = this.networkMediationConfigurations.get(str);
                        HashMap hashMap2 = new HashMap(adapterConfiguration.getCachedInitializationParameters(context));
                        if (map != null) {
                            hashMap2.putAll(map);
                            adapterConfiguration.setCachedInitializationParameters(context, hashMap2);
                        }
                        Map<String, String> map2 = this.moPubRequestOptions.get(str);
                        if (map2 != null) {
                            adapterConfiguration.setMoPubRequestOptions(map2);
                        }
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Initializing %s version %s with network sdk version %s and with params %s", str, adapterConfiguration.getAdapterVersion(), adapterConfiguration.getNetworkSdkVersion(), hashMap2));
                        adapterConfiguration.initializeNetwork(context, hashMap2, this.adapterConfigurationsInitializationListener);
                        hashMap.put(str, adapterConfiguration);
                    }
                } catch (Exception e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Unable to find class ".concat(String.valueOf(str)), e);
                }
            }
            return hashMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Map<String, AdapterConfiguration> map) {
            this.adapterConfigurationsInitializationListener.onAdapterConfigurationsInitialized(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterConfigurationManager(SdkInitializationListener sdkInitializationListener) {
        this.mSdkInitializationListener = sdkInitializationListener;
    }

    private JSONObject getTokensAsJsonObject(Context context) {
        Preconditions.checkNotNull(context);
        Map<String, AdapterConfiguration> map = this.mAdapterConfigurations;
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = null;
        if (map != null) {
            if (!map.isEmpty()) {
                Iterator<AdapterConfiguration> it2 = map.values().iterator();
                while (true) {
                    jSONObject2 = jSONObject;
                    if (!it2.hasNext()) {
                        break;
                    }
                    AdapterConfiguration next = it2.next();
                    try {
                        String biddingToken = next.getBiddingToken(context);
                        if (!TextUtils.isEmpty(biddingToken)) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put(TOKEN_KEY, biddingToken);
                            JSONObject jSONObject4 = jSONObject;
                            if (jSONObject == null) {
                                jSONObject4 = new JSONObject();
                            }
                            jSONObject4.put(next.getMoPubNetworkName(), jSONObject3);
                            jSONObject = jSONObject4;
                        }
                    } catch (JSONException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR, "JSON parsing failed for MoPub network name: " + next.getMoPubNetworkName());
                        jSONObject = jSONObject;
                    }
                }
            } else {
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    AdapterConfiguration getAdapterConfiguration(Class<? extends AdapterConfiguration> cls) {
        Preconditions.checkNotNull(cls);
        Map<String, AdapterConfiguration> map = this.mAdapterConfigurations;
        if (map == null) {
            return null;
        }
        return map.get(cls.getName());
    }

    public List<String> getAdapterConfigurationInfo() {
        Map<String, AdapterConfiguration> map = this.mAdapterConfigurations;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, AdapterConfiguration> entry : map.entrySet()) {
            StringBuilder sb = new StringBuilder();
            String key = entry.getKey();
            sb.append(key.substring(key.lastIndexOf(".") + 1));
            sb.append(": Adapter version ");
            sb.append(entry.getValue().getAdapterVersion());
            sb.append(", SDK version ");
            sb.append(entry.getValue().getNetworkSdkVersion());
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public List<String> getAdvancedBidderNames() {
        Map<String, AdapterConfiguration> map = this.mAdapterConfigurations;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AdapterConfiguration adapterConfiguration : map.values()) {
            arrayList.add(adapterConfiguration.getMoPubNetworkName());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getTokensAsJsonString(Context context) {
        Preconditions.checkNotNull(context);
        JSONObject tokensAsJsonObject = getTokensAsJsonObject(context);
        if (tokensAsJsonObject == null) {
            return null;
        }
        return tokensAsJsonObject.toString();
    }

    public void initialize(Context context, Set<String> set, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        AsyncTasks.safeExecuteOnExecutor(new AdapterConfigurationsInitializationAsyncTask(context.getApplicationContext(), set, map, map2, this), new Void[0]);
    }

    @Override // com.mopub.common.AdapterConfigurationsInitializationListener
    public void onAdapterConfigurationsInitialized(Map<String, AdapterConfiguration> map) {
        Preconditions.checkNotNull(map);
        this.mAdapterConfigurations = map;
        SdkInitializationListener sdkInitializationListener = this.mSdkInitializationListener;
        if (sdkInitializationListener != null) {
            sdkInitializationListener.onInitializationFinished();
            this.mSdkInitializationListener = null;
        }
    }

    @Override // com.mopub.common.OnNetworkInitializationFinishedListener
    public void onNetworkInitializationFinished(Class<? extends AdapterConfiguration> cls, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(moPubErrorCode);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, cls + " initialized with error code " + moPubErrorCode);
    }
}
