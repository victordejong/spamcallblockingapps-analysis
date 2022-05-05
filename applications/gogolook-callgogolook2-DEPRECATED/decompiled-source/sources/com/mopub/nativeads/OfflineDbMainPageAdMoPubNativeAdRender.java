package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.AppierNative;
import com.mopub.nativeads.FacebookNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.List;
import java.util.WeakHashMap;
import p081h.p160h.p161a.p170p.C6270b;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p622k.p623a.p624a.p625a.C14698a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/OfflineDbMainPageAdMoPubNativeAdRender.class */
public class OfflineDbMainPageAdMoPubNativeAdRender implements MoPubAdRenderer<StaticNativeAd> {
    @NonNull

    /* renamed from: a */
    public final C6289b f9252a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, C6287a> f9253b = new WeakHashMap<>();

    /* renamed from: com.mopub.nativeads.OfflineDbMainPageAdMoPubNativeAdRender$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/OfflineDbMainPageAdMoPubNativeAdRender$a.class */
    public static final class View$OnClickListenerC4008a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9254a;

        /* renamed from: b */
        public final /* synthetic */ String f9255b;

        public View$OnClickListenerC4008a(Context context, String str) {
            this.f9254a = context;
            this.f9255b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9254a, this.f9255b);
        }
    }

    /* renamed from: com.mopub.nativeads.OfflineDbMainPageAdMoPubNativeAdRender$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/OfflineDbMainPageAdMoPubNativeAdRender$b.class */
    public class View$OnClickListenerC4009b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9256a;

        public View$OnClickListenerC4009b(OfflineDbMainPageAdMoPubNativeAdRender offlineDbMainPageAdMoPubNativeAdRender, UnifiedNativeAdView unifiedNativeAdView) {
            this.f9256a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9256a.getCallToActionView().performClick();
        }
    }

    public OfflineDbMainPageAdMoPubNativeAdRender(@NonNull C6289b bVar) {
        this.f9252a = bVar;
    }

    public static void addPrivacyInformationIcon(ImageView imageView, int i, String str) {
        if (imageView == null) {
            return;
        }
        if (str == null) {
            imageView.setOnClickListener(null);
            imageView.setClickable(false);
            imageView.setImageResource(i);
            return;
        }
        Context context = imageView.getContext();
        if (context != null) {
            imageView.setImageResource(i);
            imageView.setOnClickListener(new View$OnClickListenerC4008a(context, str));
            imageView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m30090a(@NonNull C6287a aVar) {
        TextView textView = aVar.f15569d;
        if (textView != null) {
            textView.setVisibility(0);
        }
        TextView textView2 = aVar.f15567b;
        if (textView2 != null) {
            textView2.setPadding(0, 0, 0, 0);
        }
        TextView textView3 = aVar.f15568c;
        if (textView3 != null) {
            textView3.setPadding(0, 0, 0, 0);
        }
    }

    /* renamed from: a */
    public final void m30089a(@NonNull C6287a aVar, int i) {
        View view = aVar.f15566a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m30088a(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        if (staticNativeAd instanceof AdMobCustomEvent.AdMobStaticNativeAd) {
            m30087a(aVar, (AdMobCustomEvent.AdMobStaticNativeAd) staticNativeAd);
            return;
        }
        NativeRendererHelper.addTextView(aVar.f15567b, staticNativeAd.getTitle());
        NativeRendererHelper.addTextView(aVar.f15568c, staticNativeAd.getText());
        if (!TextUtils.isEmpty(staticNativeAd.getCallToAction())) {
            NativeRendererHelper.addTextView(aVar.f15569d, staticNativeAd.getCallToAction());
        } else {
            NativeRendererHelper.addTextView(aVar.f15569d, C6272d.m23415g());
        }
        C6272d.m23426a(staticNativeAd.getMainImageUrl(), aVar.f15570e, true, true, 4, C14698a.EnumC14700b.TOP, null);
        View view = aVar.f15566a;
        if (view != null) {
            ImageView imageView = (ImageView) view.findViewById(R$id.iv_privacy);
            m30090a(aVar);
            FrameLayout frameLayout = (FrameLayout) aVar.f15566a.findViewById(R$id.fl_fb_ad_choice_container);
            ((TextView) aVar.f15566a.findViewById(R$id.tv_sponsored)).setText(C6272d.m23413i());
            if (staticNativeAd instanceof FlurryStaticNativeAd) {
                addPrivacyInformationIcon(imageView, 2131230831, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                frameLayout.setVisibility(8);
                imageView.setVisibility(0);
            } else if (staticNativeAd instanceof FacebookNative.C3953c) {
                ImageView imageView2 = aVar.f15570e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
                MediaView mediaView = null;
                View view2 = aVar.f15566a;
                if (view2 != null) {
                    mediaView = FacebookNative.C3952b.m30181a(view2.getContext(), aVar.f15566a, R$id.v_video);
                }
                FacebookNative.C3953c cVar = (FacebookNative.C3953c) staticNativeAd;
                SdkUtilsAdRenderer.setupFbAdContainer(cVar.getNativeAd(), aVar, frameLayout, false, true, mediaView, null, cVar.getUnclickableAreas());
                imageView.setVisibility(8);
                frameLayout.setVisibility(0);
            } else if (staticNativeAd instanceof MoPubCustomEventNative.C3966b) {
                addPrivacyInformationIcon(imageView, 2131230832, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                frameLayout.setVisibility(8);
                imageView.setVisibility(0);
            } else if (staticNativeAd instanceof AppierNative.C3931a) {
                AppierNative.C3931a aVar2 = (AppierNative.C3931a) staticNativeAd;
                C6270b.m23440a(imageView, aVar2.getPrivacyInformationIconImageUrl(), aVar2.getPrivacyInformationIconClickThroughUrl());
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
            } else if (staticNativeAd instanceof CriteoCustomEventNative.CriteoStaticNativeAd) {
                CriteoCustomEventNative.CriteoStaticNativeAd criteoStaticNativeAd = (CriteoCustomEventNative.CriteoStaticNativeAd) staticNativeAd;
                criteoStaticNativeAd.renderNativeView(aVar.f15566a);
                if (imageView != null) {
                    CriteoUtils.setAdChoiceView(criteoStaticNativeAd, imageView);
                }
            } else {
                frameLayout.setVisibility(8);
                imageView.setVisibility(8);
            }
        }
    }

    /* renamed from: a */
    public final void m30087a(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        UnifiedNativeAdView unifiedNativeAdView;
        ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
        if (viewStub != null) {
            View findViewById = aVar.f15566a.findViewById(R$id.ll_whole);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.offline_db_main_page_ad_admob_unified);
                View inflate = viewStub.inflate();
                if (inflate != null && (unifiedNativeAdView = (UnifiedNativeAdView) inflate.findViewById(R$id.unadv)) != null) {
                    TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
                    NativeRendererHelper.addTextView(textView, adMobStaticNativeAd.getTitle());
                    unifiedNativeAdView.setHeadlineView(textView);
                    TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content);
                    NativeRendererHelper.addTextView(textView2, adMobStaticNativeAd.getText());
                    unifiedNativeAdView.setBodyView(textView2);
                    TextView textView3 = (TextView) inflate.findViewById(R$id.tv_cta_btn);
                    NativeRendererHelper.addTextView(textView3, adMobStaticNativeAd.getCallToAction());
                    unifiedNativeAdView.setCallToActionView(textView3);
                    ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_ad_icon);
                    if (!(imageView == null || unifiedNativeAd.getIcon() == null)) {
                        imageView.setImageDrawable(unifiedNativeAd.getIcon().getDrawable());
                        unifiedNativeAdView.setIconView(imageView);
                    }
                    ImageView imageView2 = (ImageView) inflate.findViewById(R$id.iv_ad);
                    List<NativeAd.Image> images = unifiedNativeAd.getImages();
                    if (!(imageView2 == null || images.size() <= 0 || images.get(0) == null)) {
                        imageView2.setImageDrawable(images.get(0).getDrawable());
                        unifiedNativeAdView.setImageView(imageView2);
                    }
                    RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.rl_main_ad_content);
                    if (relativeLayout != null) {
                        relativeLayout.setOnClickListener(new View$OnClickListenerC4009b(this, unifiedNativeAdView));
                    }
                    unifiedNativeAdView.setNativeAd(unifiedNativeAd);
                    ImageView imageView3 = (ImageView) inflate.findViewById(R$id.iv_privacy);
                    if (imageView3 != null) {
                        imageView3.setVisibility(8);
                    }
                    FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_fb_ad_choice_container);
                    if (frameLayout != null) {
                        frameLayout.setVisibility(8);
                    }
                    View findViewById2 = inflate.findViewById(R$id.v_adchoice_dummy);
                    if (findViewById2 != null) {
                        findViewById2.setVisibility(8);
                    }
                    TextView textView4 = (TextView) inflate.findViewById(R$id.tv_sponsored);
                    if (textView4 != null) {
                        textView4.setText(C6272d.m23413i());
                    }
                }
            }
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f9252a.f15575a, viewGroup, false);
    }

    public void destroy() {
        this.f9253b.clear();
    }

    public void renderAdView(@NonNull View view, @NonNull StaticNativeAd staticNativeAd) {
        C6287a aVar = this.f9253b.get(view);
        C6287a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C6287a.m23403a(view, this.f9252a);
            this.f9253b.put(view, aVar2);
        }
        m30088a(aVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(aVar2.f15566a, this.f9252a.f15584j, staticNativeAd.getExtras());
        m30089a(aVar2, 0);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}
