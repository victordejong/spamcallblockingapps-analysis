package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.util.ads.AdSettings;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.GooglePlayServicesNative;
import com.mopub.nativeads.GooglePlayServicesViewBinder;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesAdRenderer.class */
public class GooglePlayServicesAdRenderer implements MoPubAdRenderer<GooglePlayServicesNative.AbstractC16925b> {
    public static final String VIEW_BINDER_KEY_STAR_RATING = "key_star_rating";

    /* renamed from: d */
    private static final String f59880d = "GooglePlayServicesAdRenderer";

    /* renamed from: a */
    private final AdSettings f59881a;

    /* renamed from: b */
    private final GooglePlayServicesViewBinder f59882b;

    /* renamed from: c */
    private final WeakHashMap<View, C16918a> f59883c;

    /* renamed from: com.mopub.nativeads.GooglePlayServicesAdRenderer$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesAdRenderer$a.class */
    public static final class C16918a {

        /* renamed from: m */
        private static final C16918a f59884m = new C16918a();

        /* renamed from: a */
        View f59885a;

        /* renamed from: b */
        TextView f59886b;

        /* renamed from: c */
        TextView f59887c;

        /* renamed from: d */
        TextView f59888d;

        /* renamed from: e */
        ImageView f59889e;

        /* renamed from: f */
        ImageView f59890f;

        /* renamed from: g */
        TextView f59891g;

        /* renamed from: h */
        TextView f59892h;

        /* renamed from: i */
        TextView f59893i;

        /* renamed from: j */
        TextView f59894j;

        /* renamed from: k */
        FrameLayout f59895k;

        /* renamed from: l */
        MediaView f59896l;

        private C16918a() {
        }

