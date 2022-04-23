package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubStaticNativeAdRenderer.class */
public class MoPubStaticNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {

    /* renamed from: a  reason: collision with root package name */
    final WeakHashMap<View, j> f34589a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final ViewBinder f34590b;

    public MoPubStaticNativeAdRenderer(ViewBinder viewBinder) {
        this.f34590b = viewBinder;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f34590b.f34654a, viewGroup, false);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    public void renderAdView(View view, StaticNativeAd staticNativeAd) {
        j jVar = this.f34589a.get(view);
        j jVar2 = jVar;
        if (jVar == null) {
            jVar2 = j.a(view, this.f34590b);
            this.f34589a.put(view, jVar2);
        }
        NativeRendererHelper.addTextView(jVar2.f34697b, staticNativeAd.getTitle());
        NativeRendererHelper.addTextView(jVar2.f34698c, staticNativeAd.getText());
        NativeRendererHelper.addTextView(jVar2.f34699d, staticNativeAd.getCallToAction());
        NativeImageHelper.loadImageView(staticNativeAd.getMainImageUrl(), jVar2.e);
        NativeImageHelper.loadImageView(staticNativeAd.getIconImageUrl(), jVar2.f);
        NativeRendererHelper.addPrivacyInformationIcon(jVar2.g, staticNativeAd.getPrivacyInformationIconImageUrl(), staticNativeAd.getPrivacyInformationIconClickThroughUrl());
        NativeRendererHelper.addSponsoredView(staticNativeAd.getSponsored(), jVar2.h);
        NativeRendererHelper.addPrivacyInformationIcon(jVar2.g, staticNativeAd.getPrivacyInformationIconImageUrl(), staticNativeAd.getPrivacyInformationIconClickThroughUrl());
        NativeRendererHelper.updateExtras(jVar2.f34696a, this.f34590b.i, staticNativeAd.getExtras());
        if (jVar2.f34696a != null) {
            jVar2.f34696a.setVisibility(0);
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}
