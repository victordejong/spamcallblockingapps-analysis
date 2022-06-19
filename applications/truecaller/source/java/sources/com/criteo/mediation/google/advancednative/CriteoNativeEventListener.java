package com.criteo.mediation.google.advancednative;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Keep;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.advancednative.AdChoiceOverlayNativeRenderer;
import com.criteo.publisher.advancednative.CriteoMediaView;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.criteo.publisher.advancednative.CriteoNativeRenderer;
import com.criteo.publisher.advancednative.RendererHelper;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener;
import java.lang.ref.WeakReference;
import java.util.Map;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1513a.p1514a.C22907e;
import p193e.p1512i.p1513a.p1514a.p1515b.C22901a;
import p193e.p1512i.p1513a.p1514a.p1515b.C22903c;
import p193e.p1512i.p1513a.p1514a.p1515b.C22904d;
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/google/advancednative/CriteoNativeEventListener.class */
public class CriteoNativeEventListener implements CriteoNativeAdListener {

    /* renamed from: c */
    public static final Object f2414c = new Object();

    /* renamed from: a */
    public final WeakReference<Context> f2415a;

    /* renamed from: b */
    public final CustomEventNativeListener f2416b;

    /* loaded from: classes-dex2jar.jar:com/criteo/mediation/google/advancednative/CriteoNativeEventListener$CriteoUnifiedNativeAdMapper.class */
    public static class CriteoUnifiedNativeAdMapper extends UnifiedNativeAdMapper {

        /* renamed from: a */
        public final CriteoNativeAd f2417a;
        @Keep
        private final CriteoNativeAdListener listener;

        public CriteoUnifiedNativeAdMapper(Context context, CriteoNativeAd criteoNativeAd, CriteoNativeAdListener criteoNativeAdListener) {
            this.listener = criteoNativeAdListener;
            setHeadline(criteoNativeAd.getTitle());
            setBody(criteoNativeAd.getDescription());
            setPrice(criteoNativeAd.getPrice());
            setCallToAction(criteoNativeAd.getCallToAction());
            setAdvertiser(criteoNativeAd.getAdvertiserDescription());
            Bundle bundle = new Bundle();
            bundle.putString("crtn_advdomain", criteoNativeAd.getAdvertiserDomain());
            setExtras(bundle);
            if (context != null) {
                C0892b c0892b = new C0892b(null);
                criteoNativeAd.setRenderer(new AdChoiceOverlayNativeRenderer(c0892b));
                View createNativeRenderedView = criteoNativeAd.createNativeRenderedView(context, null);
                setMediaView(c0892b.f2418a);
                setHasVideoContent(false);
                CriteoMediaView criteoMediaView = c0892b.f2419b;
                if (C22907e.m7632a(criteoMediaView)) {
                    setIcon(new C22901a(new C22903c(criteoMediaView.getImageView()), Uri.parse(criteoNativeAd.getAdvertiserLogoMedia().getImageUrl().toString())));
                }
                ImageView adChoiceView = criteoNativeAd.getAdChoiceView(createNativeRenderedView);
                if (C22907e.m7632a(adChoiceView)) {
                    adChoiceView.setTag(CriteoNativeEventListener.f2414c);
                    setAdChoicesContent(adChoiceView);
                }
            }
            setOverrideClickHandling(true);
            setOverrideImpressionRecording(true);
            this.f2417a = criteoNativeAd;
        }

        @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
        public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
            this.f2417a.setRenderer(new AdChoiceOverlayNativeRenderer(new C22904d()));
            this.f2417a.renderNativeView(view);
            View findViewWithTag = view.findViewWithTag(CriteoNativeEventListener.f2414c);
            if (findViewWithTag != null) {
                this.f2417a.setAdChoiceClickableView(findViewWithTag);
            }
        }
    }

    /* renamed from: com.criteo.mediation.google.advancednative.CriteoNativeEventListener$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/mediation/google/advancednative/CriteoNativeEventListener$b.class */
    public static class C0892b implements CriteoNativeRenderer {

        /* renamed from: a */
        public CriteoMediaView f2418a;

        /* renamed from: b */
        public CriteoMediaView f2419b;

        public C0892b(C0891a c0891a) {
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
        public View createNativeView(Context context, ViewGroup viewGroup) {
            this.f2418a = new CriteoMediaView(context);
            this.f2419b = new CriteoMediaView(context);
            return new View(context);
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
        public void renderNativeView(RendererHelper rendererHelper, View view, CriteoNativeAd criteoNativeAd) {
            if (C22907e.m7632a(this.f2418a)) {
                rendererHelper.setMediaInView(criteoNativeAd.getProductMedia(), this.f2418a);
            }
            if (C22907e.m7632a(this.f2419b)) {
                rendererHelper.setMediaInView(criteoNativeAd.getAdvertiserLogoMedia(), this.f2419b);
            }
        }
    }

    public CriteoNativeEventListener(Context context, CustomEventNativeListener customEventNativeListener) {
        this.f2415a = new WeakReference<>(context);
        this.f2416b = customEventNativeListener;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdClicked() {
        this.f2416b.onAdClicked();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdClosed() {
        this.f2416b.onAdClosed();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
        this.f2416b.onAdFailedToLoad(C26232y.m2374c(criteoErrorCode));
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdImpression() {
        this.f2416b.onAdImpression();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdLeftApplication() {
        this.f2416b.onAdOpened();
        this.f2416b.onAdLeftApplication();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdReceived(CriteoNativeAd criteoNativeAd) {
        this.f2416b.onAdLoaded(new CriteoUnifiedNativeAdMapper(this.f2415a.get(), criteoNativeAd, this));
    }
}