        public static C16918a fromViewBinder(View view, GooglePlayServicesViewBinder googlePlayServicesViewBinder) {
            C16918a c16918a = new C16918a();
            c16918a.f59885a = view;
            try {
                c16918a.f59886b = (TextView) view.findViewById(googlePlayServicesViewBinder.f59937c);
                c16918a.f59887c = (TextView) view.findViewById(googlePlayServicesViewBinder.f59938d);
                c16918a.f59888d = (TextView) view.findViewById(googlePlayServicesViewBinder.f59939e);
                c16918a.f59889e = (ImageView) view.findViewById(googlePlayServicesViewBinder.f59940f);
                c16918a.f59890f = (ImageView) view.findViewById(googlePlayServicesViewBinder.f59941g);
                c16918a.f59896l = (MediaView) view.findViewById(googlePlayServicesViewBinder.f59936b);
                Map<String, Integer> map = googlePlayServicesViewBinder.f59943i;
                Integer num = map.get(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STAR_RATING);
                if (num != null) {
                    c16918a.f59891g = (TextView) view.findViewById(num.intValue());
                }
                Integer num2 = map.get("key_advertiser");
                if (num2 != null) {
                    c16918a.f59892h = (TextView) view.findViewById(num2.intValue());
                }
                Integer num3 = map.get("key_store");
                if (num3 != null) {
                    c16918a.f59893i = (TextView) view.findViewById(num3.intValue());
                }
                Integer num4 = map.get("key_price");
                if (num4 != null) {
                    c16918a.f59894j = (TextView) view.findViewById(num4.intValue());
                }
                Integer num5 = map.get("ad_choices_container");
                if (num5 != null) {
                    c16918a.f59895k = (FrameLayout) view.findViewById(num5.intValue());
                }
                return c16918a;
            } catch (ClassCastException e) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Could not cast from id in ViewBinder to expected View type", e);
                return f59884m;
            }
        }
    }

    public GooglePlayServicesAdRenderer(GooglePlayServicesViewBinder googlePlayServicesViewBinder, AdSettings adSettings) {
        this.f59882b = googlePlayServicesViewBinder;
        this.f59883c = new WeakHashMap<>();
        this.f59881a = adSettings;
    }

    public GooglePlayServicesAdRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        this(new GooglePlayServicesViewBinder.Builder(viewBinder.f60117a).titleId(viewBinder.f60118b).textId(viewBinder.f60119c).callToActionId(viewBinder.f60120d).iconImageId(viewBinder.f60122f).privacyInformationIconImageId(viewBinder.f60123g).mediaLayoutId(viewBinder.f60121e).addExtras(viewBinder.f60125i).build(), adSettings);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(this.f59882b.f59935a, viewGroup, false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(1001);
        frameLayout.addView(inflate);
        View findViewById = frameLayout.findViewById(this.f59882b.f59936b);
        if (findViewById != null) {
            ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height);
            MediaView mediaView = new MediaView(context);
            ViewGroup viewGroup2 = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup2.indexOfChild(viewGroup2);
            mediaView.setId(this.f59882b.f59936b);
            viewGroup2.addView(mediaView, indexOfChild + 1, layoutParams2);
            viewGroup2.removeView(findViewById);
        }
        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, f59880d, "Ad view created.");
        return frameLayout;
    }

    public void renderAdView(View view, GooglePlayServicesNative.AbstractC16925b abstractC16925b) {
        C16918a c16918a = this.f59883c.get(view);
        C16918a c16918a2 = c16918a;
        if (c16918a == null) {
            c16918a2 = C16918a.fromViewBinder(view, this.f59882b);
            this.f59883c.put(view, c16918a2);
        }
        UnifiedNativeAdView unifiedNativeAdView = new UnifiedNativeAdView(view.getContext());
        MediaView mediaView = (MediaView) view.findViewById(this.f59882b.f59936b);
        if (mediaView != null) {
            unifiedNativeAdView.setMediaView(mediaView);
        }
        NativeRendererHelper.addTextView(c16918a2.f59886b, abstractC16925b.getTitle());
        unifiedNativeAdView.setHeadlineView(c16918a2.f59886b);
        NativeRendererHelper.addTextView(c16918a2.f59887c, abstractC16925b.getText());
        unifiedNativeAdView.setBodyView(c16918a2.f59887c);
        NativeRendererHelper.addTextView(c16918a2.f59888d, abstractC16925b.getCallToAction());
        unifiedNativeAdView.setCallToActionView(unifiedNativeAdView);
        NativeImageHelper.loadImageView(abstractC16925b.getIconImageUrl(), c16918a2.f59889e);
        unifiedNativeAdView.setImageView(c16918a2.f59889e);
        if (abstractC16925b.getAdvertiser() != null) {
            NativeRendererHelper.addTextView(c16918a2.f59892h, abstractC16925b.getAdvertiser());
            unifiedNativeAdView.setAdvertiserView(c16918a2.f59892h);
        }
        if (c16918a2.f59895k != null) {
            AdChoicesView adChoicesView = new AdChoicesView(unifiedNativeAdView.getContext());
            c16918a2.f59895k.removeAllViews();
            c16918a2.f59895k.addView(adChoicesView);
            unifiedNativeAdView.setAdChoicesView(adChoicesView);
        }
        NativeRendererHelper.addPrivacyInformationIcon(c16918a2.f59890f, null, null);
        unifiedNativeAdView.setNativeAd(abstractC16925b.getUnifiedNativeAd());
        boolean shouldSwapMargins = abstractC16925b.shouldSwapMargins();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        boolean z = true;
        String str = f59880d;
        MoPubLog.log(adapterLogEvent, str);
        if (!(view instanceof FrameLayout) || view.getId() != 1001) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, str, "Couldn't add Google native ad view. Wrapping view not found.");
        } else {
            unifiedNativeAdView.setId(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
            FrameLayout frameLayout = (FrameLayout) view;
            View childAt = frameLayout.getChildAt(0);
            View findViewById = childAt.findViewById(2131363106);
            FrameLayout frameLayout2 = frameLayout;
            View view2 = childAt;
            if (findViewById != null) {
                FrameLayout frameLayout3 = (FrameLayout) findViewById.getParent();
                frameLayout2 = frameLayout;
                view2 = childAt;
                if (frameLayout3 != null) {
                    view2 = findViewById;
                    frameLayout2 = frameLayout3;
                }
            }
            if (shouldSwapMargins) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view2.getLayoutParams();
                layoutParams.setMargins(layoutParams2.leftMargin, layoutParams2.topMargin, layoutParams2.rightMargin, layoutParams2.bottomMargin);
                unifiedNativeAdView.setLayoutParams(layoutParams);
                layoutParams2.setMargins(0, 0, 0, 0);
            } else {
                unifiedNativeAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            }
            frameLayout2.removeView(view2);
            unifiedNativeAdView.addView(view2);
            frameLayout2.addView(unifiedNativeAdView);
        }
        Boolean bool = (Boolean) abstractC16925b.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        abstractC16925b.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        AdSettings adSettings = this.f59881a;
        if (bool == null) {
            z = false;
        }
        CallAppMoPubStaticNativeAdRenderer.m6234a(view, adSettings, z);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        return baseNativeAd instanceof GooglePlayServicesNative.C16922a;
    }
}
