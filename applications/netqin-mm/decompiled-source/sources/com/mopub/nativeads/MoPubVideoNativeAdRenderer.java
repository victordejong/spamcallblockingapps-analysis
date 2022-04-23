package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.WeakHashMap;
import p131c.p421j.p426d.C6672c;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubVideoNativeAdRenderer.class */
public class MoPubVideoNativeAdRenderer implements MoPubAdRenderer<VideoNativeAd> {

    /* renamed from: a */
    public final MediaViewBinder f34810a;
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, C6672c> f34811b = new WeakHashMap<>();

    public MoPubVideoNativeAdRenderer(MediaViewBinder mediaViewBinder) {
        this.f34810a = mediaViewBinder;
    }

    /* renamed from: a */
    public final void m3915a(C6672c cVar, int i) {
        View view = cVar.f20590a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m3914a(C6672c cVar, VideoNativeAd videoNativeAd) {
        NativeRendererHelper.addTextView(cVar.f20592c, videoNativeAd.getTitle());
        NativeRendererHelper.addTextView(cVar.f20593d, videoNativeAd.getText());
        NativeRendererHelper.addCtaButton(cVar.f20595f, cVar.f20590a, videoNativeAd.getCallToAction());
        if (cVar.f20591b != null) {
            NativeImageHelper.loadImageView(videoNativeAd.getMainImageUrl(), cVar.f20591b.getMainImageView());
        }
        NativeImageHelper.loadImageView(videoNativeAd.getIconImageUrl(), cVar.f20594e);
        NativeRendererHelper.addPrivacyInformationIcon(cVar.f20596g, videoNativeAd.getPrivacyInformationIconImageUrl(), videoNativeAd.getPrivacyInformationIconClickThroughUrl());
        NativeRendererHelper.addSponsoredView(videoNativeAd.getSponsored(), cVar.f20597h);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f34810a.f34677a, viewGroup, false);
    }

    public void renderAdView(View view, VideoNativeAd videoNativeAd) {
        C6672c cVar = this.f34811b.get(view);
        C6672c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = C6672c.m20101a(view, this.f34810a);
            this.f34811b.put(view, cVar2);
        }
        m3914a(cVar2, videoNativeAd);
        NativeRendererHelper.updateExtras(cVar2.f20590a, this.f34810a.f34685i, videoNativeAd.getExtras());
        m3915a(cVar2, 0);
        videoNativeAd.render((MediaLayout) view.findViewById(this.f34810a.f34678b));
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof VideoNativeAd;
    }
}
