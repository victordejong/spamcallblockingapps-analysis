package com.applovin.impl.mediation.ads;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.p038a.C1045b;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1319d;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.C1549x;
import com.applovin.impl.sdk.C1550y;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.C1486b;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.C1536p;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl.class */
public class MaxAdViewImpl extends AbstractC1078a implements C1319d.AbstractC1321a, C1550y.AbstractC1553a {

    /* renamed from: a */
    private final Context f3818a;

    /* renamed from: b */
    private final MaxAdView f3819b;

    /* renamed from: d */
    private final View f3821d;

    /* renamed from: f */
    private C1045b f3823f;

    /* renamed from: g */
    private String f3824g;

    /* renamed from: h */
    private final C1057a f3825h;

    /* renamed from: i */
    private final C1059c f3826i;

    /* renamed from: j */
    private final C1319d f3827j;

    /* renamed from: k */
    private final C1549x f3828k;

    /* renamed from: l */
    private final C1550y f3829l;

    /* renamed from: o */
    private boolean f3832o;

    /* renamed from: p */
    private boolean f3833p;

    /* renamed from: q */
    private boolean f3834q;

    /* renamed from: r */
    private boolean f3835r;

    /* renamed from: t */
    private boolean f3837t;

    /* renamed from: u */
    private boolean f3838u;

    /* renamed from: v */
    private boolean f3839v;

    /* renamed from: c */
    private final String f3820c = UUID.randomUUID().toString().toLowerCase(Locale.US);

    /* renamed from: e */
    private long f3822e = Long.MAX_VALUE;

    /* renamed from: m */
    private final Object f3830m = new Object();

    /* renamed from: n */
    private C1045b f3831n = null;

