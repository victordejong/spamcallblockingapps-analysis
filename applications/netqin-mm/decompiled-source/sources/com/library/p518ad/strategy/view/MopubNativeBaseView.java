package com.library.p518ad.strategy.view;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.library.p518ad.core.AbstractAdView;
import com.mopub.nativeads.MoPubStaticNativeAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.StaticNativeAd;
import com.mopub.nativeads.ViewBinder;
import p131c.p396i.p397a.C6489a;
/* renamed from: com.library.ad.strategy.view.MopubNativeBaseView */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/view/MopubNativeBaseView.class */
public abstract class MopubNativeBaseView extends AbstractAdView<NativeAd> implements NativeAd.MoPubNativeEventListener {
    public MopubNativeBaseView(Context context) {
        super(context, "MP");
    }

    public void onBindData(NativeAd nativeAd) {
        MoPubStaticNativeAdRenderer moPubStaticNativeAdRenderer = new MoPubStaticNativeAdRenderer(new ViewBinder.Builder(getLayoutId()).mainImageId(imageId()).iconImageId(iconId()).titleId(titleId()).textId(bodyId()).privacyInformationIconImageId(tagId()).callToActionId(buttonId()).build());
        View.inflate(C6489a.m20718b(), getLayoutId(), this);
        String str = "titleView:" + ((TextView) getView(titleId()));
        nativeAd.prepare(this);
        moPubStaticNativeAdRenderer.renderAdView((View) this, (StaticNativeAd) nativeAd.getBaseNativeAd());
        nativeAd.setMoPubNativeEventListener(this);
    }

    @Override // com.mopub.nativeads.NativeAd.MoPubNativeEventListener
    public void onClick(View view) {
        onAdClick();
    }

    @Override // com.mopub.nativeads.NativeAd.MoPubNativeEventListener
    public void onImpression(View view) {
    }
}
