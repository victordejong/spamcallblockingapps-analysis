package com.mopub.common;

import android.content.Context;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/AdapterConfiguration.class */
public interface AdapterConfiguration {
    String getAdapterVersion();

    String getBiddingToken(Context context);

    Map<String, String> getCachedInitializationParameters(Context context);

    String getMoPubNetworkName();

    Map<String, String> getMoPubRequestOptions();

    String getNetworkSdkVersion();

    void initializeNetwork(Context context, Map<String, String> map, OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener);

    void setCachedInitializationParameters(Context context, Map<String, String> map);

    void setMoPubRequestOptions(Map<String, String> map);
}
