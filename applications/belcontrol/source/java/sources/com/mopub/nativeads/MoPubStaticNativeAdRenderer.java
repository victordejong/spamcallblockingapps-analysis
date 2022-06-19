package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubStaticNativeAdRenderer.class */
public class MoPubStaticNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {

    /* renamed from: a */
    public final ViewBinder f5205a;
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, di1> f5206b = new WeakHashMap<>();

    public MoPubStaticNativeAdRenderer(ViewBinder viewBinder) {
        this.f5205a = viewBinder;
    }

    /* renamed from: a */
    public final void m3303a(di1 di1Var, int i) {
        View view = di1Var.f6038a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: b */
    public final void m3302b(di1 di1Var, StaticNativeAd staticNativeAd) {
        NativeRendererHelper.addTextView(di1Var.f6039b, staticNativeAd.getTitle());
        NativeRendererHelper.addTextView(di1Var.f6040c, staticNativeAd.getText());
        NativeRendererHelper.addTextView(di1Var.f6041d, staticNativeAd.getCallToAction());
        NativeImageHelper.loadImageView(staticNativeAd.getMainImageUrl(), di1Var.f6042e);
        NativeImageHelper.loadImageView(staticNativeAd.getIconImageUrl(), di1Var.f6043f);
        NativeRendererHelper.addPrivacyInformationIcon(di1Var.f6044g, staticNativeAd.getPrivacyInformationIconImageUrl(), staticNativeAd.getPrivacyInformationIconClickThroughUrl());
        NativeRendererHelper.addSponsoredView(staticNativeAd.getSponsored(), di1Var.f6045h);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f5205a.f5284a, viewGroup, false);
    }

    public void renderAdView(View view, StaticNativeAd staticNativeAd) {
        di1 di1Var = this.f5206b.get(view);
        di1 di1Var2 = di1Var;
        if (di1Var == null) {
            di1Var2 = di1.m2517a(view, this.f5205a);
            this.f5206b.put(view, di1Var2);
        }
        m3302b(di1Var2, staticNativeAd);
        NativeRendererHelper.updateExtras(di1Var2.f6038a, this.f5205a.f5292i, staticNativeAd.getExtras());
        m3303a(di1Var2, 0);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}
