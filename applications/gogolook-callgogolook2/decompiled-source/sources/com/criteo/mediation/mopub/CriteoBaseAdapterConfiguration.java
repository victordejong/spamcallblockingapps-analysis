package com.criteo.mediation.mopub;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.BaseAdapterConfiguration;
import com.mopub.common.OnNetworkInitializationFinishedListener;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/CriteoBaseAdapterConfiguration.class */
public class CriteoBaseAdapterConfiguration extends BaseAdapterConfiguration {

    /* renamed from: a */
    public String f1959a;

    /* renamed from: b */
    public String f1960b;

    /* renamed from: c */
    public String f1961c;

    @Override // com.mopub.common.AdapterConfiguration
    @NonNull
    public String getAdapterVersion() {
        return this.f1959a;
    }

    @Override // com.mopub.common.AdapterConfiguration
    @Nullable
    public String getBiddingToken(@NonNull Context context) {
        return null;
    }

    @Override // com.mopub.common.AdapterConfiguration
    @NonNull
    public String getMoPubNetworkName() {
        return this.f1961c;
    }

    @Override // com.mopub.common.AdapterConfiguration
    @NonNull
    public String getNetworkSdkVersion() {
        return this.f1960b;
    }

    @Override // com.mopub.common.AdapterConfiguration
    public void initializeNetwork(@NonNull Context context, @Nullable Map<String, String> map, @NonNull OnNetworkInitializationFinishedListener onNetworkInitializationFinishedListener) {
        this.f1960b = "3.7.0";
        this.f1959a = "3.7.0.0";
        this.f1961c = "criteo";
        onNetworkInitializationFinishedListener.onNetworkInitializationFinished(CriteoBaseAdapterConfiguration.class, MoPubErrorCode.ADAPTER_INITIALIZATION_SUCCESS);
    }
}
