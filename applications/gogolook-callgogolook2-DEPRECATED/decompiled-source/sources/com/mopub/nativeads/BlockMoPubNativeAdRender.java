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
import com.mopub.nativeads.AotterTrekNative;
import com.mopub.nativeads.AppierNative;
import com.mopub.nativeads.FacebookNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.WeakHashMap;
import p081h.p160h.p161a.p170p.C6270b;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p622k.p623a.p624a.p625a.C14698a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BlockMoPubNativeAdRender.class */
public class BlockMoPubNativeAdRender implements MoPubAdRenderer<StaticNativeAd> {
    @NonNull

    /* renamed from: a */
    public final C6289b f9017a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, C6287a> f9018b = new WeakHashMap<>();

    /* renamed from: com.mopub.nativeads.BlockMoPubNativeAdRender$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BlockMoPubNativeAdRender$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC3935a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f9019a;

        /* renamed from: b */
        public final /* synthetic */ TextView f9020b;

        public ViewTreeObserver$OnGlobalLayoutListenerC3935a(BlockMoPubNativeAdRender blockMoPubNativeAdRender, TextView textView, TextView textView2) {
            this.f9019a = textView;
            this.f9020b = textView2;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f9019a.getLineCount() == 1) {
                this.f9020b.setVisibility(0);
            } else {
                this.f9020b.setVisibility(8);
            }
            this.f9019a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    /* renamed from: com.mopub.nativeads.BlockMoPubNativeAdRender$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BlockMoPubNativeAdRender$b.class */
    public static final class View$OnClickListenerC3936b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9021a;

        /* renamed from: b */
        public final /* synthetic */ String f9022b;

