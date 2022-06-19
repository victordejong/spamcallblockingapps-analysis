package com.mopub.nativeads;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import com.google.android.gms.ads.formats.NativeContentAdView;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.GooglePlayServicesNative;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesAdRenderer.class */
public class GooglePlayServicesAdRenderer implements MoPubAdRenderer<GooglePlayServicesNative.C1172a> {
    public static final String VIEW_BINDER_KEY_ADVERTISER = "key_advertiser";
    public static final String VIEW_BINDER_KEY_AD_CHOICES_ICON_CONTAINER = "ad_choices_container";
    public static final String VIEW_BINDER_KEY_PRICE = "key_price";
    public static final String VIEW_BINDER_KEY_STAR_RATING = "key_star_rating";
    public static final String VIEW_BINDER_KEY_STORE = "key_store";

    /* renamed from: c */
    public static int f5099c;

    /* renamed from: d */
    public static int f5100d;

    /* renamed from: a */
    public final ViewBinder f5101a;

    /* renamed from: b */
    public final WeakHashMap<View, C1171a> f5102b = new WeakHashMap<>();

    /* renamed from: com.mopub.nativeads.GooglePlayServicesAdRenderer$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesAdRenderer$a.class */
    public static class C1171a {

        /* renamed from: m */
        public static final C1171a f5103m = new C1171a();

        /* renamed from: a */
        public View f5104a;

        /* renamed from: b */
        public TextView f5105b;

        /* renamed from: c */
        public TextView f5106c;

        /* renamed from: d */
        public TextView f5107d;

        /* renamed from: e */
        public ImageView f5108e;

        /* renamed from: f */
        public ImageView f5109f;

        /* renamed from: g */
        public ImageView f5110g;

        /* renamed from: h */
        public TextView f5111h;

        /* renamed from: i */
        public TextView f5112i;

        /* renamed from: j */
        public TextView f5113j;

        /* renamed from: k */
        public TextView f5114k;

        /* renamed from: l */
        public FrameLayout f5115l;

        public static C1171a fromViewBinder(View view, ViewBinder viewBinder) {
            C1171a c1171a = new C1171a();
            c1171a.f5104a = view;
            try {
                c1171a.f5105b = (TextView) view.findViewById(viewBinder.f5285b);
                c1171a.f5106c = (TextView) view.findViewById(viewBinder.f5286c);
                c1171a.f5107d = (TextView) view.findViewById(viewBinder.f5287d);
                c1171a.f5108e = (ImageView) view.findViewById(viewBinder.f5288e);
                c1171a.f5109f = (ImageView) view.findViewById(viewBinder.f5289f);
                c1171a.f5110g = (ImageView) view.findViewById(viewBinder.f5290g);
                Map<String, Integer> map = viewBinder.f5292i;
                Integer num = map.get(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STAR_RATING);
                if (num != null) {
                    c1171a.f5111h = (TextView) view.findViewById(num.intValue());
                }
                Integer num2 = map.get(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_ADVERTISER);
                if (num2 != null) {
                    c1171a.f5112i = (TextView) view.findViewById(num2.intValue());
                }
                Integer num3 = map.get(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STORE);
                if (num3 != null) {
                    c1171a.f5113j = (TextView) view.findViewById(num3.intValue());
                }
                Integer num4 = map.get(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_PRICE);
                if (num4 != null) {
                    c1171a.f5114k = (TextView) view.findViewById(num4.intValue());
                }
                Integer num5 = map.get(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_AD_CHOICES_ICON_CONTAINER);
                if (num5 != null) {
                    c1171a.f5115l = (FrameLayout) view.findViewById(num5.intValue());
                }
                return c1171a;
            } catch (ClassCastException e) {
                MoPubLog.m3856w("Could not cast from id in ViewBinder to expected View type", e);
                return f5103m;
            }
        }
    }

