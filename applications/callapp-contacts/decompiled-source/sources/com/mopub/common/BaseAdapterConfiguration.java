package com.mopub.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/BaseAdapterConfiguration.class */
public abstract class BaseAdapterConfiguration implements AdapterConfiguration {
    static final String CUSTOM_EVENT_PREF_NAME = "mopubCustomEventSettings";
    private Map<String, String> mMoPubRequestOptions;

    @Override // com.mopub.common.AdapterConfiguration
    public Map<String, String> getCachedInitializationParameters(Context context) {
        Map<String, ?> all = SharedPreferencesHelper.getSharedPreferences(context, CUSTOM_EVENT_PREF_NAME).getAll();
        String name = getClass().getName();
        String str = (String) all.get(name);
        Map<String, String> hashMap = new HashMap<>();
        try {
            hashMap = Json.jsonStringToMap(str);
        } catch (JSONException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error fetching init settings for adapter configuration ".concat(String.valueOf(name)));
        }
        return hashMap;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public Map<String, String> getMoPubRequestOptions() {
        return this.mMoPubRequestOptions;
    }

    public void initializeNetwork(Context context, Map<String, String> map) {
        initializeNetwork(context, map, new OnNetworkInitializationFinishedListener() { // from class: com.mopub.common.BaseAdapterConfiguration.1
            @Override // com.mopub.common.OnNetworkInitializationFinishedListener
            public void onNetworkInitializationFinished(Class<? extends AdapterConfiguration> cls, MoPubErrorCode moPubErrorCode) {
            }
        });
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void setCachedInitializationParameters(Context context, Map<String, String> map) {
        Preconditions.checkNotNull(context);
        if (map != null && !map.isEmpty()) {
            SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(context, CUSTOM_EVENT_PREF_NAME);
            String jSONObject = new JSONObject(map).toString();
            String name = getClass().getName();
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Updating init settings for base ad %s with params %s", name, jSONObject));
            sharedPreferences.edit().putString(name, jSONObject).apply();
        }
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void setMoPubRequestOptions(Map<String, String> map) {
        this.mMoPubRequestOptions = map;
    }
}
