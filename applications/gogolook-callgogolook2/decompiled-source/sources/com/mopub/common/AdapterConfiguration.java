package com.mopub.common;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/AdapterConfiguration.class */
public interface AdapterConfiguration {
    @NonNull
    String getAdapterVersion();

    @Nullable
    String getBiddingToken(@NonNull Context context);

    @NonNull
    Map<String, String> getCachedInitializationParameters(@NonNull Context context);

    @NonNull
    String getMoPubNetworkName();

    @Nullable
    Map<String, String> getMoPubRequestOptions();

    @NonNull
    String getNetworkSdkVersion();

    void initializeNetwork(@NonNull Context context, @Nullable Map<String, String> map, @NonNull OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener);

    void setCachedInitializationParameters(@NonNull Context context, @Nullable Map<String, String> map);

    void setMoPubRequestOptions(@Nullable Map<String, String> map);
}
