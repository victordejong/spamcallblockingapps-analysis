package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.WeakHashMap;
import p081h.p430l.p435d.C10743j;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStaticNativeAdRenderer.class */
public class MoPubStaticNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {
    @NonNull

    /* renamed from: a */
    public final ViewBinder f9173a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, C10743j> f9174b = new WeakHashMap<>();

    public MoPubStaticNativeAdRenderer(@NonNull ViewBinder viewBinder) {
        this.f9173a = viewBinder;
    }

    /* renamed from: a */
    public final void m30116a(@NonNull C10743j jVar, int i) {
        View view = jVar.f24497a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m30115a(@NonNull C10743j jVar, @NonNull StaticNativeAd staticNativeAd) {
        NativeRendererHelper.addTextView(jVar.f24498b, staticNativeAd.getTitle());
        NativeRendererHelper.addTextView(jVar.f24499c, staticNativeAd.getText());
        NativeRendererHelper.addTextView(jVar.f24500d, staticNativeAd.getCallToAction());
        NativeImageHelper.loadImageView(staticNativeAd.getMainImageUrl(), jVar.f24501e);
        NativeImageHelper.loadImageView(staticNativeAd.getIconImageUrl(), jVar.f24502f);
        NativeRendererHelper.addPrivacyInformationIcon(jVar.f24503g, staticNativeAd.getPrivacyInformationIconImageUrl(), staticNativeAd.getPrivacyInformationIconClickThroughUrl());
        NativeRendererHelper.addSponsoredView(staticNativeAd.getSponsored(), jVar.f24504h);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f9173a.f9302a, viewGroup, false);
    }

    public void renderAdView(@NonNull View view, @NonNull StaticNativeAd staticNativeAd) {
        C10743j jVar = this.f9174b.get(view);
        C10743j jVar2 = jVar;
        if (jVar == null) {
            jVar2 = C10743j.m10748a(view, this.f9173a);
            this.f9174b.put(view, jVar2);
        }
        m30115a(jVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(jVar2.f24497a, this.f9173a.f9310i, staticNativeAd.getExtras());
        m30116a(jVar2, 0);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}
