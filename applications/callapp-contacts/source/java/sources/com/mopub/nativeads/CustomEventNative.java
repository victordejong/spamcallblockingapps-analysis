package com.mopub.nativeads;

import android.content.Context;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/CustomEventNative.class */
public abstract class CustomEventNative {

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/CustomEventNative$CustomEventNativeListener.class */
    public interface CustomEventNativeListener {
        void onNativeAdFailed(NativeErrorCode nativeErrorCode);

        void onNativeAdLoaded(BaseNativeAd baseNativeAd);
    }

    /* renamed from: a */
    public void mo6188a() {
    }

    public abstract void loadNativeAd(Context context, CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2);
}
