package com.mopub.nativeads;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.nativeads.BaseNativeAdRenderer;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018�� \u001c2\u00020\u0001:\u0001\u001cB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u001d\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\fH��¢\u0006\u0002\b\u0015J\u0018\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u001b¨\u0006\u001d"}, m815d2 = {"Lcom/mopub/nativeads/NativeAdTemplate1Renderer;", "Lcom/mopub/nativeads/BaseNativeAdRenderer;", "viewBinder", "Lcom/gogolook/adsdk/view/ViewBinder;", "adUnit", "", "(Lcom/gogolook/adsdk/view/ViewBinder;Ljava/lang/String;)V", "addPrivacyInformationIcon", "", "iconImageView", "Landroid/widget/ImageView;", "imageResId", "", "clickThroughUrl", "setCloseOnClickedListener", "mainView", "Landroid/view/View;", "setWhoscallLogoVisibility", "viewHolder", "Lcom/gogolook/adsdk/view/NativeViewHolder;", "visibility", "setWhoscallLogoVisibility$whoscall_rcRelease", "update", "nativeViewHolder", "staticNativeAd", "Lcom/mopub/nativeads/StaticNativeAd;", "updateAdMobAd", "Lcom/mopub/nativeads/admob/AdMobCustomEvent$AdMobStaticNativeAd;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate1Renderer.class */
public class NativeAdTemplate1Renderer extends BaseNativeAdRenderer {
    public static final Companion Companion = new Companion(null);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\b"}, m815d2 = {"Lcom/mopub/nativeads/NativeAdTemplate1Renderer$Companion;", "", "()V", "CTA_TOP_MARGIN_WHEN_TITLE_ONE_LINE", "", "CTA_TOP_MARGIN_WHEN_TITLE_TWO_LINE", "TITLE_TEXT_SIZE_WHEN_TITLE_ONE_LINE", "TITLE_TEXT_SIZE_WHEN_TITLE_TWO_LINE", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate1Renderer$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate1Renderer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate1Renderer$a.class */
    public static final class View$OnClickListenerC3988a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f9217a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f9218b;

        public View$OnClickListenerC3988a(String str, ImageView imageView, String str2, int i) {
            this.f9217a = str;
            this.f9218b = imageView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9218b.getContext(), this.f9217a);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate1Renderer$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate1Renderer$b.class */
    public static final class View$OnClickListenerC3989b implements View.OnClickListener {
        public View$OnClickListenerC3989b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener = NativeAdTemplate1Renderer.this.adCustomActionListener;
            if (adCustomActionListener != null) {
                adCustomActionListener.onAdClosed();
            }
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate1Renderer$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate1Renderer$c.class */
    public static final class View$OnClickListenerC3990c implements View.OnClickListener {
        public View$OnClickListenerC3990c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener = NativeAdTemplate1Renderer.this.adCustomActionListener;
            if (adCustomActionListener != null) {
                adCustomActionListener.onAdClosed();
            }
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate1Renderer$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate1Renderer$d.class */
    public static final class View$OnClickListenerC3991d implements View.OnClickListener {
        public static final View$OnClickListenerC3991d INSTANCE = new View$OnClickListenerC3991d();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate1Renderer$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate1Renderer$e.class */
    public static final class View$OnClickListenerC3992e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9221a;

        public View$OnClickListenerC3992e(UnifiedNativeAdView unifiedNativeAdView) {
            this.f9221a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f9221a.getCallToActionView().performClick();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdTemplate1Renderer(C6289b bVar, String str) {
        super(bVar, str);
        C15149k.m377b(bVar, "viewBinder");
        C15149k.m377b(str, "adUnit");
    }

    /* renamed from: a */
    public final void m30099a(View view) {
        ImageView imageView = (ImageView) view.findViewById(R$id.iv_ad_inner_close);
        if (imageView != null) {
            imageView.setOnClickListener(new View$OnClickListenerC3989b());
        }
        ImageView imageView2 = (ImageView) view.findViewById(R$id.iv_ad_outer_close);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View$OnClickListenerC3990c());
        }
    }

    public final void addPrivacyInformationIcon(ImageView imageView, int i, String str) {
        if (imageView != null) {
            String str2 = true ^ (str == null || str.length() == 0) ? str : null;
            if (str2 != null) {
                imageView.setImageResource(i);
                imageView.setOnClickListener(new View$OnClickListenerC3988a(str2, imageView, str, i));
                return;
            }
            imageView.setImageDrawable(null);
            imageView.setOnClickListener(null);
            imageView.setVisibility(8);
        }
    }

