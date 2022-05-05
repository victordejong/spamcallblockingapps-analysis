package com.mopub.nativeads;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CustomEventNative.class */
public abstract class CustomEventNative {

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CustomEventNative$CustomEventNativeListener.class */
    public interface CustomEventNativeListener {
        void onNativeAdFailed(NativeErrorCode nativeErrorCode);

        void onNativeAdLoaded(BaseNativeAd baseNativeAd);
    }

    public abstract void loadNativeAd(@NonNull Context context, @NonNull CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2);

    public void onInvalidate() {
    }
}
