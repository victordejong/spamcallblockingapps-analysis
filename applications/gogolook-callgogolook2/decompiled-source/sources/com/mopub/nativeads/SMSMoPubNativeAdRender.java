package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
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
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.AotterTrekNative;
import com.mopub.nativeads.AppierNative;
import com.mopub.nativeads.FacebookNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AotterTrekUtils;
import java.util.List;
import java.util.WeakHashMap;
import p081h.p160h.p161a.p170p.C6270b;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p622k.p623a.p624a.p625a.C14698a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/SMSMoPubNativeAdRender.class */
public class SMSMoPubNativeAdRender implements MoPubAdRenderer<StaticNativeAd> {
    @NonNull

    /* renamed from: a */
    public final C6289b f9271a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, C6287a> f9272b = new WeakHashMap<>();

    /* renamed from: com.mopub.nativeads.SMSMoPubNativeAdRender$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/SMSMoPubNativeAdRender$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC4016a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f9273a;

        /* renamed from: b */
        public final /* synthetic */ TextView f9274b;

        public ViewTreeObserver$OnGlobalLayoutListenerC4016a(SMSMoPubNativeAdRender sMSMoPubNativeAdRender, TextView textView, TextView textView2) {
            this.f9273a = textView;
            this.f9274b = textView2;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f9273a.getLineCount() == 1) {
                this.f9274b.setVisibility(0);
            } else {
                this.f9274b.setVisibility(8);
            }
            this.f9273a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    /* renamed from: com.mopub.nativeads.SMSMoPubNativeAdRender$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/SMSMoPubNativeAdRender$b.class */
    public static final class View$OnClickListenerC4017b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9275a;

        /* renamed from: b */
        public final /* synthetic */ String f9276b;

