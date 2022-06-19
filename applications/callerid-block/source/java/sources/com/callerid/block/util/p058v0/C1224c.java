package com.callerid.block.util.p058v0;

import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.callerid.block.R$id;
import com.google.android.gms.ads.nativead.AbstractC1487a;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAdView;
/* renamed from: com.callerid.block.util.v0.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/v0/c.class */
public class C1224c {
    /* renamed from: a */
    public void m9532a(AbstractC1487a abstractC1487a, NativeAdView nativeAdView) {
        nativeAdView.setMediaView((MediaView) nativeAdView.findViewById(R$id.ad_media));
        nativeAdView.setHeadlineView(nativeAdView.findViewById(R$id.ad_headline));
        nativeAdView.setBodyView(nativeAdView.findViewById(R$id.ad_body));
        nativeAdView.setCallToActionView(nativeAdView.findViewById(R$id.ad_call_to_action));
        nativeAdView.setIconView(nativeAdView.findViewById(R$id.ad_app_icon));
        nativeAdView.setPriceView(nativeAdView.findViewById(R$id.ad_price));
        nativeAdView.setStarRatingView(nativeAdView.findViewById(R$id.ad_stars));
        nativeAdView.setStoreView(nativeAdView.findViewById(R$id.ad_store));
        nativeAdView.setAdvertiserView(nativeAdView.findViewById(R$id.ad_advertiser));
        ((TextView) nativeAdView.getHeadlineView()).setText(abstractC1487a.m8612d());
        if (abstractC1487a.m8614b() == null) {
            nativeAdView.getBodyView().setVisibility(4);
        } else {
            nativeAdView.getBodyView().setVisibility(0);
            ((TextView) nativeAdView.getBodyView()).setText(abstractC1487a.m8614b());
        }
        if (abstractC1487a.m8613c() == null) {
            nativeAdView.getCallToActionView().setVisibility(4);
        } else {
            nativeAdView.getCallToActionView().setVisibility(0);
            ((Button) nativeAdView.getCallToActionView()).setText(abstractC1487a.m8613c());
        }
        if (abstractC1487a.m8611e() == null) {
            nativeAdView.getIconView().setVisibility(8);
        } else {
            ((ImageView) nativeAdView.getIconView()).setImageDrawable(abstractC1487a.m8611e().m8605a());
            nativeAdView.getIconView().setVisibility(0);
        }
        nativeAdView.setNativeAd(abstractC1487a);
    }
}