    /* renamed from: s */
    private boolean f3836s = false;

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$a.class */
    public class C1057a extends AbstractC1058b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C1057a() {
            super();
            MaxAdViewImpl.this = r5;
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
            C1479t c1479t = maxAdViewImpl.logger;
            String str2 = maxAdViewImpl.tag;
            StringBuilder m8752j = C0082b.m8752j("Calling ad load failed callback for publisher: ");
            m8752j.append(MaxAdViewImpl.this.adListener);
            c1479t.m5116b(str2, m8752j.toString());
            C1496j.m5026a(MaxAdViewImpl.this.adListener, str, maxError, true);
            MaxAdViewImpl.this.m6593a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.f3836s) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                C1479t c1479t = maxAdViewImpl.logger;
                String str = maxAdViewImpl.tag;
                StringBuilder m8752j = C0082b.m8752j("Precache ad with ad unit ID '");
                m8752j.append(MaxAdViewImpl.this.adUnitId);
                m8752j.append("' loaded after MaxAdView was destroyed. Destroying the ad.");
                c1479t.m5116b(str, m8752j.toString());
                MaxAdViewImpl.this.sdk.m5539D().destroyAd(maxAd);
                return;
            }
            C1045b c1045b = (C1045b) maxAd;
            c1045b.m6621d(MaxAdViewImpl.this.f3824g);
            c1045b.m6620e(MaxAdViewImpl.this.customPostbackData);
            if (c1045b.m6691w() == null) {
                MaxAdViewImpl.this.sdk.m5539D().destroyAd(c1045b);
                onAdLoadFailed(c1045b.getAdUnitId(), new MaxErrorImpl(-5001, "Ad view not fully loaded"));
                return;
            }
            MaxAdViewImpl.this.m6605a(c1045b);
            if (c1045b.m6689y()) {
                long m6688z = c1045b.m6688z();
                C1479t m5542A = MaxAdViewImpl.this.sdk.m5542A();
                String str2 = MaxAdViewImpl.this.tag;
                m5542A.m5116b(str2, "Scheduling banner ad refresh " + m6688z + " milliseconds from now for '" + MaxAdViewImpl.this.adUnitId + "'...");
                MaxAdViewImpl.this.f3827j.m5798a(m6688z);
                if (MaxAdViewImpl.this.f3827j.m5791f() || MaxAdViewImpl.this.f3833p) {
                    MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                    maxAdViewImpl2.logger.m5116b(maxAdViewImpl2.tag, "Pausing ad refresh for publisher");
                    MaxAdViewImpl.this.f3827j.m5793d();
                }
            }
            MaxAdViewImpl maxAdViewImpl3 = MaxAdViewImpl.this;
            C1479t c1479t2 = maxAdViewImpl3.logger;
            String str3 = maxAdViewImpl3.tag;
            StringBuilder m8752j2 = C0082b.m8752j("Calling ad load success callback for publisher: ");
            m8752j2.append(MaxAdViewImpl.this.adListener);
            c1479t2.m5116b(str3, m8752j2.toString());
            C1496j.m5028a(MaxAdViewImpl.this.adListener, maxAd, true);
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$b.class */
    public abstract class AbstractC1058b implements AbstractC1078a.AbstractC1079a, MaxAdListener, MaxAdRevenueListener, MaxAdViewAdListener {
        private AbstractC1058b() {
            MaxAdViewImpl.this = r4;
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f3831n)) {
                C1496j.m4999d(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f3831n)) {
                if (MaxAdViewImpl.this.f3831n.m6695A()) {
                    MaxAdViewImpl.this.startAutoRefresh();
                }
                C1496j.m4991h(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            if (maxAd.equals(MaxAdViewImpl.this.f3831n)) {
                C1496j.m5031a(MaxAdViewImpl.this.adListener, maxAd, maxError, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f3831n)) {
                C1496j.m5008b(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f3831n)) {
                if (MaxAdViewImpl.this.f3831n.m6695A()) {
                    MaxAdViewImpl.this.stopAutoRefresh();
                }
                C1496j.m4993g(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f3831n)) {
                C1496j.m5002c(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            C1496j.m5024a(MaxAdViewImpl.this.revenueListener, maxAd, true);
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$c.class */
    public class C1059c extends AbstractC1058b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C1059c() {
            super();
            MaxAdViewImpl.this = r5;
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
            C1479t c1479t = maxAdViewImpl.logger;
            String str2 = maxAdViewImpl.tag;
            StringBuilder m8752j = C0082b.m8752j("Failed to precache ad for refresh with error code: ");
            m8752j.append(maxError.getCode());
            c1479t.m5116b(str2, m8752j.toString());
            MaxAdViewImpl.this.m6593a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (!MaxAdViewImpl.this.f3836s) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.m5116b(maxAdViewImpl.tag, "Successfully pre-cached ad for refresh");
                MaxAdViewImpl.this.m6594a(maxAd);
                return;
            }
            MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
            C1479t c1479t = maxAdViewImpl2.logger;
            String str = maxAdViewImpl2.tag;
            StringBuilder m8752j = C0082b.m8752j("Ad with ad unit ID '");
            m8752j.append(MaxAdViewImpl.this.adUnitId);
            m8752j.append("' loaded after MaxAdView was destroyed. Destroying the ad.");
            c1479t.m5116b(str, m8752j.toString());
            MaxAdViewImpl.this.sdk.m5539D().destroyAd(maxAd);
        }
    }

    public MaxAdViewImpl(String str, MaxAdFormat maxAdFormat, MaxAdView maxAdView, View view, C1408l c1408l, Context context) {
        super(str, maxAdFormat, "MaxAdView", c1408l);
        if (context != null) {
            this.f3818a = context.getApplicationContext();
            this.f3819b = maxAdView;
            this.f3821d = view;
            this.f3825h = new C1057a();
            this.f3826i = new C1059c();
            this.f3827j = new C1319d(c1408l, this);
            this.f3828k = new C1549x(maxAdView, c1408l);
            this.f3829l = new C1550y(maxAdView, c1408l, this);
            C1479t c1479t = this.logger;
            String str2 = this.tag;
            c1479t.m5116b(str2, "Created new MaxAdView (" + this + ")");
            return;
        }
        throw new IllegalArgumentException("No context specified");
    }

    /* renamed from: a */
    public void m6608a() {
        C1045b c1045b;
        MaxAdView maxAdView = this.f3819b;
        if (maxAdView != null) {
            C1486b.m5093a(maxAdView, this.f3821d);
        }
        this.f3829l.m4906a();
        synchronized (this.f3830m) {
            c1045b = this.f3831n;
        }
        if (c1045b != null) {
            this.sdk.m5539D().destroyAd(c1045b);
        }
    }

    /* renamed from: a */
    public void m6607a(long j) {
        if (!Utils.bitMaskContainsFlag(j, ((Long) this.sdk.m5511a(C1313a.f4712y)).longValue())) {
            this.logger.m5116b(this.tag, "No undesired viewability flags matched - scheduling viewability");
            this.f3832o = false;
            m6591b();
            return;
        }
        C1479t c1479t = this.logger;
        String str = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Undesired flags matched - current: ");
        m8752j.append(Long.toBinaryString(j));
        m8752j.append(", undesired: ");
        m8752j.append(Long.toBinaryString(j));
        c1479t.m5116b(str, m8752j.toString());
        this.logger.m5116b(this.tag, "Waiting for refresh timer to manually fire request");
        this.f3832o = true;
    }

    /* renamed from: a */
    public void m6606a(View view, C1045b c1045b) {
        int m6693u = c1045b.m6693u();
        int m6692v = c1045b.m6692v();
        int i = -1;
        int dpToPx = m6693u == -1 ? -1 : AppLovinSdkUtils.dpToPx(view.getContext(), m6693u);
        if (m6692v != -1) {
            i = AppLovinSdkUtils.dpToPx(view.getContext(), m6692v);
        }
        RelativeLayout.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(dpToPx, i);
        } else {
            layoutParams.width = dpToPx;
            layoutParams.height = i;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            this.logger.m5116b(this.tag, "Pinning ad view to MAX ad view with width: " + dpToPx + " and height: " + i + ".");
            int[] m4947a = C1536p.m4947a(this.f3819b.getGravity(), 10, 14);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            int length = m4947a.length;
            for (int i2 = 0; i2 < length; i2++) {
                layoutParams2.addRule(m4947a[i2]);
            }
        }
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public void m6605a(final C1045b c1045b) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl.2
            /* JADX WARN: Removed duplicated region for block: B:36:0x00fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r0v57, types: [long] */
            /* JADX WARN: Type inference failed for: r0v64, types: [long] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 334
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.ads.MaxAdViewImpl.RunnableC10542.run():void");
            }
        });
    }

    /* renamed from: a */
    public void m6604a(C1045b c1045b, long j) {
        this.logger.m5116b(this.tag, "Scheduling viewability impression for ad...");
        this.sdk.m5539D().processViewabilityAdImpressionPostback(c1045b, j, this.f3825h);
    }

    /* renamed from: a */
    public void m6595a(final AbstractC1078a.AbstractC1079a abstractC1079a) {
        if (m6582e()) {
            C1479t.m5107i(this.tag, "Failed to load new ad - this instance is already destroyed");
        } else {
            AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MaxAdViewImpl.this.f3831n != null) {
                        long m4907a = MaxAdViewImpl.this.f3828k.m4907a(MaxAdViewImpl.this.f3831n);
                        MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                        maxAdViewImpl.loadRequestBuilder.m5161a("visible_ad_ad_unit_id", maxAdViewImpl.f3831n.getAdUnitId()).m5161a("viewability_flags", String.valueOf(m4907a));
                    } else {
                        MaxAdViewImpl.this.loadRequestBuilder.m5159b("visible_ad_ad_unit_id").m5159b("viewability_flags");
                    }
                    MaxAdViewImpl.this.loadRequestBuilder.m5161a("viewport_width", String.valueOf(AppLovinSdkUtils.pxToDp(MaxAdViewImpl.this.f3819b.getContext(), MaxAdViewImpl.this.f3819b.getWidth()))).m5161a("viewport_height", String.valueOf(AppLovinSdkUtils.pxToDp(MaxAdViewImpl.this.f3819b.getContext(), MaxAdViewImpl.this.f3819b.getHeight()))).m5161a("auto_refresh_stopped", String.valueOf(MaxAdViewImpl.this.f3827j.m5791f() || MaxAdViewImpl.this.f3833p));
                    MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                    C1479t c1479t = maxAdViewImpl2.logger;
                    String str = maxAdViewImpl2.tag;
                    StringBuilder m8752j = C0082b.m8752j("Loading ");
                    m8752j.append(MaxAdViewImpl.this.adFormat.getLabel().toLowerCase(Locale.ENGLISH));
                    m8752j.append(" ad for '");
                    m8752j.append(MaxAdViewImpl.this.adUnitId);
                    m8752j.append("' and notifying ");
                    m8752j.append(abstractC1079a);
                    m8752j.append("...");
                    c1479t.m5116b(str, m8752j.toString());
                    MediationServiceImpl m5539D = MaxAdViewImpl.this.sdk.m5539D();
                    MaxAdViewImpl maxAdViewImpl3 = MaxAdViewImpl.this;
                    String str2 = maxAdViewImpl3.adUnitId;
                    String str3 = maxAdViewImpl3.f3820c;
                    MaxAdViewImpl maxAdViewImpl4 = MaxAdViewImpl.this;
                    m5539D.loadAd(str2, str3, maxAdViewImpl4.adFormat, maxAdViewImpl4.localExtraParameters, maxAdViewImpl4.loadRequestBuilder.m5164a(), MaxAdViewImpl.this.f3818a, abstractC1079a);
                }
            });
        }
    }

    /* renamed from: a */
    public void m6594a(MaxAd maxAd) {
        this.f3835r = false;
        if (!this.f3834q) {
            this.logger.m5116b(this.tag, "Saving pre-cache ad...");
            this.f3823f = (C1045b) maxAd;
            return;
        }
        this.f3834q = false;
        C1479t c1479t = this.logger;
        String str = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Rendering precache request ad: ");
        m8752j.append(maxAd.getAdUnitId());
        m8752j.append("...");
        c1479t.m5116b(str, m8752j.toString());
        this.f3825h.onAdLoaded(maxAd);
    }

    /* renamed from: a */
    public void m6593a(MaxError maxError) {
        if (this.sdk.m5480b(C1313a.f4702o).contains(String.valueOf(maxError.getCode()))) {
            C1479t m5542A = this.sdk.m5542A();
            String str = this.tag;
            StringBuilder m8752j = C0082b.m8752j("Ignoring banner ad refresh for error code ");
            m8752j.append(maxError.getCode());
            m5542A.m5116b(str, m8752j.toString());
        } else if (this.f3833p || this.f3827j.m5791f()) {
            if (this.f3835r) {
                this.logger.m5116b(this.tag, "Refresh pre-cache failed when auto-refresh is stopped");
                this.f3835r = false;
            }
            if (!this.f3834q) {
                return;
            }
            this.logger.m5116b(this.tag, "Refresh pre-cache failed - calling ad load failed callback for publisher");
            C1496j.m5027a(this.adListener, this.adUnitId, maxError);
        } else {
            this.f3832o = true;
            this.f3835r = false;
            long longValue = ((Long) this.sdk.m5511a(C1313a.f4701n)).longValue();
            if (longValue < 0) {
                return;
            }
            C1479t m5542A2 = this.sdk.m5542A();
            String str2 = this.tag;
            m5542A2.m5116b(str2, "Scheduling failed banner ad refresh " + longValue + " milliseconds from now for '" + this.adUnitId + "'...");
            this.f3827j.m5798a(longValue);
        }
    }

    /* renamed from: a */
    private void m6592a(String str, String str2) {
        C1479t c1479t;
        String str3;
        StringBuilder sb;
        String str4;
        if ("allow_pause_auto_refresh_immediately".equalsIgnoreCase(str)) {
            this.f3837t = Boolean.parseBoolean(str2);
            c1479t = this.logger;
            str3 = this.tag;
            sb = new StringBuilder();
            str4 = "Updated allow immediate auto-refresh pause and ad load to: ";
        } else if ("disable_precache".equalsIgnoreCase(str)) {
            this.f3838u = Boolean.parseBoolean(str2);
            c1479t = this.logger;
            str3 = this.tag;
            sb = new StringBuilder();
            str4 = "Updated precached disabled to: ";
        } else if (!"adaptive_banner".equalsIgnoreCase(str)) {
            return;
        } else {
            this.f3839v = Boolean.parseBoolean(str2);
            setLocalExtraParameter(str, str2);
            c1479t = this.logger;
            str3 = this.tag;
            sb = new StringBuilder();
            str4 = "Updated is adaptive banner to: ";
        }
        sb.append(str4);
        sb.append(str2);
        c1479t.m5116b(str3, sb.toString());
    }

    /* renamed from: b */
    private void m6591b() {
        if (!m6584d()) {
            return;
        }
        this.logger.m5116b(this.tag, "Scheduling refresh precache request now");
        this.f3835r = true;
        this.sdk.m5525R().m5653a(new C1387z(this.sdk, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl.3
            @Override // java.lang.Runnable
            public void run() {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.m5116b(maxAdViewImpl.tag, "Loading ad for pre-cache request...");
                MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                maxAdViewImpl2.m6595a(maxAdViewImpl2.f3826i);
            }
        }), C1107c.m6456a(this.adFormat));
    }

    /* renamed from: b */
    public void m6590b(C1045b c1045b) {
        int height = this.f3819b.getHeight();
        int width = this.f3819b.getWidth();
        if (height > 0 || width > 0) {
            int pxToDp = AppLovinSdkUtils.pxToDp(this.f3818a, height);
            int pxToDp2 = AppLovinSdkUtils.pxToDp(this.f3818a, width);
            MaxAdFormat format = c1045b.getFormat();
            int height2 = (this.f3839v ? format.getAdaptiveSize(pxToDp2, this.f3818a) : format.getSize()).getHeight();
            int width2 = format.getSize().getWidth();
            if (pxToDp >= height2 && pxToDp2 >= width2) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("\n**************************************************\n`MaxAdView` size ");
            sb.append(pxToDp2);
            sb.append("x");
            sb.append(pxToDp);
            sb.append(" dp smaller than required ");
            sb.append(this.f3839v ? "adaptive " : "");
            sb.append("size: ");
            sb.append(width2);
            sb.append("x");
            sb.append(height2);
            sb.append(" dp\nSome mediated networks (e.g. Google Ad Manager) may not render correctly\n**************************************************\n");
            C1479t.m5108h("AppLovinSdk", sb.toString());
        }
    }

    /* renamed from: c */
    private void m6587c() {
        C1479t c1479t = this.logger;
        String str = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Rendering for cached ad: ");
        m8752j.append(this.f3823f);
        m8752j.append("...");
        c1479t.m5116b(str, m8752j.toString());
        this.f3825h.onAdLoaded(this.f3823f);
        this.f3823f = null;
    }

    /* renamed from: d */
    private boolean m6584d() {
        if (this.f3838u) {
            return false;
        }
        return ((Boolean) this.sdk.m5511a(C1313a.f4713z)).booleanValue();
    }

    /* renamed from: e */
    private boolean m6582e() {
        boolean z;
        synchronized (this.f3830m) {
            z = this.f3836s;
        }
        return z;
    }

    @Override // com.applovin.impl.mediation.ads.AbstractC1078a
    public void destroy() {
        m6608a();
        if (this.f3823f != null) {
            this.sdk.m5539D().destroyAd(this.f3823f);
        }
        synchronized (this.f3830m) {
            this.f3836s = true;
        }
        this.f3827j.m5794c();
        super.destroy();
    }

    public MaxAdFormat getAdFormat() {
        return this.adFormat;
    }

    public String getPlacement() {
        return this.f3824g;
    }

    public void loadAd() {
        C1479t c1479t = this.logger;
        String str = this.tag;
        c1479t.m5116b(str, "" + this + " Loading ad for " + this.adUnitId + "...");
        boolean z = this.f3837t || ((Boolean) this.sdk.m5511a(C1313a.f4708u)).booleanValue();
        if (z && !this.f3827j.m5791f() && this.f3827j.m5799a()) {
            String str2 = this.tag;
            StringBuilder m8752j = C0082b.m8752j("Unable to load a new ad. An ad refresh has already been scheduled in ");
            m8752j.append(TimeUnit.MILLISECONDS.toSeconds(this.f3827j.m5796b()));
            m8752j.append(" seconds.");
            C1479t.m5107i(str2, m8752j.toString());
            return;
        }
        if (z) {
            if (this.f3823f != null) {
                this.logger.m5116b(this.tag, "Rendering cached ad");
                m6587c();
                return;
            } else if (this.f3835r) {
                this.logger.m5116b(this.tag, "Waiting for precache ad to load to render");
                this.f3834q = true;
                return;
            }
        }
        this.logger.m5116b(this.tag, "Loading ad...");
        m6595a(this.f3825h);
    }

    @Override // com.applovin.impl.sdk.C1319d.AbstractC1321a
    public void onAdRefresh() {
        String str;
        String str2;
        C1479t c1479t;
        this.f3834q = false;
        if (this.f3823f != null) {
            m6587c();
            return;
        }
        if (!m6584d()) {
            c1479t = this.logger;
            str2 = this.tag;
            str = "Refreshing ad from network...";
        } else if (!this.f3832o) {
            this.logger.m5111e(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
            this.f3834q = true;
            return;
        } else {
            c1479t = this.logger;
            str2 = this.tag;
            str = "Refreshing ad from network due to viewability requirements not met for refresh request...";
        }
        c1479t.m5116b(str2, str);
        loadAd();
    }

    @Override // com.applovin.impl.sdk.C1550y.AbstractC1553a
    public void onLogVisibilityImpression() {
        m6604a(this.f3831n, this.f3828k.m4907a(this.f3831n));
    }

    public void onWindowVisibilityChanged(int i) {
        if (!((Boolean) this.sdk.m5511a(C1313a.f4706s)).booleanValue() || !this.f3827j.m5799a()) {
            return;
        }
        if (C1536p.m4949a(i)) {
            this.logger.m5116b(this.tag, "Ad view visible");
            this.f3827j.m5789h();
            return;
        }
        this.logger.m5116b(this.tag, "Ad view hidden");
        this.f3827j.m5790g();
    }

    @Override // com.applovin.impl.mediation.ads.AbstractC1078a
    public void setExtraParameter(String str, String str2) {
        super.setExtraParameter(str, str2);
        m6592a(str, str2);
    }

    public void setPlacement(String str) {
        if (this.f3831n != null) {
            String str2 = this.tag;
            StringBuilder m8752j = C0082b.m8752j("Placement for Ad Unit ID (");
            m8752j.append(this.adUnitId);
            m8752j.append(") was set after load was called. For the ads to be correctly attributed to this placement, please set the placement before loading the ");
            m8752j.append(this.adFormat.getLabel());
            m8752j.append(".");
            C1479t.m5107i(str2, m8752j.toString());
        }
        this.f3824g = str;
    }

    public void setPublisherBackgroundColor(int i) {
        this.f3822e = i;
    }

    public void startAutoRefresh() {
        String str;
        String str2;
        C1479t c1479t;
        this.f3833p = false;
        if (this.f3827j.m5791f()) {
            this.f3827j.m5792e();
            c1479t = this.logger;
            str2 = this.tag;
            StringBuilder m8752j = C0082b.m8752j("Resumed auto-refresh with remaining time: ");
            m8752j.append(this.f3827j.m5796b());
            m8752j.append("ms");
            str = m8752j.toString();
        } else {
            c1479t = this.logger;
            str2 = this.tag;
            str = "Ignoring call to startAutoRefresh() - ad refresh is not paused";
        }
        c1479t.m5116b(str2, str);
    }

    public void stopAutoRefresh() {
        if (this.f3831n == null) {
            if (this.f3837t || ((Boolean) this.sdk.m5511a(C1313a.f4708u)).booleanValue()) {
                this.f3833p = true;
                return;
            } else {
                C1479t.m5108h(this.tag, "Stopping auto-refresh has no effect until after the first ad has been loaded.");
                return;
            }
        }
        C1479t c1479t = this.logger;
        String str = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Pausing auto-refresh with remaining time: ");
        m8752j.append(this.f3827j.m5796b());
        m8752j.append("ms");
        c1479t.m5116b(str, m8752j.toString());
        this.f3827j.m5793d();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MaxAdView{adUnitId='");
        C0033h.m8882o(m8752j, this.adUnitId, '\'', ", adListener=");
        m8752j.append(this.adListener);
        m8752j.append(", isDestroyed=");
        m8752j.append(m6582e());
        m8752j.append('}');
        return m8752j.toString();
    }
}
