package com.mopub.nativeads;

import android.content.Context;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CustomEventNative.class */
public abstract class CustomEventNative {

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CustomEventNative$CustomEventNativeListener.class */
    public interface CustomEventNativeListener {
        void onNativeAdFailed(NativeErrorCode nativeErrorCode);

        void onNativeAdLoaded(BaseNativeAd baseNativeAd);
    }

    /* renamed from: a */
    public void mo3993a() {
    }

    /* renamed from: a */
    public abstract void mo3992a(Context context, CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2);
}
