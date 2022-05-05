package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.nativeads.AppierNative;
import p081h.p115c.p116a.C5716a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AppierNativeAdRenderer.class */
public class AppierNativeAdRenderer implements MoPubAdRenderer<AppierNative.C3931a> {
    @NonNull

    /* renamed from: a */
    public final ViewBinder f9007a;

    public AppierNativeAdRenderer(@NonNull ViewBinder viewBinder) {
        this.f9007a = viewBinder;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        C5716a.m24661a("[Appier Mediation]", "AppierNativeAdRenderer.createAdView()");
        return LayoutInflater.from(context).inflate(this.f9007a.f9302a, viewGroup, false);
    }

    public void renderAdView(@NonNull View view, @NonNull AppierNative.C3931a aVar) {
        C5716a.m24661a("[Appier Mediation]", "AppierNativeAdRenderer.renderAdView()");
        TextView textView = (TextView) view.findViewById(this.f9007a.f9303b);
        TextView textView2 = (TextView) view.findViewById(this.f9007a.f9304c);
        Button button = (Button) view.findViewById(this.f9007a.f9305d);
        ImageView imageView = (ImageView) view.findViewById(this.f9007a.f9306e);
        ImageView imageView2 = (ImageView) view.findViewById(this.f9007a.f9307f);
        ImageView imageView3 = (ImageView) view.findViewById(this.f9007a.f9308g);
        if (textView != null) {
            NativeRendererHelper.addTextView(textView, aVar.getTitle());
        }
        if (textView2 != null) {
            NativeRendererHelper.addTextView(textView2, aVar.getText());
        }
        if (button != null) {
            NativeRendererHelper.addTextView(button, aVar.getCallToAction());
        }
        if (imageView != null) {
            NativeImageHelper.loadImageView(aVar.getMainImageUrl(), imageView);
        }
        if (imageView2 != null) {
            NativeImageHelper.loadImageView(aVar.getIconImageUrl(), imageView2);
        }
        if (imageView3 != null) {
            NativeRendererHelper.addPrivacyInformationIcon(imageView3, aVar.getPrivacyInformationIconImageUrl(), aVar.getPrivacyInformationIconClickThroughUrl());
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        boolean z = baseNativeAd instanceof AppierNative.C3931a;
        C5716a.m24661a("[Appier Mediation]", "AppierNativeAdRenderer.supports(), isSupport =", Boolean.valueOf(z));
        return z;
    }
}
