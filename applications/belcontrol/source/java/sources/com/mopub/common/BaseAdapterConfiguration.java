package com.mopub.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/BaseAdapterConfiguration.class */
public abstract class BaseAdapterConfiguration implements AdapterConfiguration {

    /* renamed from: a */
    public Map<String, String> f4149a;

    @Override // com.mopub.common.AdapterConfiguration
    public abstract /* synthetic */ String getAdapterVersion();

    @Override // com.mopub.common.AdapterConfiguration
    public abstract /* synthetic */ String getBiddingToken(Context context);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mopub.common.AdapterConfiguration
    public Map<String, String> getCachedInitializationParameters(Context context) {
        Map<String, ?> all = SharedPreferencesHelper.getSharedPreferences(context, "mopubCustomEventSettings").getAll();
        String name = getClass().getName();
        String str = (String) all.get(name);
        Map hashMap = new HashMap();
        try {
            hashMap = Json.jsonStringToMap(str);
        } catch (JSONException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Error fetching init settings for adapter configuration " + name);
        }
        return hashMap;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public abstract /* synthetic */ String getMoPubNetworkName();

    @Override // com.mopub.common.AdapterConfiguration
    public Map<String, String> getMoPubRequestOptions() {
        return this.f4149a;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public abstract /* synthetic */ String getNetworkSdkVersion();

    @Override // com.mopub.common.AdapterConfiguration
    public abstract /* synthetic */ void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener);

    @Override // com.mopub.common.AdapterConfiguration
    public void setCachedInitializationParameters(Context context, Map<String, String> map) {
        Preconditions.checkNotNull(context);
        if (map == null || map.isEmpty()) {
            return;
        }
        SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(context, "mopubCustomEventSettings");
        String jSONObject = new JSONObject(map).toString();
        String name = getClass().getName();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Updating init settings for base ad %s with params %s", name, jSONObject));
        sharedPreferences.edit().putString(name, jSONObject).apply();
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void setMoPubRequestOptions(Map<String, String> map) {
        this.f4149a = map;
    }
}
