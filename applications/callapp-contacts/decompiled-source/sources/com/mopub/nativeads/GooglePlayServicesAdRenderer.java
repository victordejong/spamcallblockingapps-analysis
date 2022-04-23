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
public class GooglePlayServicesAdRenderer implements MoPubAdRenderer<GooglePlayServicesNative.b> {
    public static final String VIEW_BINDER_KEY_STAR_RATING = "key_star_rating";

    /* renamed from: d  reason: collision with root package name */
    private static final String f34508d = "GooglePlayServicesAdRenderer";

    /* renamed from: a  reason: collision with root package name */
    private final AdSettings f34509a;

    /* renamed from: b  reason: collision with root package name */
    private final GooglePlayServicesViewBinder f34510b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakHashMap<View, a> f34511c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesAdRenderer$a.class */
    public static final class a {
        private static final a m = new a();

        /* renamed from: a  reason: collision with root package name */
        View f34512a;

        /* renamed from: b  reason: collision with root package name */
        TextView f34513b;

        /* renamed from: c  reason: collision with root package name */
        TextView f34514c;

        /* renamed from: d  reason: collision with root package name */
        TextView f34515d;
        ImageView e;
        ImageView f;
        TextView g;
        TextView h;
        TextView i;
        TextView j;
        FrameLayout k;
        MediaView l;

        private a() {
        }

        public static a fromViewBinder(View view, GooglePlayServicesViewBinder googlePlayServicesViewBinder) {
            a aVar = new a();
            aVar.f34512a = view;
            try {
                aVar.f34513b = (TextView) view.findViewById(googlePlayServicesViewBinder.f34537c);
                aVar.f34514c = (TextView) view.findViewById(googlePlayServicesViewBinder.f34538d);
                aVar.f34515d = (TextView) view.findViewById(googlePlayServicesViewBinder.e);
                aVar.e = (ImageView) view.findViewById(googlePlayServicesViewBinder.f);
                aVar.f = (ImageView) view.findViewById(googlePlayServicesViewBinder.g);
                aVar.l = (MediaView) view.findViewById(googlePlayServicesViewBinder.f34536b);
                Map<String, Integer> map = googlePlayServicesViewBinder.i;
                Integer num = map.get(GooglePlayServicesAdRenderer.VIEW_BINDER_KEY_STAR_RATING);
                if (num != null) {
                    aVar.g = (TextView) view.findViewById(num.intValue());
                }
                Integer num2 = map.get("key_advertiser");
                if (num2 != null) {
                    aVar.h = (TextView) view.findViewById(num2.intValue());
                }
                Integer num3 = map.get("key_store");
                if (num3 != null) {
                    aVar.i = (TextView) view.findViewById(num3.intValue());
                }
                Integer num4 = map.get("key_price");
                if (num4 != null) {
                    aVar.j = (TextView) view.findViewById(num4.intValue());
                }
                Integer num5 = map.get("ad_choices_container");
                if (num5 != null) {
                    aVar.k = (FrameLayout) view.findViewById(num5.intValue());
                }
                return aVar;
            } catch (ClassCastException e) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Could not cast from id in ViewBinder to expected View type", e);
                return m;
            }
        }
    }

    public GooglePlayServicesAdRenderer(GooglePlayServicesViewBinder googlePlayServicesViewBinder, AdSettings adSettings) {
        this.f34510b = googlePlayServicesViewBinder;
        this.f34511c = new WeakHashMap<>();
        this.f34509a = adSettings;
    }

    public GooglePlayServicesAdRenderer(ViewBinder viewBinder, AdSettings adSettings) {
        this(new GooglePlayServicesViewBinder.Builder(viewBinder.f34654a).titleId(viewBinder.f34655b).textId(viewBinder.f34656c).callToActionId(viewBinder.f34657d).iconImageId(viewBinder.f).privacyInformationIconImageId(viewBinder.g).mediaLayoutId(viewBinder.e).addExtras(viewBinder.i).build(), adSettings);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(this.f34510b.f34535a, viewGroup, false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(1001);
        frameLayout.addView(inflate);
        View findViewById = frameLayout.findViewById(this.f34510b.f34536b);
        if (findViewById != null) {
            ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height);
            MediaView mediaView = new MediaView(context);
            ViewGroup viewGroup2 = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup2.indexOfChild(viewGroup2);
            mediaView.setId(this.f34510b.f34536b);
            viewGroup2.addView(mediaView, indexOfChild + 1, layoutParams2);
            viewGroup2.removeView(findViewById);
        }
        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, f34508d, "Ad view created.");
        return frameLayout;
    }

    public void renderAdView(View view, GooglePlayServicesNative.b bVar) {
        a aVar = this.f34511c.get(view);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = a.fromViewBinder(view, this.f34510b);
            this.f34511c.put(view, aVar2);
        }
        UnifiedNativeAdView unifiedNativeAdView = new UnifiedNativeAdView(view.getContext());
        MediaView mediaView = (MediaView) view.findViewById(this.f34510b.f34536b);
        if (mediaView != null) {
            unifiedNativeAdView.setMediaView(mediaView);
        }
        NativeRendererHelper.addTextView(aVar2.f34513b, bVar.getTitle());
        unifiedNativeAdView.setHeadlineView(aVar2.f34513b);
        NativeRendererHelper.addTextView(aVar2.f34514c, bVar.getText());
        unifiedNativeAdView.setBodyView(aVar2.f34514c);
        NativeRendererHelper.addTextView(aVar2.f34515d, bVar.getCallToAction());
        unifiedNativeAdView.setCallToActionView(unifiedNativeAdView);
        NativeImageHelper.loadImageView(bVar.getIconImageUrl(), aVar2.e);
        unifiedNativeAdView.setImageView(aVar2.e);
        if (bVar.getAdvertiser() != null) {
            NativeRendererHelper.addTextView(aVar2.h, bVar.getAdvertiser());
            unifiedNativeAdView.setAdvertiserView(aVar2.h);
        }
        if (aVar2.k != null) {
            AdChoicesView adChoicesView = new AdChoicesView(unifiedNativeAdView.getContext());
            aVar2.k.removeAllViews();
            aVar2.k.addView(adChoicesView);
            unifiedNativeAdView.setAdChoicesView(adChoicesView);
        }
        NativeRendererHelper.addPrivacyInformationIcon(aVar2.f, null, null);
        unifiedNativeAdView.setNativeAd(bVar.getUnifiedNativeAd());
        boolean shouldSwapMargins = bVar.shouldSwapMargins();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        boolean z = true;
        String str = f34508d;
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
        Boolean bool = (Boolean) bVar.getExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED);
        bVar.addExtra(CallAppMoPubStaticNativeAdRenderer.EXTRA_WAS_ANIMATED, Boolean.TRUE);
        AdSettings adSettings = this.f34509a;
        if (bool == null) {
            z = false;
        }
        CallAppMoPubStaticNativeAdRenderer.a(view, adSettings, z);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        return baseNativeAd instanceof GooglePlayServicesNative.a;
    }
}
