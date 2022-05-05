package com.mopub.common;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/BaseAdapterConfiguration.class */
public abstract class BaseAdapterConfiguration implements AdapterConfiguration {
    @VisibleForTesting
    public static final String CUSTOM_EVENT_PREF_NAME = "mopubCustomEventSettings";
    @Nullable
    public Map<String, String> mMoPubRequestOptions;

    @Override // com.mopub.common.AdapterConfiguration
    @NonNull
    public Map<String, String> getCachedInitializationParameters(@NonNull Context context) {
        Map<String, ?> all = SharedPreferencesHelper.getSharedPreferences(context, CUSTOM_EVENT_PREF_NAME).getAll();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "fetched init settings for %s networks: %s", Integer.valueOf(all.size()), all.keySet()));
        String name = getClass().getName();
        String str = (String) all.get(name);
        Map<String, String> hashMap = new HashMap<>();
        try {
            hashMap = Json.jsonStringToMap(str);
        } catch (JSONException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Error fetching init settings for adapter configuration " + name);
        }
        return hashMap;
    }

    @Override // com.mopub.common.AdapterConfiguration
    @Nullable
    public Map<String, String> getMoPubRequestOptions() {
        return this.mMoPubRequestOptions;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void setCachedInitializationParameters(@NonNull Context context, @Nullable Map<String, String> map) {
        Preconditions.checkNotNull(context);
        if (map != null && !map.isEmpty()) {
            SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(context, CUSTOM_EVENT_PREF_NAME);
            String jSONObject = new JSONObject(map).toString();
            String name = getClass().getName();
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Updating init settings for custom event %s with params %s", name, jSONObject));
            sharedPreferences.edit().putString(name, jSONObject).apply();
        }
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void setMoPubRequestOptions(@Nullable Map<String, String> map) {
        this.mMoPubRequestOptions = map;
    }
}
