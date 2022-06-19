package com.allinone.callerid.util.p202gg;

import android.widget.Button;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAdView;
import java.util.List;
/* renamed from: com.allinone.callerid.util.gg.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/d.class */
public class C3760d {
    /* renamed from: a */
    public static void m24325a(AbstractC5796a abstractC5796a, NativeAdView nativeAdView) {
        nativeAdView.setMediaView((MediaView) nativeAdView.findViewById(R$id.ad_media));
        nativeAdView.setHeadlineView(nativeAdView.findViewById(R$id.ad_headline));
        nativeAdView.setBodyView(nativeAdView.findViewById(R$id.ad_body));
        nativeAdView.setCallToActionView(nativeAdView.findViewById(R$id.ad_call_to_action));
        nativeAdView.setIconView(nativeAdView.findViewById(R$id.ad_app_icon));
        nativeAdView.setPriceView(nativeAdView.findViewById(R$id.ad_price));
        nativeAdView.setStarRatingView(nativeAdView.findViewById(R$id.ad_stars));
        nativeAdView.setStoreView(nativeAdView.findViewById(R$id.ad_store));
        nativeAdView.setAdvertiserView(nativeAdView.findViewById(R$id.ad_advertiser));
        ((TextView) nativeAdView.getHeadlineView()).setText(abstractC5796a.mo10056d());
        ((TextView) nativeAdView.getBodyView()).setText(abstractC5796a.mo10058b());
        ((Button) nativeAdView.getCallToActionView()).setText(abstractC5796a.mo10057c());
        if (abstractC5796a.mo10055e() == null) {
            nativeAdView.getIconView().setVisibility(8);
            List<AbstractC5796a.AbstractC5798b> mo10054f = abstractC5796a.mo10054f();
            if (mo10054f != null && mo10054f.size() > 0) {
                ((ImageView) nativeAdView.getIconView()).setImageDrawable(mo10054f.get(0).mo10375a());
                nativeAdView.getIconView().setVisibility(0);
            }
        } else {
            ((ImageView) nativeAdView.getIconView()).setImageDrawable(abstractC5796a.mo10055e().mo10375a());
            nativeAdView.getIconView().setVisibility(0);
        }
        if (abstractC5796a.mo10053g() == null) {
            nativeAdView.getPriceView().setVisibility(8);
        } else {
            nativeAdView.getPriceView().setVisibility(0);
            ((TextView) nativeAdView.getPriceView()).setText(abstractC5796a.mo10053g());
        }
        if (abstractC5796a.mo10051i() == null) {
            nativeAdView.getStoreView().setVisibility(8);
        } else {
            nativeAdView.getStoreView().setVisibility(0);
            ((TextView) nativeAdView.getStoreView()).setText(abstractC5796a.mo10051i());
        }
        if (abstractC5796a.mo10052h() == null) {
            nativeAdView.getStarRatingView().setVisibility(4);
        } else {
            ((RatingBar) nativeAdView.getStarRatingView()).setRating(abstractC5796a.mo10052h().floatValue());
            nativeAdView.getStarRatingView().setVisibility(0);
        }
        if (abstractC5796a.mo10059a() == null) {
            nativeAdView.getAdvertiserView().setVisibility(4);
        } else {
            ((TextView) nativeAdView.getAdvertiserView()).setText(abstractC5796a.mo10059a());
            nativeAdView.getAdvertiserView().setVisibility(0);
        }
        nativeAdView.setNativeAd(abstractC5796a);
    }
}
