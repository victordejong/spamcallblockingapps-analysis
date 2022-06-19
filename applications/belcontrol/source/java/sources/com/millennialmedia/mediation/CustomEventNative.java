package com.millennialmedia.mediation;

import android.content.Context;
import android.os.Bundle;
import com.millennialmedia.NativeAd;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventNative.class */
public interface CustomEventNative extends CustomEvent {
    public static final String DEFAULT_TYPE = "100";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventNative$CustomEventNativeListener.class */
    public interface CustomEventNativeListener {
        void onLoadFailed(ErrorCode errorCode);

        void onLoaded(CustomEventNativeAd customEventNativeAd);
    }

    void destroy();

    String getType();

    void loadNativeAd(Context context, CustomEventNativeListener customEventNativeListener, Bundle bundle);

    void onAdClicked(NativeAd nativeAd);

    void onAdLoaded(NativeAd nativeAd);
}