    public GooglePlayServicesAdRenderer(ViewBinder viewBinder) {
        this.f5101a = viewBinder;
        if (f5099c == 0) {
            f5099c = oe1.m1083h(CredentialsApi.ACTIVITY_RESULT_OTHER_ACCOUNT);
        }
        if (f5100d == 0) {
            f5100d = oe1.m1083h(CredentialsApi.ACTIVITY_RESULT_NO_HINTS_AVAILABLE);
        }
    }

    /* renamed from: a */
    public static void m3374a(NativeAdView nativeAdView, View view, boolean z) {
        if (!(view instanceof FrameLayout) || view.getId() != f5099c) {
            Log.w("MoPubToAdMobNative", "Couldn't add Google native ad view. Wrapping view not found.");
            return;
        }
        nativeAdView.setId(f5100d);
        FrameLayout frameLayout = (FrameLayout) view;
        View childAt = frameLayout.getChildAt(0);
        if (z) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.setMargins(layoutParams2.leftMargin, layoutParams2.topMargin, layoutParams2.rightMargin, layoutParams2.bottomMargin);
            nativeAdView.setLayoutParams(layoutParams);
            layoutParams2.setMargins(0, 0, 0, 0);
        } else {
            nativeAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        }
        frameLayout.removeView(childAt);
        nativeAdView.addView(childAt);
        frameLayout.addView(nativeAdView);
    }

    /* renamed from: b */
    public static void m3373b(View view, boolean z) {
        View findViewById;
        if (!(view instanceof FrameLayout) || view.getId() != f5099c || (findViewById = view.findViewById(f5100d)) == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int indexOfChild = viewGroup.indexOfChild(findViewById);
        viewGroup.removeView(findViewById);
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        View childAt = viewGroup2.getChildAt(0);
        if (childAt != null) {
            if (z) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) findViewById.getLayoutParams();
                layoutParams.setMargins(layoutParams2.leftMargin, layoutParams2.topMargin, layoutParams2.rightMargin, layoutParams2.bottomMargin);
            }
            viewGroup2.removeView(childAt);
            viewGroup.addView(childAt, indexOfChild);
        }
        if (!(findViewById instanceof NativeAdView)) {
            return;
        }
        ((NativeAdView) findViewById).destroy();
    }

    /* renamed from: c */
    public final void m3372c(GooglePlayServicesNative.C1172a c1172a, C1171a c1171a, NativeAppInstallAdView nativeAppInstallAdView) {
        NativeRendererHelper.addTextView(c1171a.f5105b, c1172a.getTitle());
        nativeAppInstallAdView.setHeadlineView(c1171a.f5105b);
        NativeRendererHelper.addTextView(c1171a.f5106c, c1172a.getText());
        nativeAppInstallAdView.setBodyView(c1171a.f5106c);
        NativeRendererHelper.addTextView(c1171a.f5107d, c1172a.getCallToAction());
        nativeAppInstallAdView.setCallToActionView(c1171a.f5107d);
        NativeImageHelper.loadImageView(c1172a.getMainImageUrl(), c1171a.f5108e);
        nativeAppInstallAdView.setImageView(c1171a.f5108e);
        NativeImageHelper.loadImageView(c1172a.getIconImageUrl(), c1171a.f5109f);
        nativeAppInstallAdView.setIconView(c1171a.f5109f);
        if (c1172a.getStarRating() != null) {
            NativeRendererHelper.addTextView(c1171a.f5111h, String.format(Locale.getDefault(), "%.1f/5 Stars", c1172a.getStarRating()));
            nativeAppInstallAdView.setStarRatingView(c1171a.f5111h);
        }
        if (c1172a.getPrice() != null) {
            NativeRendererHelper.addTextView(c1171a.f5114k, c1172a.getPrice());
            nativeAppInstallAdView.setPriceView(c1171a.f5114k);
        }
        if (c1172a.getStore() != null) {
            NativeRendererHelper.addTextView(c1171a.f5113j, c1172a.getStore());
            nativeAppInstallAdView.setStoreView(c1171a.f5113j);
        }
        NativeRendererHelper.addPrivacyInformationIcon(c1171a.f5110g, null, null);
        if (c1171a.f5115l != null) {
            AdChoicesView adChoicesView = new AdChoicesView(nativeAppInstallAdView.getContext());
            c1171a.f5115l.removeAllViews();
            c1171a.f5115l.addView(adChoicesView);
            nativeAppInstallAdView.setAdChoicesView(adChoicesView);
        }
        nativeAppInstallAdView.setNativeAd(c1172a.getAppInstallAd());
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(this.f5101a.f5284a, viewGroup, false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(f5099c);
        frameLayout.addView(inflate);
        Log.i("MoPubToAdMobNative", "Ad view created.");
        return frameLayout;
    }

    /* renamed from: d */
    public final void m3371d(GooglePlayServicesNative.C1172a c1172a, C1171a c1171a, NativeContentAdView nativeContentAdView) {
        NativeRendererHelper.addTextView(c1171a.f5105b, c1172a.getTitle());
        nativeContentAdView.setHeadlineView(c1171a.f5105b);
        NativeRendererHelper.addTextView(c1171a.f5106c, c1172a.getText());
        nativeContentAdView.setBodyView(c1171a.f5106c);
        NativeRendererHelper.addTextView(c1171a.f5107d, c1172a.getCallToAction());
        nativeContentAdView.setCallToActionView(c1171a.f5107d);
        NativeImageHelper.loadImageView(c1172a.getMainImageUrl(), c1171a.f5108e);
        nativeContentAdView.setImageView(c1171a.f5108e);
        NativeImageHelper.loadImageView(c1172a.getIconImageUrl(), c1171a.f5109f);
        nativeContentAdView.setLogoView(c1171a.f5109f);
        if (c1172a.getAdvertiser() != null) {
            NativeRendererHelper.addTextView(c1171a.f5112i, c1172a.getAdvertiser());
            nativeContentAdView.setAdvertiserView(c1171a.f5112i);
        }
        if (c1171a.f5115l != null) {
            AdChoicesView adChoicesView = new AdChoicesView(nativeContentAdView.getContext());
            c1171a.f5115l.removeAllViews();
            c1171a.f5115l.addView(adChoicesView);
            nativeContentAdView.setAdChoicesView(adChoicesView);
        }
        NativeRendererHelper.addPrivacyInformationIcon(c1171a.f5110g, null, null);
        nativeContentAdView.setNativeAd(c1172a.getContentAd());
    }

    public void renderAdView(View view, GooglePlayServicesNative.C1172a c1172a) {
        C1171a c1171a = this.f5102b.get(view);
        C1171a c1171a2 = c1171a;
        if (c1171a == null) {
            c1171a2 = C1171a.fromViewBinder(view, this.f5101a);
            this.f5102b.put(view, c1171a2);
        }
        m3373b(view, c1172a.shouldSwapMargins());
        NativeAppInstallAdView nativeAppInstallAdView = null;
        if (c1172a.isNativeAppInstallAd()) {
            nativeAppInstallAdView = new NativeAppInstallAdView(view.getContext());
            m3372c(c1172a, c1171a2, nativeAppInstallAdView);
        } else if (c1172a.isNativeContentAd()) {
            nativeAppInstallAdView = new NativeContentAdView(view.getContext());
            m3371d(c1172a, c1171a2, nativeAppInstallAdView);
        }
        if (nativeAppInstallAdView != null) {
            m3374a(nativeAppInstallAdView, view, c1172a.shouldSwapMargins());
        } else {
            Log.w("MoPubToAdMobNative", "Couldn't add Google native ad view. NativeAdView is null.");
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        return baseNativeAd instanceof GooglePlayServicesNative.C1172a;
    }
}
