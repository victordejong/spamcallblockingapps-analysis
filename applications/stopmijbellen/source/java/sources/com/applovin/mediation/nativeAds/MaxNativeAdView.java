package com.applovin.mediation.nativeAds;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.ads.C1080b;
import com.applovin.impl.mediation.p038a.C1047d;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.C1583R;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.ref.WeakReference;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/nativeAds/MaxNativeAdView.class */
public class MaxNativeAdView extends FrameLayout {

    /* renamed from: a */
    private final View f5809a;

    /* renamed from: b */
    private final TextView f5810b;

    /* renamed from: c */
    private final TextView f5811c;

    /* renamed from: d */
    private final TextView f5812d;

    /* renamed from: e */
    private final ImageView f5813e;

    /* renamed from: f */
    private final FrameLayout f5814f;

    /* renamed from: g */
    private final ViewGroup f5815g;

    /* renamed from: h */
    private final FrameLayout f5816h;

    /* renamed from: i */
    private final ViewGroup f5817i;

    /* renamed from: j */
    private final FrameLayout f5818j;

    /* renamed from: k */
    private final Button f5819k;

    /* renamed from: l */
    private C1080b f5820l;

    public MaxNativeAdView(MaxNativeAd maxNativeAd, Activity activity) {
        this(maxNativeAd, (String) null, activity);
    }

    public MaxNativeAdView(MaxNativeAd maxNativeAd, MaxNativeAdViewBinder maxNativeAdViewBinder, Context context) {
        super(context);
        boolean z = maxNativeAdViewBinder.templateType != null;
        MaxAdFormat format = maxNativeAd != null ? maxNativeAd.getFormat() : MaxAdFormat.NATIVE;
        View view = maxNativeAdViewBinder.mainView;
        if (view != null) {
            this.f5809a = view;
        } else {
            this.f5809a = LayoutInflater.from(context).inflate(z ? m4870a(maxNativeAdViewBinder.templateType, format) : maxNativeAdViewBinder.layoutResourceId, (ViewGroup) this, false);
        }
        addView(this.f5809a);
        this.f5810b = (TextView) findViewById(maxNativeAdViewBinder.titleTextViewId);
        this.f5811c = (TextView) findViewById(maxNativeAdViewBinder.advertiserTextViewId);
        this.f5812d = (TextView) findViewById(maxNativeAdViewBinder.bodyTextViewId);
        this.f5813e = (ImageView) findViewById(maxNativeAdViewBinder.iconImageViewId);
        this.f5814f = (FrameLayout) findViewById(maxNativeAdViewBinder.iconContentViewId);
        this.f5815g = (ViewGroup) findViewById(maxNativeAdViewBinder.optionsContentViewGroupId);
        this.f5816h = (FrameLayout) findViewById(maxNativeAdViewBinder.optionsContentFrameLayoutId);
        this.f5817i = (ViewGroup) findViewById(maxNativeAdViewBinder.mediaContentViewGroupId);
        this.f5818j = (FrameLayout) findViewById(maxNativeAdViewBinder.mediaContentFrameLayoutId);
        this.f5819k = (Button) findViewById(maxNativeAdViewBinder.callToActionButtonId);
        if (maxNativeAd != null) {
            m4871a(maxNativeAd);
        }
    }

