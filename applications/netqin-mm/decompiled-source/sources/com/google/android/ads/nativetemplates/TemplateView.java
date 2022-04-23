package com.google.android.ads.nativetemplates;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import p131c.p161d.p162a.p169c.C2488a;
import p131c.p161d.p162a.p169c.C2489b;
import p131c.p161d.p162a.p169c.C2490c;
import p131c.p161d.p170b.p171a.p172a.C2491a;
/* loaded from: classes-dex2jar.jar:com/google/android/ads/nativetemplates/TemplateView.class */
public class TemplateView extends FrameLayout {

    /* renamed from: a */
    public int f21922a;

    /* renamed from: b */
    public C2491a f21923b;

    /* renamed from: c */
    public UnifiedNativeAdView f21924c;

    /* renamed from: d */
    public LinearLayout f21925d;

    /* renamed from: e */
    public TextView f21926e;

    /* renamed from: f */
    public LinearLayout f21927f;

    /* renamed from: g */
    public TextView f21928g;

    /* renamed from: h */
    public LinearLayout f21929h;

    /* renamed from: i */
    public RatingBar f21930i;

    /* renamed from: j */
    public TextView f21931j;

    /* renamed from: k */
    public ImageView f21932k;

    /* renamed from: l */
    public MediaView f21933l;

    /* renamed from: m */
    public LinearLayout f21934m;

    /* renamed from: n */
    public Button f21935n;

    /* renamed from: o */
    public LinearLayout f21936o;

    public TemplateView(Context context) {
        super(context);
    }

    public TemplateView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m18759a(context, attributeSet);
    }

    public TemplateView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m18759a(context, attributeSet);
    }

    public TemplateView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m18759a(context, attributeSet);
    }

    /* renamed from: a */
    public final void m18760a() {
        this.f21923b.m29663a();
        throw null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final void m18759a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2490c.TemplateView, 0, 0);
        try {
            this.f21922a = obtainStyledAttributes.getResourceId(C2490c.TemplateView_gnt_template_type, C2489b.gnt_medium_template_view);
            obtainStyledAttributes.recycle();
            ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(this.f21922a, this);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public final boolean m18758a(UnifiedNativeAd unifiedNativeAd) {
        return !m18757a(unifiedNativeAd.mo16793b()) && !m18757a(unifiedNativeAd.mo16785j());
    }

    /* renamed from: a */
    public final boolean m18757a(String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: b */
    public final boolean m18756b(UnifiedNativeAd unifiedNativeAd) {
        return !m18757a(unifiedNativeAd.mo16793b()) && m18757a(unifiedNativeAd.mo16785j());
    }

    /* renamed from: c */
    public final boolean m18755c(UnifiedNativeAd unifiedNativeAd) {
        return !m18757a(unifiedNativeAd.mo16785j()) && m18757a(unifiedNativeAd.mo16793b());
    }

    public UnifiedNativeAdView getNativeAdView() {
        return this.f21924c;
    }

    public String getTemplateTypeName() {
        int i = this.f21922a;
        return i == C2489b.gnt_medium_template_view ? "medium_template" : i == C2489b.gnt_small_template_view ? "small_template" : "";
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f21924c = (UnifiedNativeAdView) findViewById(C2488a.native_ad_view);
        this.f21926e = (TextView) findViewById(C2488a.primary);
        this.f21928g = (TextView) findViewById(C2488a.secondary);
        this.f21927f = (LinearLayout) findViewById(C2488a.body);
        RatingBar ratingBar = (RatingBar) findViewById(C2488a.rating_bar);
        this.f21930i = ratingBar;
        ratingBar.setEnabled(false);
        this.f21931j = (TextView) findViewById(C2488a.tertiary);
        this.f21929h = (LinearLayout) findViewById(C2488a.third_line);
        this.f21935n = (Button) findViewById(C2488a.cta);
        this.f21932k = (ImageView) findViewById(C2488a.icon);
        this.f21933l = (MediaView) findViewById(C2488a.media_view);
        this.f21925d = (LinearLayout) findViewById(C2488a.headline);
        this.f21934m = (LinearLayout) findViewById(C2488a.cta_parent);
        this.f21936o = (LinearLayout) findViewById(C2488a.background);
    }

    public void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        r8 = unifiedNativeAd.mo16785j();
        String b = unifiedNativeAd.mo16793b();
        String e = unifiedNativeAd.mo16790e();
        String c = unifiedNativeAd.mo16792c();
        String d = unifiedNativeAd.mo16791d();
        Double i = unifiedNativeAd.mo16786i();
        NativeAd.Image f = unifiedNativeAd.mo16789f();
        this.f21924c.setCallToActionView(this.f21934m);
        this.f21924c.setHeadlineView(this.f21925d);
        this.f21924c.setMediaView(this.f21933l);
        if (m18755c(unifiedNativeAd)) {
            this.f21924c.setStoreView(this.f21931j);
            this.f21929h.setVisibility(0);
        } else if (m18756b(unifiedNativeAd)) {
            this.f21924c.setAdvertiserView(this.f21931j);
            this.f21929h.setVisibility(0);
            this.f21928g.setLines(1);
        } else if (m18758a(unifiedNativeAd)) {
            this.f21924c.setAdvertiserView(this.f21931j);
            this.f21929h.setVisibility(0);
            this.f21928g.setLines(1);
        } else {
            this.f21929h.setVisibility(8);
            this.f21928g.setLines(3);
            b = "";
        }
        this.f21926e.setText(e);
        this.f21931j.setText(b);
        this.f21935n.setText(d);
        if (i == null || i.doubleValue() <= 0.0d) {
            this.f21928g.setText(c);
            this.f21928g.setVisibility(0);
            this.f21930i.setVisibility(8);
            this.f21924c.setBodyView(this.f21928g);
        } else {
            this.f21928g.setVisibility(8);
            this.f21930i.setVisibility(0);
            this.f21930i.setMax(5);
            this.f21924c.setStarRatingView(this.f21930i);
        }
        if (f != null) {
            this.f21932k.setVisibility(0);
            this.f21932k.setImageDrawable(f.getDrawable());
        } else {
            this.f21932k.setVisibility(8);
        }
        this.f21924c.setNativeAd(unifiedNativeAd);
    }

    public void setStyles(C2491a aVar) {
        this.f21923b = aVar;
        m18760a();
        throw null;
    }
}