    public final void setWhoscallLogoVisibility$whoscall_rcRelease(C6287a aVar, int i) {
        C15149k.m377b(aVar, "viewHolder");
        ImageView imageView = (ImageView) aVar.m23405a().findViewById(R$id.iv_logo_whoscall);
        if (imageView != null) {
            imageView.setVisibility(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0100, code lost:
        if (r23 != null) goto L_0x010b;
     */
    @Override // com.mopub.nativeads.BaseNativeAdRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(final p081h.p160h.p161a.p171q.C6287a r11, final com.mopub.nativeads.StaticNativeAd r12) {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.NativeAdTemplate1Renderer.update(h.h.a.q.a, com.mopub.nativeads.StaticNativeAd):void");
    }

    public final void updateAdMobAd(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        ViewStub viewStub;
        C15149k.m377b(aVar, "nativeViewHolder");
        C15149k.m377b(adMobStaticNativeAd, "staticNativeAd");
        View a = aVar.m23405a();
        if (a != null && (viewStub = (ViewStub) a.findViewById(R$id.vs_custom)) != null) {
            View findViewById = a.findViewById(R$id.ll_whole);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.native_ad_template_1_content_admob_unified);
                View inflate = viewStub.inflate();
                if (inflate != null) {
                    C6289b.C6290a aVar2 = new C6289b.C6290a(R$layout.native_ad_template_1_content_admob_unified);
                    aVar2.m23394d(R$id.iv_ad);
                    aVar2.m23398b(R$id.iv_ad_icon);
                    aVar2.m23386h(R$id.tv_title);
                    aVar2.m23388g(R$id.tv_content);
                    aVar2.m23400a(R$id.tv_cta_btn);
                    aVar2.m23390f(R$id.iv_privacy);
                    aVar2.m23396c(R$id.iv_ad_inner_close);
                    aVar2.m23392e(R$id.iv_ad_outer_close);
                    C6287a a2 = C6287a.f15565j.m23402a(inflate, aVar2.m23401a());
                    UnifiedNativeAdView unifiedNativeAdView = (UnifiedNativeAdView) a2.m23405a().findViewById(R$id.unadv);
                    if (unifiedNativeAdView != null) {
                        setCloseButtonVisibility(a2);
                        m30099a(inflate);
                        NativeRendererHelper.addTextView(a2.f15567b, adMobStaticNativeAd.getTitle());
                        unifiedNativeAdView.setHeadlineView(a2.f15567b);
                        NativeRendererHelper.addTextView(a2.f15568c, adMobStaticNativeAd.getText());
                        unifiedNativeAdView.setBodyView(a2.f15568c);
                        NativeRendererHelper.addTextView(a2.f15569d, adMobStaticNativeAd.getCallToAction());
                        unifiedNativeAdView.setCallToActionView(a2.f15569d);
                        ImageView imageView = a2.f15571f;
                        if (imageView != null) {
                            C15149k.m383a((Object) unifiedNativeAd, "unifiedNativeAd");
                            NativeAd.Image icon = unifiedNativeAd.getIcon();
                            imageView.setImageDrawable(icon != null ? icon.getDrawable() : null);
                            unifiedNativeAdView.setIconView(imageView);
                        }
                        ImageView imageView2 = a2.f15570e;
                        if (imageView2 != null) {
                            C15149k.m383a((Object) unifiedNativeAd, "unifiedNativeAd");
                            List<NativeAd.Image> images = unifiedNativeAd.getImages();
                            Drawable drawable = null;
                            if (images != null) {
                                if (!(!images.isEmpty())) {
                                    images = null;
                                }
                                drawable = null;
                                if (images != null) {
                                    NativeAd.Image image = images.get(0);
                                    drawable = null;
                                    if (image != null) {
                                        drawable = image.getDrawable();
                                    }
                                }
                            }
                            imageView2.setImageDrawable(drawable);
                            unifiedNativeAdView.setImageView(imageView2);
                        }
                        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.rl_adContent);
                        if (relativeLayout != null) {
                            relativeLayout.setOnClickListener(new View$OnClickListenerC3992e(unifiedNativeAdView));
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
                            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
                            if (layoutParams != null) {
                                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                                layoutParams2.addRule(14, -1);
                                layoutParams2.addRule(1, 0);
                                layoutParams2.addRule(0, 0);
                                textView.setLayoutParams(layoutParams2);
                                textView.setText(C6272d.m23413i());
                                return;
                            }
                            throw new C14986p("null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
                        }
                    }
                }
            }
        }
    }
}
