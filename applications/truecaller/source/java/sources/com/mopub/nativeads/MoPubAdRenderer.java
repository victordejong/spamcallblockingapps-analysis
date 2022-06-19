package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.nativeads.BaseNativeAd;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdRenderer.class */
public interface MoPubAdRenderer<T extends BaseNativeAd> {
    View createAdView(Context context, ViewGroup viewGroup);

    void renderAdView(View view, T t);

    boolean supports(BaseNativeAd baseNativeAd);
}
