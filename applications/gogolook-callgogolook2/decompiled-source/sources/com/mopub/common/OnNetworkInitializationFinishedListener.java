package com.mopub.common;

import androidx.annotation.NonNull;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/OnNetworkInitializationFinishedListener.class */
public interface OnNetworkInitializationFinishedListener {
    void onNetworkInitializationFinished(@NonNull Class<? extends AdapterConfiguration> cls, @NonNull MoPubErrorCode moPubErrorCode);
}
