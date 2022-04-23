package com.mopub.nativeads;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.nativeads.BaseNativeAdRenderer;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.p074ad.AdUnit;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0016\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u000e\u001a\u00020\u00032\b\b\u0001\u0010\u000f\u001a\u00020\fH\u0002J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u001c¨\u0006\u001d"}, m815d2 = {"Lcom/mopub/nativeads/NativeAdTemplate2Renderer;", "Lcom/mopub/nativeads/BaseNativeAdRenderer;", "viewBinder", "Lcom/gogolook/adsdk/view/ViewBinder;", "adUnit", "", "(Lcom/gogolook/adsdk/view/ViewBinder;Ljava/lang/String;)V", "addPrivacyInformationIcon", "", "iconImageView", "Landroid/widget/ImageView;", "imageResId", "", "clickThroughUrl", "getViewBinder", "layoutId", "renderAotterTrekAdOnMoPub", "", "mainView", "Landroid/view/View;", "staticNativeAd", "Lcom/mopub/nativeads/StaticNativeAd;", "aotterTrekLabel", "setCloseOnClickedListener", "update", "nativeViewHolder", "Lcom/gogolook/adsdk/view/NativeViewHolder;", "updateAdMobAd", "Lcom/mopub/nativeads/admob/AdMobCustomEvent$AdMobStaticNativeAd;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate2Renderer.class */
public class NativeAdTemplate2Renderer extends BaseNativeAdRenderer {

    /* renamed from: com.mopub.nativeads.NativeAdTemplate2Renderer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate2Renderer$a.class */
    public static final class View$OnClickListenerC3993a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f9225a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f9226b;

        public View$OnClickListenerC3993a(String str, ImageView imageView, String str2, int i) {
            this.f9225a = str;
            this.f9226b = imageView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9226b.getContext(), this.f9225a);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate2Renderer$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate2Renderer$b.class */
    public static final class View$OnClickListenerC3994b implements View.OnClickListener {
        public View$OnClickListenerC3994b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener = NativeAdTemplate2Renderer.this.adCustomActionListener;
            if (adCustomActionListener != null) {
                adCustomActionListener.onAdClosed();
            }
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate2Renderer$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate2Renderer$c.class */
    public static final class View$OnClickListenerC3995c implements View.OnClickListener {
        public View$OnClickListenerC3995c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener = NativeAdTemplate2Renderer.this.adCustomActionListener;
            if (adCustomActionListener != null) {
                adCustomActionListener.onAdClosed();
            }
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate2Renderer$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate2Renderer$d.class */
    public static final class View$OnClickListenerC3996d implements View.OnClickListener {
        public static final View$OnClickListenerC3996d INSTANCE = new View$OnClickListenerC3996d();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mopub.nativeads.NativeAdTemplate2Renderer$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAdTemplate2Renderer$e.class */
    public static final class View$OnClickListenerC3997e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9229a;

        public View$OnClickListenerC3997e(UnifiedNativeAdView unifiedNativeAdView) {
            this.f9229a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f9229a.getCallToActionView().performClick();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdTemplate2Renderer(C6289b bVar, String str) {
        super(bVar, str);
        C15149k.m377b(bVar, "viewBinder");
        C15149k.m377b(str, "adUnit");
    }

    /* renamed from: a */
    public final C6289b m30098a(@LayoutRes int i) {
        C6289b.C6290a aVar = new C6289b.C6290a(i);
        aVar.m23386h(R$id.tv_title);
        aVar.m23388g(R$id.tv_content);
        aVar.m23400a(R$id.tv_cta_btn);
        aVar.m23398b(R$id.iv_ad_icon);
        aVar.m23394d(R$id.iv_ad);
        aVar.m23390f(R$id.iv_privacy);
        aVar.m23396c(R$id.iv_ad_inner_close);
        aVar.m23392e(R$id.iv_ad_outer_close);
        return aVar.m23401a();
    }

    /* renamed from: a */
    public final void m30097a(View view) {
        ImageView imageView = (ImageView) view.findViewById(R$id.iv_ad_inner_close);
        if (imageView != null) {
            imageView.setOnClickListener(new View$OnClickListenerC3994b());
        }
        ImageView imageView2 = (ImageView) view.findViewById(R$id.iv_ad_outer_close);
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View$OnClickListenerC3995c());
        }
    }

    /* renamed from: a */
    public final boolean m30096a(View view, StaticNativeAd staticNativeAd, String str) {
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.vs_custom);
        if (viewStub == null) {
            return false;
        }
        View findViewById = view.findViewById(R$id.ll_whole);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        return MoPubRenderAotterTrekAdsUtils.renderAotterTrekAd(AdUnit.Companion.m28820a(m30213a()), viewStub, staticNativeAd, str);
    }

