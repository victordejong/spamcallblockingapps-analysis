package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.ads.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.nativeads.AppierNative;
import com.mopub.nativeads.BaseNativeAdRenderer;
import com.mopub.nativeads.FacebookNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.p074ad.AdRendererUtils;
import java.util.List;
import p081h.p160h.p161a.p170p.C6270b;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p622k.p623a.p624a.p625a.C14698a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/OfflineDBNativeAdRenderer.class */
public class OfflineDBNativeAdRenderer extends BaseNativeAdRenderer {

    /* renamed from: com.mopub.nativeads.OfflineDBNativeAdRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/OfflineDBNativeAdRenderer$a.class */
    public class View$OnClickListenerC4005a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C6287a f9247a;

        public View$OnClickListenerC4005a(C6287a aVar) {
            this.f9247a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RelativeLayout relativeLayout = (RelativeLayout) this.f9247a.f15566a.findViewById(R$id.ll_nativeAd);
            if (relativeLayout != null) {
                OfflineDBNativeAdRenderer.this.setViewVisibility(this.f9247a, 8);
                AdRendererUtils.m28852a(relativeLayout);
            }
            BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener = OfflineDBNativeAdRenderer.this.adCustomActionListener;
            if (adCustomActionListener != null) {
                adCustomActionListener.onAdClosed();
            }
        }
    }

    /* renamed from: com.mopub.nativeads.OfflineDBNativeAdRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/OfflineDBNativeAdRenderer$b.class */
    public static final class View$OnClickListenerC4006b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9249a;

        /* renamed from: b */
        public final /* synthetic */ String f9250b;

        public View$OnClickListenerC4006b(Context context, String str) {
            this.f9249a = context;
            this.f9250b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9249a, this.f9250b);
        }
    }

    /* renamed from: com.mopub.nativeads.OfflineDBNativeAdRenderer$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/OfflineDBNativeAdRenderer$c.class */
    public class View$OnClickListenerC4007c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9251a;

        public View$OnClickListenerC4007c(OfflineDBNativeAdRenderer offlineDBNativeAdRenderer, UnifiedNativeAdView unifiedNativeAdView) {
            this.f9251a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9251a.getCallToActionView().performClick();
        }
    }

    public OfflineDBNativeAdRenderer(@NonNull C6289b bVar, String str) {
        super(bVar, str);
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
            imageView.setOnClickListener(new View$OnClickListenerC4006b(context, str));
            imageView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m30091a(C6287a aVar) {
        ImageView imageView = (ImageView) aVar.f15566a.findViewById(R$id.iv_ad_inner_close);
        if (imageView != null) {
            imageView.setOnClickListener(new View$OnClickListenerC4005a(aVar));
        }
    }

    @Override // com.mopub.nativeads.BaseNativeAdRenderer
    public void renderAdView(@NonNull View view, @NonNull StaticNativeAd staticNativeAd) {
        C6287a aVar = m30209d().get(view);
        C6287a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C6287a.m23403a(view, m30210c());
            m30209d().put(view, aVar2);
        }
        setViewVisibility(aVar2, 4);
        update(aVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(aVar2.f15566a, m30210c().f15584j, staticNativeAd.getExtras());
    }

    @Override // com.mopub.nativeads.BaseNativeAdRenderer
    public void update(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        MediaView mediaView;
        if (staticNativeAd instanceof AdMobCustomEvent.AdMobStaticNativeAd) {
            updateAdMobAd(aVar, (AdMobCustomEvent.AdMobStaticNativeAd) staticNativeAd);
            return;
        }
        NativeRendererHelper.addTextView(aVar.f15567b, staticNativeAd.getTitle());
        NativeRendererHelper.addTextView(aVar.f15568c, staticNativeAd.getText());
        String callToAction = staticNativeAd.getCallToAction();
        TextView textView = aVar.f15569d;
        if (TextUtils.isEmpty(callToAction)) {
            callToAction = C6272d.m23415g();
        }
        NativeRendererHelper.addTextView(textView, callToAction);
        View view = aVar.f15566a;
        if (view != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R$id.ll_nativeAd);
            String mainImageUrl = staticNativeAd.getMainImageUrl();
            boolean z = staticNativeAd instanceof FacebookNative.C3953c;
            if (z) {
                FrameLayout frameLayout = (FrameLayout) aVar.f15566a.findViewById(R$id.fl_fb_ad_choice_container);
                FacebookNative.C3953c cVar = (FacebookNative.C3953c) staticNativeAd;
                ImageView imageView = aVar.f15570e;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
                View view2 = aVar.f15566a;
                if (view2 != null) {
                    mediaView = FacebookNative.C3952b.m30181a(this.f9014b, view2, R$id.v_video);
                    if (relativeLayout != null) {
                        setViewVisibility(aVar, 0);
                        AdRendererUtils.m28848b(relativeLayout);
                    }
                } else {
                    mediaView = null;
                }
                SdkUtilsAdRenderer.setupFbAdContainer(cVar.getNativeAd(), aVar, frameLayout, false, true, mediaView, null, cVar.getUnclickableAreas());
            } else if (staticNativeAd instanceof FlurryStaticNativeAd) {
                FlurryStaticNativeAd flurryStaticNativeAd = (FlurryStaticNativeAd) staticNativeAd;
                if (flurryStaticNativeAd.isVideoAd()) {
                    ImageView imageView2 = aVar.f15570e;
                    if (imageView2 != null) {
                        imageView2.setVisibility(8);
                    }
                    View view3 = aVar.f15566a;
                    if (view3 != null) {
                        RelativeLayout relativeLayout2 = (RelativeLayout) view3.findViewById(R$id.v_video);
                        if (relativeLayout2 != null) {
                            relativeLayout2.removeAllViews();
                            relativeLayout2.setVisibility(0);
                            flurryStaticNativeAd.loadVideoIntoView(relativeLayout2);
                        }
                        if (relativeLayout != null) {
                            setViewVisibility(aVar, 0);
                            AdRendererUtils.m28848b(relativeLayout);
                        }
                    }
                } else {
                    C6272d.m23426a(mainImageUrl, aVar.f15570e, true, true, 4, C14698a.EnumC14700b.ALL, null);
                    if (relativeLayout != null) {
                        setViewVisibility(aVar, 0);
                        AdRendererUtils.m28848b(relativeLayout);
                    }
                }
            } else {
                ImageView imageView3 = aVar.f15570e;
                if (imageView3 != null) {
                    C6272d.m23426a(mainImageUrl, imageView3, false, true, 4, C14698a.EnumC14700b.ALL, null);
                    if (relativeLayout != null) {
                        setViewVisibility(aVar, 0);
                        AdRendererUtils.m28848b(relativeLayout);
                    }
                }
            }
            setCloseButtonVisibility(aVar);
            m30091a(aVar);
            ImageView imageView4 = (ImageView) aVar.f15566a.findViewById(R$id.iv_privacy);
            FrameLayout frameLayout2 = (FrameLayout) aVar.f15566a.findViewById(R$id.fl_fb_ad_choice_container);
            ((TextView) aVar.f15566a.findViewById(R$id.tv_sponsored)).setText(C6272d.m23413i());
            if (staticNativeAd instanceof FlurryStaticNativeAd) {
                addPrivacyInformationIcon(imageView4, 2131230831, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                imageView4.setVisibility(0);
                frameLayout2.setVisibility(8);
            } else if (z) {
                imageView4.setVisibility(8);
                frameLayout2.setVisibility(0);
            } else if (staticNativeAd instanceof MoPubCustomEventNative.C3966b) {
                addPrivacyInformationIcon(imageView4, 2131230832, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                imageView4.setVisibility(0);
                frameLayout2.setVisibility(8);
            } else if (staticNativeAd instanceof AppierNative.C3931a) {
                AppierNative.C3931a aVar2 = (AppierNative.C3931a) staticNativeAd;
                C6270b.m23440a(imageView4, aVar2.getPrivacyInformationIconImageUrl(), aVar2.getPrivacyInformationIconClickThroughUrl());
                if (frameLayout2 != null) {
                    frameLayout2.setVisibility(8);
                }
            } else if (staticNativeAd instanceof CriteoCustomEventNative.CriteoStaticNativeAd) {
                CriteoCustomEventNative.CriteoStaticNativeAd criteoStaticNativeAd = (CriteoCustomEventNative.CriteoStaticNativeAd) staticNativeAd;
                criteoStaticNativeAd.renderNativeView(aVar.f15566a);
                if (imageView4 != null) {
                    CriteoUtils.setAdChoiceView(criteoStaticNativeAd, imageView4);
                }
                setCloseButtonVisibility(aVar);
                m30091a(aVar);
            } else {
                imageView4.setVisibility(8);
                frameLayout2.setVisibility(8);
            }
        }
    }

    public final void updateAdMobAd(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
        if (viewStub != null) {
            View findViewById = aVar.f15566a.findViewById(R$id.ll_nativeAd);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.offline_db_update_ad_admob_unified);
                View inflate = viewStub.inflate();
                if (inflate != null) {
                    C6289b.C6290a aVar2 = new C6289b.C6290a(R$layout.offline_db_update_ad_admob_unified);
                    aVar2.m23394d(R$id.iv_ad);
                    aVar2.m23398b(R$id.iv_ad_icon);
                    aVar2.m23386h(R$id.tv_title);
                    aVar2.m23388g(R$id.tv_content);
                    aVar2.m23400a(R$id.tv_cta_btn);
                    aVar2.m23390f(R$id.iv_privacy);
                    aVar2.m23396c(R$id.iv_ad_inner_close);
                    C6287a a = C6287a.m23403a(inflate, aVar2.m23401a());
                    UnifiedNativeAdView unifiedNativeAdView = (UnifiedNativeAdView) a.f15566a.findViewById(R$id.unadv);
                    if (unifiedNativeAdView != null) {
                        NativeRendererHelper.addTextView(a.f15567b, adMobStaticNativeAd.getTitle());
                        unifiedNativeAdView.setHeadlineView(a.f15567b);
                        NativeRendererHelper.addTextView(a.f15568c, adMobStaticNativeAd.getText());
                        unifiedNativeAdView.setBodyView(a.f15568c);
                        NativeRendererHelper.addTextView(a.f15569d, adMobStaticNativeAd.getCallToAction());
                        unifiedNativeAdView.setCallToActionView(a.f15569d);
                        ImageView imageView = a.f15571f;
                        if (!(imageView == null || unifiedNativeAd.getIcon() == null)) {
                            imageView.setImageDrawable(unifiedNativeAd.getIcon().getDrawable());
                            unifiedNativeAdView.setIconView(imageView);
                        }
                        ImageView imageView2 = a.f15570e;
                        List<NativeAd.Image> images = unifiedNativeAd.getImages();
                        if (!(imageView2 == null || images.size() <= 0 || images.get(0) == null)) {
                            imageView2.setImageDrawable(images.get(0).getDrawable());
                            unifiedNativeAdView.setImageView(imageView2);
                        }
                        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.ll_nativeAd);
                        if (relativeLayout != null) {
                            relativeLayout.setOnClickListener(new View$OnClickListenerC4007c(this, unifiedNativeAdView));
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
                        TextView textView = (TextView) inflate.findViewById(R$id.tv_sponsored);
                        if (textView != null) {
                            textView.setText(C6272d.m23413i());
                        }
                        m30091a(a);
                        setCloseButtonVisibility(a);
                        if (relativeLayout != null) {
                            setViewVisibility(aVar, 0);
                            AdRendererUtils.m28848b(relativeLayout);
                        }
                    }
                }
            }
        }
    }
}