        public View$OnClickListenerC4017b(Context context, String str) {
            this.f9275a = context;
            this.f9276b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9275a, this.f9276b);
        }
    }

    /* renamed from: com.mopub.nativeads.SMSMoPubNativeAdRender$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/SMSMoPubNativeAdRender$c.class */
    public class View$OnClickListenerC4018c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9277a;

        public View$OnClickListenerC4018c(SMSMoPubNativeAdRender sMSMoPubNativeAdRender, UnifiedNativeAdView unifiedNativeAdView) {
            this.f9277a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9277a.getCallToActionView().performClick();
        }
    }

    public SMSMoPubNativeAdRender(@NonNull C6289b bVar) {
        this.f9271a = bVar;
    }

    public static void addPrivacyInformationIcon(ImageView imageView, int i, String str) {
        if (imageView == null) {
            return;
        }
        if (str == null) {
            imageView.setOnClickListener(null);
            imageView.setImageResource(2131230830);
            return;
        }
        Context context = imageView.getContext();
        if (context != null) {
            imageView.setImageResource(i);
            imageView.setOnClickListener(new View$OnClickListenerC4017b(context, str));
            imageView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m30077a(@NonNull C6287a aVar, int i) {
        View view = aVar.f15566a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m30075a(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        UnifiedNativeAdView unifiedNativeAdView;
        ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
        if (viewStub != null) {
            View findViewById = aVar.f15566a.findViewById(R$id.rl_nativeAdView);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.sms_native_ad_admob_unified);
                View inflate = viewStub.inflate();
                if (inflate != null && (unifiedNativeAdView = (UnifiedNativeAdView) inflate.findViewById(R$id.unadv)) != null) {
                    TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
                    NativeRendererHelper.addTextView(textView, adMobStaticNativeAd.getTitle());
                    unifiedNativeAdView.setHeadlineView(textView);
                    TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content);
                    NativeRendererHelper.addTextView(textView2, adMobStaticNativeAd.getText());
                    unifiedNativeAdView.setBodyView(textView2);
                    TextView textView3 = (TextView) inflate.findViewById(R$id.tv_cta_btn);
                    if (textView3 != null) {
                        textView3.setVisibility(0);
                        NativeRendererHelper.addTextView(textView3, adMobStaticNativeAd.getCallToAction());
                        unifiedNativeAdView.setCallToActionView(textView3);
                    } else {
                        ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_ctaArrow);
                        if (imageView != null) {
                            imageView.setVisibility(0);
                        }
                    }
                    ImageView imageView2 = (ImageView) inflate.findViewById(R$id.iv_ad_icon);
                    if (imageView2 != null) {
                        if (unifiedNativeAd.getIcon() != null) {
                            imageView2.setImageDrawable(unifiedNativeAd.getIcon().getDrawable());
                        } else {
                            imageView2.setImageResource(SdkUtilsAdRenderer.getDefaultAdIconRandomly());
                        }
                        unifiedNativeAdView.setIconView(imageView2);
                    }
                    ImageView imageView3 = (ImageView) inflate.findViewById(R$id.iv_ad);
                    List<NativeAd.Image> images = unifiedNativeAd.getImages();
                    if (!(imageView3 == null || images.size() <= 0 || images.get(0) == null)) {
                        imageView3.setImageDrawable(images.get(0).getDrawable());
                        unifiedNativeAdView.setImageView(imageView3);
                    }
                    RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.rl_nativeAdContent);
                    if (relativeLayout != null) {
                        relativeLayout.setOnClickListener(new View$OnClickListenerC4018c(this, unifiedNativeAdView));
                    }
                    unifiedNativeAdView.setNativeAd(unifiedNativeAd);
                    ImageView imageView4 = (ImageView) inflate.findViewById(R$id.iv_privacy);
                    if (imageView4 != null) {
                        imageView4.setVisibility(0);
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
                    TextView textView5 = (TextView) inflate.findViewById(R$id.tv_promoted);
                    if (textView5 != null) {
                        textView5.setVisibility(8);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m30078a(@NonNull View view, @NonNull StaticNativeAd staticNativeAd, @NonNull String str) {
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.vs_admob);
        if (viewStub == null) {
            return false;
        }
        View findViewById = view.findViewById(R$id.rl_nativeAdView);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        return MoPubRenderAotterTrekAdsUtils.renderAotterTrekAd(AdUnit.SMS, viewStub, staticNativeAd, str);
    }

    /* renamed from: a */
    public final boolean m30076a(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        boolean z = false;
        z = false;
        if (aVar.f15566a.findViewById(R$id.vs_admob) != null) {
            aVar.f15566a.findViewById(R$id.rl_nativeAdView).setVisibility(8);
            ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
            if (viewStub == null) {
                return false;
            }
            AotterTrekCustomEvent.AotterTrekStaticAd aotterTrekStaticAd = (AotterTrekCustomEvent.AotterTrekStaticAd) staticNativeAd;
            C6289b b = AotterTrekUtils.m28795b(aotterTrekStaticAd.getLabel());
            if (b == null) {
                return false;
            }
            viewStub.setLayoutResource(b.f15575a);
            C6287a a = C6287a.m23403a(viewStub.inflate(), b);
            View view = a.f15566a;
            if (view == null) {
                return false;
            }
            ImageView imageView = (ImageView) view.findViewById(R$id.iv_ad_inner_close);
            ImageView imageView2 = (ImageView) view.findViewById(R$id.iv_ad_outer_close);
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
            ImageView imageView3 = a.f15570e;
            String label = aotterTrekStaticAd.getLabel();
            char c = 65535;
            int hashCode = label.hashCode();
            if (hashCode != -1993628369) {
                if (hashCode == -721985618 && label.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_NATIVE_BANNER)) {
                    c = 0;
                }
            } else if (label.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_DISPLAY_BANNER)) {
                c = 1;
            }
            if (c == 0) {
                ImageView imageView4 = a.f15572g;
                TextView textView = a.f15567b;
                TextView textView2 = a.f15568c;
                TextView textView3 = a.f15569d;
                TextView textView4 = (TextView) view.findViewById(R$id.tv_promoted);
                FrameLayout frameLayout = (FrameLayout) view.findViewById(R$id.fl_fb_ad_choice_container);
                if (!TextUtils.isEmpty(aotterTrekStaticAd.getTitle())) {
                    NativeRendererHelper.addTextView(textView, aotterTrekStaticAd.getTitle());
                    textView.setSingleLine();
                    textView.setEllipsize(TextUtils.TruncateAt.END);
                }
                if (TextUtils.isEmpty(aotterTrekStaticAd.getText())) {
                    textView2.setVisibility(8);
                } else {
                    NativeRendererHelper.addTextView(textView2, aotterTrekStaticAd.getText());
                }
                if (!TextUtils.isEmpty(aotterTrekStaticAd.getCallToAction())) {
                    NativeRendererHelper.addTextView(textView3, aotterTrekStaticAd.getCallToAction());
                    textView3.setVisibility(0);
                } else if (view.findViewById(R$id.iv_ctaArrow) != null) {
                    view.findViewById(R$id.iv_ctaArrow).setVisibility(0);
                }
                C6272d.m23426a(aotterTrekStaticAd.getMainImageUrl(), imageView3, true, false, 2, C14698a.EnumC14700b.TOP, null);
                imageView4.setImageResource(2131230830);
                imageView4.setVisibility(0);
                textView4.setVisibility(8);
                frameLayout.setVisibility(8);
            } else if (c != 1) {
                String str = "[renderedAotterPcaAd] rendering " + aotterTrekStaticAd.getLabel();
            } else {
                C6272d.m23426a(aotterTrekStaticAd.getMainImageUrl(), imageView3, true, false, 0, C14698a.EnumC14700b.TOP, null);
            }
            z = true;
            String str2 = "[renderedAotterPcaAd] rendering " + aotterTrekStaticAd.getLabel();
        }
        return z;
    }

    /* renamed from: b */
    public final void m30074b(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        if (aVar.f15566a != null) {
            if (staticNativeAd instanceof AotterTrekCustomEvent.AotterTrekStaticAd) {
                if (!m30076a(aVar, staticNativeAd)) {
                    m30077a(aVar, 8);
                }
            } else if (staticNativeAd instanceof AdMobCustomEvent.AdMobStaticNativeAd) {
                m30075a(aVar, (AdMobCustomEvent.AdMobStaticNativeAd) staticNativeAd);
            } else {
                boolean z = staticNativeAd instanceof MoPubCustomEventNative.C3966b;
                if (z) {
                    String aotterTrekLabel = MoPubRenderAotterTrekAdsUtils.getAotterTrekLabel(AdUnit.SMS, staticNativeAd);
                    if (!TextUtils.isEmpty(aotterTrekLabel)) {
                        if (!m30078a(aVar.f15566a, staticNativeAd, aotterTrekLabel)) {
                            m30077a(aVar, 8);
                            return;
                        }
                        return;
                    }
                }
                if (!TextUtils.isEmpty(staticNativeAd.getTitle())) {
                    NativeRendererHelper.addTextView(aVar.f15567b, staticNativeAd.getTitle());
                }
                if (TextUtils.isEmpty(staticNativeAd.getText())) {
                    aVar.f15566a.findViewById(R$id.tv_content).setVisibility(8);
                } else {
                    NativeRendererHelper.addTextView(aVar.f15568c, staticNativeAd.getText());
                }
                if (aVar.f15566a.findViewById(R$id.rl_nativeAdView) != null) {
                    aVar.f15566a.findViewById(R$id.rl_nativeAdView).setVisibility(0);
                }
                if (!TextUtils.isEmpty(staticNativeAd.getCallToAction())) {
                    NativeRendererHelper.addTextView(aVar.f15569d, staticNativeAd.getCallToAction());
                    aVar.f15569d.setVisibility(0);
                } else if (aVar.f15566a.findViewById(R$id.iv_ctaArrow) != null) {
                    aVar.f15566a.findViewById(R$id.iv_ctaArrow).setVisibility(0);
                }
                C6272d.m23426a(staticNativeAd.getIconImageUrl(), aVar.f15571f, false, false, 2, C14698a.EnumC14700b.ALL, null);
                ImageView imageView = (ImageView) aVar.f15566a.findViewById(R$id.iv_privacy);
                TextView textView = (TextView) aVar.f15566a.findViewById(R$id.tv_promoted);
                FrameLayout frameLayout = (FrameLayout) aVar.f15566a.findViewById(R$id.fl_fb_ad_choice_container);
                ((TextView) aVar.f15566a.findViewById(R$id.tv_sponsored)).setText(C6272d.m23413i());
                if (staticNativeAd instanceof FlurryStaticNativeAd) {
                    addPrivacyInformationIcon(imageView, 2131230831, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                    imageView.setVisibility(0);
                    textView.setVisibility(8);
                    frameLayout.setVisibility(8);
                } else if (staticNativeAd instanceof FacebookNative.C3953c) {
                    if (TextUtils.isEmpty(staticNativeAd.getText())) {
                        aVar.f15568c.setVisibility(8);
                    } else {
                        NativeRendererHelper.addTextView(aVar.f15568c, staticNativeAd.getText());
                    }
                    ImageView imageView2 = aVar.f15571f;
                    if (imageView2 != null) {
                        imageView2.setVisibility(8);
                    }
                    MediaView mediaView = null;
                    View view = aVar.f15566a;
                    if (view != null) {
                        mediaView = FacebookNative.C3952b.m30181a(view.getContext(), aVar.f15566a, R$id.v_video);
                    }
                    FacebookNative.C3953c cVar = (FacebookNative.C3953c) staticNativeAd;
                    SdkUtilsAdRenderer.setupFbAdContainer(cVar.getNativeAd(), aVar, frameLayout, false, true, null, mediaView, cVar.getUnclickableAreas());
                    textView.setVisibility(8);
                    imageView.setVisibility(8);
                    frameLayout.setVisibility(0);
                } else if (z) {
                    addPrivacyInformationIcon(imageView, 2131230832, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                    imageView.setVisibility(0);
                    textView.setVisibility(0);
                    textView.setText("Promoted");
                    frameLayout.setVisibility(8);
                } else if (staticNativeAd instanceof AotterTrekNative.C3929a) {
                    imageView.setImageResource(2131230830);
                    imageView.setVisibility(0);
                    textView.setVisibility(8);
                    frameLayout.setVisibility(8);
                    TextView textView2 = aVar.f15567b;
                    TextView textView3 = aVar.f15568c;
                    textView2.setSingleLine();
                    textView2.setEllipsize(TextUtils.TruncateAt.END);
                    if (TextUtils.isEmpty(textView3.getText().toString())) {
                        textView3.setVisibility(8);
                    }
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
                    textView.setVisibility(8);
                    imageView.setImageResource(2131230830);
                    imageView.setVisibility(0);
                    frameLayout.setVisibility(8);
                    TextView textView4 = aVar.f15567b;
                    TextView textView5 = aVar.f15568c;
                    textView4.setSingleLine(false);
                    textView4.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4016a(this, textView4, textView5));
                }
            }
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f9271a.f15575a, viewGroup, false);
    }

    public void renderAdView(@NonNull View view, @NonNull StaticNativeAd staticNativeAd) {
        C6287a aVar = this.f9272b.get(view);
        C6287a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C6287a.m23403a(view, this.f9271a);
            this.f9272b.put(view, aVar2);
        }
        m30077a(aVar2, 0);
        m30074b(aVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(aVar2.f15566a, this.f9271a.f15584j, staticNativeAd.getExtras());
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}