        public View$OnClickListenerC3936b(Context context, String str) {
            this.f9021a = context;
            this.f9022b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9021a, this.f9022b);
        }
    }

    /* renamed from: com.mopub.nativeads.BlockMoPubNativeAdRender$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BlockMoPubNativeAdRender$c.class */
    public class View$OnClickListenerC3937c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9023a;

        public View$OnClickListenerC3937c(BlockMoPubNativeAdRender blockMoPubNativeAdRender, UnifiedNativeAdView unifiedNativeAdView) {
            this.f9023a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9023a.getCallToActionView().performClick();
        }
    }

    public BlockMoPubNativeAdRender(@NonNull C6289b bVar) {
        this.f9017a = bVar;
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
            imageView.setOnClickListener(new View$OnClickListenerC3936b(context, str));
            imageView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m30208a(@NonNull C6287a aVar) {
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
    public final void m30207a(@NonNull C6287a aVar, int i) {
        View view = aVar.f15566a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m30206a(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        if (aVar.f15566a != null) {
            if (staticNativeAd instanceof AdMobCustomEvent.AdMobStaticNativeAd) {
                m30205a(aVar, (AdMobCustomEvent.AdMobStaticNativeAd) staticNativeAd);
                return;
            }
            NativeRendererHelper.addTextView(aVar.f15567b, staticNativeAd.getTitle());
            NativeRendererHelper.addTextView(aVar.f15568c, staticNativeAd.getText());
            if (!TextUtils.isEmpty(staticNativeAd.getCallToAction())) {
                NativeRendererHelper.addTextView(aVar.f15569d, staticNativeAd.getCallToAction());
            } else {
                NativeRendererHelper.addTextView(aVar.f15569d, C6272d.m23415g());
            }
            if (aVar.f15571f != null) {
                C6272d.m23426a(staticNativeAd.getIconImageUrl(), aVar.f15571f, true, true, 0, C14698a.EnumC14700b.ALL, null);
            }
            View view = aVar.f15566a;
            if (view != null) {
                ImageView imageView = (ImageView) view.findViewById(R$id.iv_privacy);
                m30208a(aVar);
                FrameLayout frameLayout = (FrameLayout) aVar.f15566a.findViewById(R$id.fl_fb_ad_choice_container);
                ((TextView) aVar.f15566a.findViewById(R$id.tv_sponsored)).setText(C6272d.m23413i());
                if (staticNativeAd instanceof FlurryStaticNativeAd) {
                    addPrivacyInformationIcon(imageView, 2131230831, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                    imageView.setVisibility(0);
                    frameLayout.setVisibility(8);
                } else if (staticNativeAd instanceof FacebookNative.C3953c) {
                    ImageView imageView2 = aVar.f15571f;
                    if (imageView2 != null) {
                        imageView2.setVisibility(8);
                    }
                    MediaView mediaView = null;
                    View view2 = aVar.f15566a;
                    if (view2 != null) {
                        mediaView = FacebookNative.C3952b.m30181a(view2.getContext(), aVar.f15566a, R$id.v_video);
                    }
                    FacebookNative.C3953c cVar = (FacebookNative.C3953c) staticNativeAd;
                    SdkUtilsAdRenderer.setupFbAdContainer(cVar.getNativeAd(), aVar, frameLayout, false, true, null, mediaView, cVar.getUnclickableAreas());
                    imageView.setVisibility(8);
                    frameLayout.setVisibility(0);
                } else if (staticNativeAd instanceof MoPubCustomEventNative.C3966b) {
                    addPrivacyInformationIcon(imageView, 2131230832, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                    imageView.setVisibility(0);
                    frameLayout.setVisibility(8);
                } else if (staticNativeAd instanceof AppierNative.C3931a) {
                    AppierNative.C3931a aVar2 = (AppierNative.C3931a) staticNativeAd;
                    C6270b.m23440a(imageView, aVar2.getPrivacyInformationIconImageUrl(), aVar2.getPrivacyInformationIconClickThroughUrl());
                    if (frameLayout != null) {
                        frameLayout.setVisibility(8);
                    }
                } else if (staticNativeAd instanceof AotterTrekNative.C3929a) {
                    imageView.setVisibility(8);
                    frameLayout.setVisibility(8);
                } else if (staticNativeAd instanceof CriteoCustomEventNative.CriteoStaticNativeAd) {
                    CriteoCustomEventNative.CriteoStaticNativeAd criteoStaticNativeAd = (CriteoCustomEventNative.CriteoStaticNativeAd) staticNativeAd;
                    criteoStaticNativeAd.renderNativeView(aVar.f15566a);
                    if (imageView != null) {
                        CriteoUtils.setAdChoiceView(criteoStaticNativeAd, imageView);
                    }
                } else {
                    imageView.setVisibility(8);
                    frameLayout.setVisibility(8);
                    TextView textView = aVar.f15567b;
                    TextView textView2 = aVar.f15568c;
                    textView.setSingleLine(false);
                    textView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC3935a(this, textView, textView2));
                }
            }
        }
    }

    /* renamed from: a */
    public final void m30205a(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        UnifiedNativeAdView unifiedNativeAdView;
        ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
        if (viewStub != null) {
            View findViewById = aVar.f15566a.findViewById(R$id.ll_whole);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.block_ad_admob_unified);
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
                    NativeAd.Image icon = unifiedNativeAd.getIcon();
                    if (icon != null) {
                        imageView2.setImageDrawable(icon.getDrawable());
                    } else {
                        imageView2.setImageResource(SdkUtilsAdRenderer.getDefaultAdIconRandomly());
                    }
                    unifiedNativeAdView.setImageView(imageView2);
                    RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.ll_whole);
                    if (relativeLayout != null) {
                        relativeLayout.setOnClickListener(new View$OnClickListenerC3937c(this, unifiedNativeAdView));
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
        return LayoutInflater.from(context).inflate(this.f9017a.f15575a, viewGroup, false);
    }

    public void destroy() {
        this.f9018b.clear();
    }

    public void renderAdView(@NonNull View view, @NonNull StaticNativeAd staticNativeAd) {
        C6287a aVar = this.f9018b.get(view);
        C6287a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C6287a.m23403a(view, this.f9017a);
            this.f9018b.put(view, aVar2);
        }
        m30206a(aVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(aVar2.f15566a, this.f9017a.f15584j, staticNativeAd.getExtras());
        m30207a(aVar2, 0);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}
