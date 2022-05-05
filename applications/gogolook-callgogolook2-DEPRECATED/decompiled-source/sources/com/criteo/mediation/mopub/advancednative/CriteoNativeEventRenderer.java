package com.criteo.mediation.mopub.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeRenderer;
import com.criteo.publisher.advancednative.NativeInternalForMoPub;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.MoPubAdRenderer;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/advancednative/CriteoNativeEventRenderer.class */
public class CriteoNativeEventRenderer implements MoPubAdRenderer<CriteoBaseNativeAd> {
    @NonNull
    public final CriteoNativeRenderer renderer;

    public CriteoNativeEventRenderer(@NonNull CriteoNativeRenderer criteoNativeRenderer) {
        this.renderer = NativeInternalForMoPub.m35987a(criteoNativeRenderer);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return this.renderer.createNativeView(context, viewGroup);
    }

    public void renderAdView(@NonNull View view, @NonNull CriteoBaseNativeAd criteoBaseNativeAd) {
        CriteoNativeAd a = criteoBaseNativeAd.m36075a();
        NativeInternalForMoPub.m35988a(a, this.renderer);
        a.renderNativeView(view);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        return baseNativeAd instanceof CriteoBaseNativeAd;
    }
}
