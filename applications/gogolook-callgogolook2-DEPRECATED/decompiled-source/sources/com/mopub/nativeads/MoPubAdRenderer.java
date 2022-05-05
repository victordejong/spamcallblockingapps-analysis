package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.nativeads.BaseNativeAd;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdRenderer.class */
public interface MoPubAdRenderer<T extends BaseNativeAd> {
    @NonNull
    View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup);

    void renderAdView(@NonNull View view, @NonNull T t);

    boolean supports(@NonNull BaseNativeAd baseNativeAd);
}