    public final void addPrivacyInformationIcon(ImageView imageView, int i, String str) {
        if (imageView != null) {
            String str2 = true ^ (str == null || str.length() == 0) ? str : null;
            if (str2 != null) {
                imageView.setImageResource(i);
                imageView.setOnClickListener(new View$OnClickListenerC3993a(str2, imageView, str, i));
                return;
            }
            imageView.setImageDrawable(null);
            imageView.setOnClickListener(null);
            imageView.setVisibility(8);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f1, code lost:
        if (r14 != null) goto L_0x00fc;
     */
    @Override // com.mopub.nativeads.BaseNativeAdRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(p081h.p160h.p161a.p171q.C6287a r10, com.mopub.nativeads.StaticNativeAd r11) {
        /*
            Method dump skipped, instructions count: 753
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.NativeAdTemplate2Renderer.update(h.h.a.q.a, com.mopub.nativeads.StaticNativeAd):void");
    }

    public final void updateAdMobAd(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        UnifiedNativeAd unifiedNativeAd;
        ImageView imageView;
        ImageView imageView2;
        Drawable drawable;
        NativeAd.Image image;
        C15149k.m377b(aVar, "nativeViewHolder");
        C15149k.m377b(adMobStaticNativeAd, "staticNativeAd");
        View a = aVar.m23405a();
        View findViewById = a.findViewById(R$id.ll_whole);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        ViewStub viewStub = (ViewStub) a.findViewById(R$id.vs_custom);
        if (viewStub != null && (unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd()) != null) {
            C6289b a2 = m30098a(R$layout.native_ad_template_2_content_admob_unified);
            viewStub.setLayoutResource(a2.f15575a);
            View inflate = viewStub.inflate();
            if (inflate != null) {
                C6287a a3 = C6287a.f15565j.m23402a(inflate, a2);
                UnifiedNativeAdView unifiedNativeAdView = (UnifiedNativeAdView) a3.m23405a().findViewById(R$id.unadv);
                if (unifiedNativeAdView != null) {
                    setCloseButtonVisibility(a3);
                    m30097a(a3.m23405a());
                    NativeRendererHelper.addTextView(a3.f15567b, adMobStaticNativeAd.getTitle());
                    NativeRendererHelper.addTextView(a3.f15568c, adMobStaticNativeAd.getText());
                    NativeRendererHelper.addTextView(a3.f15569d, adMobStaticNativeAd.getCallToAction());
                    unifiedNativeAdView.setHeadlineView(a3.f15567b);
                    unifiedNativeAdView.setBodyView(a3.f15568c);
                    unifiedNativeAdView.setCallToActionView(a3.f15569d);
                    ImageView imageView3 = a3.f15570e;
                    Drawable drawable2 = null;
                    if (imageView3 != null) {
                        C15149k.m383a((Object) unifiedNativeAd, "unifiedNativeAd");
                        List<NativeAd.Image> images = unifiedNativeAd.getImages();
                        if (images != null) {
                            if (!(!images.isEmpty())) {
                                images = null;
                            }
                            if (!(images == null || (image = images.get(0)) == null)) {
                                drawable = image.getDrawable();
                                imageView3.setImageDrawable(drawable);
                                imageView = imageView3;
                            }
                        }
                        drawable = null;
                        imageView3.setImageDrawable(drawable);
                        imageView = imageView3;
                    } else {
                        imageView = null;
                    }
                    unifiedNativeAdView.setImageView(imageView);
                    ImageView imageView4 = a3.f15571f;
                    if (imageView4 != null) {
                        C15149k.m383a((Object) unifiedNativeAd, "unifiedNativeAd");
                        NativeAd.Image icon = unifiedNativeAd.getIcon();
                        if (icon != null) {
                            drawable2 = icon.getDrawable();
                        }
                        imageView4.setImageDrawable(drawable2);
                        imageView2 = imageView4;
                    } else {
                        imageView2 = null;
                    }
                    unifiedNativeAdView.setIconView(imageView2);
                    RelativeLayout relativeLayout = (RelativeLayout) a.findViewById(R$id.rl_adContent);
                    if (relativeLayout != null) {
                        relativeLayout.setOnClickListener(new View$OnClickListenerC3997e(unifiedNativeAdView));
                    }
                    ImageView imageView5 = (ImageView) a.findViewById(R$id.iv_privacy);
                    if (imageView5 != null) {
                        imageView5.setVisibility(8);
                    }
                    FrameLayout frameLayout = (FrameLayout) a.findViewById(R$id.fl_fb_ad_choice_container);
                    if (frameLayout != null) {
                        frameLayout.setVisibility(8);
                    }
                    View findViewById2 = a.findViewById(R$id.v_adchoice_dummy);
                    if (findViewById2 != null) {
                        findViewById2.setVisibility(8);
                    }
                    TextView textView = (TextView) a.findViewById(R$id.tv_sponsored);
                    if (textView != null) {
                        textView.setText(C6272d.m23413i());
                    }
                    unifiedNativeAdView.setNativeAd(unifiedNativeAd);
                }
            }
        }
    }
}