    @Deprecated
    public MaxNativeAdView(MaxNativeAd maxNativeAd, String str, Activity activity) {
        this(maxNativeAd, str, activity.getApplicationContext());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaxNativeAdView(com.applovin.mediation.nativeAds.MaxNativeAd r6, java.lang.String r7, android.content.Context r8) {
        /*
            r5 = this;
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = new com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder
            r1 = r0
            r2 = -1
            r1.<init>(r2)
            r1 = r7
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = r0.setTemplateType(r1)
            int r1 = com.applovin.sdk.C1583R.C1586id.native_title_text_view
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = r0.setTitleTextViewId(r1)
            int r1 = com.applovin.sdk.C1583R.C1586id.native_advertiser_text_view
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = r0.setAdvertiserTextViewId(r1)
            int r1 = com.applovin.sdk.C1583R.C1586id.native_body_text_view
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = r0.setBodyTextViewId(r1)
            int r1 = com.applovin.sdk.C1583R.C1586id.native_icon_image_view
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = r0.setIconImageViewId(r1)
            int r1 = com.applovin.sdk.C1583R.C1586id.native_icon_view
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = r0.setIconContentViewId(r1)
            r7 = r0
            int r0 = com.applovin.sdk.C1583R.C1586id.options_view
            r9 = r0
            r0 = r7
            r1 = r9
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = r0.setOptionsContentViewGroupId(r1)
            r1 = r9
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r0 = r0.setOptionsContentFrameLayoutId(r1)
            r7 = r0
            int r0 = com.applovin.sdk.C1583R.C1586id.native_media_content_view
            r9 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r9
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r2 = r2.setMediaContentViewGroupId(r3)
            r3 = r9
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r2 = r2.setMediaContentFrameLayoutId(r3)
            int r3 = com.applovin.sdk.C1583R.C1586id.native_cta_button
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder$Builder r2 = r2.setCallToActionButtonId(r3)
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder r2 = r2.build()
            r3 = r8
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.mediation.nativeAds.MaxNativeAdView.<init>(com.applovin.mediation.nativeAds.MaxNativeAd, java.lang.String, android.content.Context):void");
    }

    public MaxNativeAdView(MaxNativeAdViewBinder maxNativeAdViewBinder, Context context) {
        this((MaxNativeAd) null, maxNativeAdViewBinder, context.getApplicationContext());
    }

    public MaxNativeAdView(String str, Context context) {
        this((MaxNativeAd) null, str, context);
    }

    /* renamed from: a */
    private int m4870a(String str, MaxAdFormat maxAdFormat) {
        if (maxAdFormat == MaxAdFormat.NATIVE) {
            if ("small_template_1".equalsIgnoreCase(str)) {
                return C1583R.layout.max_native_ad_small_template_1;
            }
            if (!"medium_template_1".equalsIgnoreCase(str)) {
                throw new IllegalArgumentException(C1676a.m4789h("Attempting to render MAX native ad with invalid format: ", str));
            }
            return C1583R.layout.max_native_ad_medium_template_1;
        } else if (maxAdFormat == MaxAdFormat.BANNER) {
            return "vertical_banner_template".equals(str) ? C1583R.layout.max_native_ad_vertical_banner_view : ("media_banner_template".equals(str) || "no_body_banner_template".equals(str)) ? C1583R.layout.max_native_ad_media_banner_view : "vertical_media_banner_template".equals(str) ? C1583R.layout.max_native_ad_vertical_media_banner_view : C1583R.layout.max_native_ad_banner_view;
        } else if (maxAdFormat == MaxAdFormat.LEADER) {
            return "vertical_leader_template".equals(str) ? C1583R.layout.max_native_ad_vertical_leader_view : C1583R.layout.max_native_ad_leader_view;
        } else if (maxAdFormat == MaxAdFormat.MREC) {
            return C1583R.layout.max_native_ad_mrec_view;
        } else {
            throw new IllegalArgumentException("Unsupported ad format: " + maxAdFormat);
        }
    }

    /* renamed from: a */
    private void m4872a() {
        final ViewGroup viewGroup = (ViewGroup) findViewById(C1583R.C1586id.inner_parent_layout);
        if (viewGroup == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return;
        }
        final WeakReference weakReference = new WeakReference(viewTreeObserver);
        viewTreeObserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.mediation.nativeAds.MaxNativeAdView.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                ViewTreeObserver viewTreeObserver2 = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver2 == null || !viewTreeObserver2.isAlive()) {
                    AppLovinSdk.getInstance(MaxNativeAdView.this.getContext()).coreSdk.m5542A().m5112d("MaxNativeAdView", "Failed to remove onPreDrawListener since the view tree observer is not alive.");
                } else {
                    viewTreeObserver2.removeOnPreDrawListener(this);
                }
                weakReference.clear();
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewGroup.getLayoutParams();
                layoutParams.height = ((View) viewGroup.getParent()).getWidth();
                viewGroup.setLayoutParams(layoutParams);
                return true;
            }
        });
    }

    /* renamed from: a */
    private void m4871a(MaxNativeAd maxNativeAd) {
        this.f5810b.setText(maxNativeAd.getTitle());
        if (this.f5811c != null) {
            if (StringUtils.isValidString(maxNativeAd.getAdvertiser())) {
                this.f5811c.setText(maxNativeAd.getAdvertiser());
            } else {
                this.f5811c.setVisibility(8);
            }
        }
        if (this.f5812d != null) {
            if (StringUtils.isValidString(maxNativeAd.getBody())) {
                this.f5812d.setText(maxNativeAd.getBody());
            } else {
                this.f5812d.setVisibility(4);
            }
        }
        if (this.f5819k != null) {
            if (StringUtils.isValidString(maxNativeAd.getCallToAction())) {
                this.f5819k.setText(maxNativeAd.getCallToAction());
            } else {
                this.f5819k.setVisibility(4);
            }
        }
        MaxNativeAd.MaxNativeAdImage icon = maxNativeAd.getIcon();
        View iconView = maxNativeAd.getIconView();
        FrameLayout frameLayout = this.f5814f;
        if (frameLayout != null) {
            if (icon == null || this.f5813e == null) {
                if (iconView != null) {
                    iconView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    this.f5814f.removeAllViews();
                    this.f5814f.addView(iconView);
                } else {
                    frameLayout.setVisibility(8);
                }
            } else if (icon.getDrawable() != null) {
                this.f5813e.setImageDrawable(icon.getDrawable());
            } else if (icon.getUri() == null || !StringUtils.isValidString(icon.getUri().toString())) {
                this.f5814f.setVisibility(8);
            } else {
                this.f5813e.setImageURI(icon.getUri());
            }
        }
        View optionsView = maxNativeAd.getOptionsView();
        FrameLayout frameLayout2 = this.f5816h;
        if (frameLayout2 != null && optionsView != null) {
            optionsView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f5816h.addView(optionsView);
        } else if (frameLayout2 != null) {
            frameLayout2.setVisibility(8);
        }
        View mediaView = maxNativeAd.getMediaView();
        if (this.f5818j != null) {
            if (mediaView != null) {
                mediaView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
                this.f5818j.addView(mediaView);
            } else if (maxNativeAd.getFormat() == MaxAdFormat.LEADER) {
                this.f5818j.setVisibility(8);
            }
        }
        m4872a();
        postDelayed(new Runnable() { // from class: com.applovin.mediation.nativeAds.MaxNativeAdView.1
            @Override // java.lang.Runnable
            public void run() {
                MaxNativeAdView.this.setSelected(true);
            }
        }, 2000L);
    }

    /* renamed from: b */
    private void m4869b(MaxNativeAd maxNativeAd) {
        if (this.f5810b != null) {
            if (StringUtils.isValidString(maxNativeAd.getTitle())) {
                this.f5810b.setText(maxNativeAd.getTitle());
            } else {
                this.f5810b.setText((CharSequence) null);
            }
        }
        String body = maxNativeAd.getBody();
        if (this.f5812d != null) {
            if (StringUtils.isValidString(body)) {
                this.f5812d.setText(body);
            } else {
                this.f5812d.setText((CharSequence) null);
            }
        }
        String advertiser = maxNativeAd.getAdvertiser();
        if (this.f5811c != null) {
            if (StringUtils.isValidString(advertiser)) {
                this.f5811c.setText(advertiser);
            } else {
                this.f5811c.setText((CharSequence) null);
            }
        }
        String callToAction = maxNativeAd.getCallToAction();
        if (this.f5819k != null) {
            if (StringUtils.isValidString(callToAction)) {
                this.f5819k.setText(callToAction);
            } else {
                this.f5819k.setText((CharSequence) null);
            }
        }
        MaxNativeAd.MaxNativeAdImage icon = maxNativeAd.getIcon();
        ImageView imageView = this.f5813e;
        if (imageView != null) {
            if (icon == null) {
                imageView.setImageDrawable(null);
            } else if (icon.getDrawable() != null) {
                this.f5813e.setImageDrawable(icon.getDrawable());
            } else if (icon.getUri() != null) {
                this.f5813e.setImageURI(icon.getUri());
            } else {
                this.f5813e.setImageDrawable(null);
            }
        }
        View mediaView = maxNativeAd.getMediaView();
        ViewGroup viewGroup = this.f5817i;
        if (viewGroup != null) {
            if (mediaView != null) {
                mediaView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.f5817i.addView(mediaView);
            } else {
                viewGroup.removeAllViews();
            }
        }
        View optionsView = maxNativeAd.getOptionsView();
        ViewGroup viewGroup2 = this.f5815g;
        if (viewGroup2 != null) {
            if (optionsView == null) {
                viewGroup2.removeAllViews();
                return;
            }
            optionsView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f5815g.addView(optionsView);
        }
    }

    public TextView getAdvertiserTextView() {
        return this.f5811c;
    }

    public TextView getBodyTextView() {
        return this.f5812d;
    }

    public Button getCallToActionButton() {
        return this.f5819k;
    }

    @Deprecated
    public FrameLayout getIconContentView() {
        return this.f5814f;
    }

    public ImageView getIconImageView() {
        return this.f5813e;
    }

    public View getMainView() {
        return this.f5809a;
    }

    @Deprecated
    public FrameLayout getMediaContentView() {
        return this.f5818j;
    }

    public ViewGroup getMediaContentViewGroup() {
        FrameLayout frameLayout = this.f5817i;
        if (frameLayout == null) {
            frameLayout = this.f5818j;
        }
        return frameLayout;
    }

    @Deprecated
    public FrameLayout getOptionsContentView() {
        return this.f5816h;
    }

    public ViewGroup getOptionsContentViewGroup() {
        FrameLayout frameLayout = this.f5815g;
        if (frameLayout == null) {
            frameLayout = this.f5816h;
        }
        return frameLayout;
    }

    public TextView getTitleTextView() {
        return this.f5810b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1080b c1080b = this.f5820l;
        if (c1080b != null) {
            c1080b.m6541b();
        }
        if (!isHardwareAccelerated()) {
            C1479t.m5108h("MaxNativeAdView", "Attached to non-hardware accelerated window: some native ad views require hardware accelerated Activities to render properly.");
        }
    }

    public void recycle() {
        ViewGroup viewGroup;
        C1080b c1080b = this.f5820l;
        if (c1080b != null) {
            c1080b.m6543a();
            this.f5820l = null;
        }
        View view = this.f5809a;
        if (view == null || view.getParent() == this || (viewGroup = (ViewGroup) this.f5809a.getParent()) == null) {
            return;
        }
        viewGroup.removeAllViews();
        addView(this.f5809a);
        removeView(viewGroup);
    }

    public void render(C1047d c1047d, AbstractC1078a.AbstractC1079a abstractC1079a, C1408l c1408l) {
        recycle();
        this.f5820l = new C1080b(c1047d, abstractC1079a, c1408l);
        MaxNativeAd m6667u = c1047d.m6667u();
        if (StringUtils.isValidString(c1047d.m6665w())) {
            m4871a(m6667u);
        } else {
            m4869b(m6667u);
        }
    }
}
