package com.mopub.nativeads;

import android.content.Context;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/CustomEventNative.class */
public abstract class CustomEventNative {

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/CustomEventNative$CustomEventNativeListener.class */
    public interface CustomEventNativeListener {
        void onNativeAdFailed(NativeErrorCode nativeErrorCode);

        void onNativeAdLoaded(BaseNativeAd baseNativeAd);
    }

    /* renamed from: a */
    public abstract void mo3342a(Context context, CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2);

    /* renamed from: b */
    public void mo3341b() {
    }
}
