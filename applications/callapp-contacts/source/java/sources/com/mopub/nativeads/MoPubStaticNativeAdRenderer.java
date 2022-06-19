package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubStaticNativeAdRenderer.class */
public class MoPubStaticNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {

    /* renamed from: a */
    final WeakHashMap<View, C16988j> f60019a = new WeakHashMap<>();

    /* renamed from: b */
    private final ViewBinder f60020b;

    public MoPubStaticNativeAdRenderer(ViewBinder viewBinder) {
        this.f60020b = viewBinder;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f60020b.f60117a, viewGroup, false);
    }

    public void renderAdView(View view, StaticNativeAd staticNativeAd) {
        C16988j c16988j = this.f60019a.get(view);
        C16988j c16988j2 = c16988j;
        if (c16988j == null) {
            c16988j2 = C16988j.m6095a(view, this.f60020b);
            this.f60019a.put(view, c16988j2);
        }
        NativeRendererHelper.addTextView(c16988j2.f60194b, staticNativeAd.getTitle());
        NativeRendererHelper.addTextView(c16988j2.f60195c, staticNativeAd.getText());
        NativeRendererHelper.addTextView(c16988j2.f60196d, staticNativeAd.getCallToAction());
        NativeImageHelper.loadImageView(staticNativeAd.getMainImageUrl(), c16988j2.f60197e);
        NativeImageHelper.loadImageView(staticNativeAd.getIconImageUrl(), c16988j2.f60198f);
        NativeRendererHelper.addPrivacyInformationIcon(c16988j2.f60199g, staticNativeAd.getPrivacyInformationIconImageUrl(), staticNativeAd.getPrivacyInformationIconClickThroughUrl());
        NativeRendererHelper.addSponsoredView(staticNativeAd.getSponsored(), c16988j2.f60200h);
        NativeRendererHelper.addPrivacyInformationIcon(c16988j2.f60199g, staticNativeAd.getPrivacyInformationIconImageUrl(), staticNativeAd.getPrivacyInformationIconClickThroughUrl());
        NativeRendererHelper.updateExtras(c16988j2.f60193a, this.f60020b.f60125i, staticNativeAd.getExtras());
        if (c16988j2.f60193a != null) {
            c16988j2.f60193a.setVisibility(0);
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}
