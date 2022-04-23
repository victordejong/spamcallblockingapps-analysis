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
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.ArrayList;
/* renamed from: c.b.b.e */
/* loaded from: classes-dex2jar.jar:c/b/b/e.class */
public class C2446e extends UnifiedNativeAdMapper {

    /* renamed from: s */
    public AppLovinNativeAd f9394s;

    public C2446e(Context context, AppLovinNativeAd appLovinNativeAd) {
        this.f9394s = appLovinNativeAd;
        setHeadline(appLovinNativeAd.getTitle());
        setBody(this.f9394s.getDescriptionText());
        setCallToAction(this.f9394s.getCtaText());
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ArrayList arrayList = new ArrayList(1);
        Uri parse = Uri.parse(this.f9394s.getImageUrl());
        Drawable createFromPath = Drawable.createFromPath(parse.getPath());
        Uri parse2 = Uri.parse(this.f9394s.getIconUrl());
        Drawable createFromPath2 = Drawable.createFromPath(parse2.getPath());
        AppLovinNativeAdImage appLovinNativeAdImage = new AppLovinNativeAdImage(parse, createFromPath);
        NativeAd.Image appLovinNativeAdImage2 = new AppLovinNativeAdImage(parse2, createFromPath2);
        arrayList.add(appLovinNativeAdImage);
        setImages(arrayList);
        setIcon(appLovinNativeAdImage2);
        imageView.setImageDrawable(createFromPath);
        setMediaView(imageView);
        int intrinsicHeight = createFromPath.getIntrinsicHeight();
        if (intrinsicHeight > 0) {
            setMediaContentAspectRatio(createFromPath.getIntrinsicWidth() / intrinsicHeight);
        }
        setStarRating(Double.valueOf(this.f9394s.getStarRating()));
        Bundle bundle = new Bundle();
        bundle.putLong(AppLovinNativeAdapter.KEY_EXTRA_AD_ID, this.f9394s.getAdId());
        bundle.putString(AppLovinNativeAdapter.KEY_EXTRA_CAPTION_TEXT, this.f9394s.getCaptionText());
        setExtras(bundle);
        setOverrideClickHandling(false);
        setOverrideImpressionRecording(false);
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void handleClick(View view) {
        this.f9394s.launchClickTarget(view.getContext());
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void recordImpression() {
        this.f9394s.trackImpression();
    }
}
