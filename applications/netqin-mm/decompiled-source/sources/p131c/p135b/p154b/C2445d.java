package p131c.p135b.p154b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.applovin.mediation.AppLovinNativeAdImage;
import com.applovin.mediation.AppLovinNativeAdapter;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import java.util.ArrayList;
/* renamed from: c.b.b.d */
/* loaded from: classes-dex2jar.jar:c/b/b/d.class */
public class C2445d extends NativeAppInstallAdMapper {

    /* renamed from: p */
    public AppLovinNativeAd f9393p;

    public C2445d(AppLovinNativeAd appLovinNativeAd, Context context) {
        this.f9393p = appLovinNativeAd;
        setHeadline(appLovinNativeAd.getTitle());
        setBody(appLovinNativeAd.getDescriptionText());
        setCallToAction(appLovinNativeAd.getCtaText());
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ArrayList arrayList = new ArrayList(1);
        Uri parse = Uri.parse(appLovinNativeAd.getImageUrl());
        Drawable createFromPath = Drawable.createFromPath(parse.getPath());
        Uri parse2 = Uri.parse(appLovinNativeAd.getIconUrl());
        Drawable createFromPath2 = Drawable.createFromPath(parse2.getPath());
        AppLovinNativeAdImage appLovinNativeAdImage = new AppLovinNativeAdImage(parse, createFromPath);
        NativeAd.Image appLovinNativeAdImage2 = new AppLovinNativeAdImage(parse2, createFromPath2);
        arrayList.add(appLovinNativeAdImage);
        setImages(arrayList);
        setIcon(appLovinNativeAdImage2);
        imageView.setImageDrawable(createFromPath);
        setMediaView(imageView);
        setStarRating(appLovinNativeAd.getStarRating());
        Bundle bundle = new Bundle();
        bundle.putLong(AppLovinNativeAdapter.KEY_EXTRA_AD_ID, appLovinNativeAd.getAdId());
        bundle.putString(AppLovinNativeAdapter.KEY_EXTRA_CAPTION_TEXT, appLovinNativeAd.getCaptionText());
        setExtras(bundle);
        setOverrideClickHandling(false);
        setOverrideImpressionRecording(false);
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void handleClick(View view) {
        this.f9393p.launchClickTarget(view.getContext());
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void recordImpression() {
        this.f9393p.trackImpression();
    }
}
