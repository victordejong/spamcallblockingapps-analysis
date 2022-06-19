package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PointF;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1469j;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.C1281a;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1326d;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.utils.C1486b;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.C1530k;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.applovin.impl.adview.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/b.class */
public class C0969b implements AppLovinCommunicatorSubscriber {

    /* renamed from: A */
    private volatile AppLovinAdViewEventListener f3572A;

    /* renamed from: B */
    private volatile AppLovinAdClickListener f3573B;

    /* renamed from: a */
    private Context f3575a;

    /* renamed from: b */
    private ViewGroup f3576b;

    /* renamed from: c */
    private C1408l f3577c;

    /* renamed from: d */
    private AppLovinAdServiceImpl f3578d;

    /* renamed from: e */
    private C1479t f3579e;

    /* renamed from: f */
    private AppLovinCommunicator f3580f;

    /* renamed from: g */
    private AppLovinAdSize f3581g;

    /* renamed from: h */
    private String f3582h;

    /* renamed from: i */
    private C1326d f3583i;

    /* renamed from: j */
    private C0990e f3584j;

    /* renamed from: k */
    private C0982c f3585k;

    /* renamed from: l */
    private C0984d f3586l;

    /* renamed from: m */
    private Runnable f3587m;

    /* renamed from: n */
    private Runnable f3588n;

    /* renamed from: o */
    private C1469j.C1471a f3589o;

    /* renamed from: y */
    private volatile AppLovinAdLoadListener f3599y;

    /* renamed from: z */
    private volatile AppLovinAdDisplayListener f3600z;

    /* renamed from: p */
    private volatile AbstractC1286e f3590p = null;

    /* renamed from: q */
    private volatile AppLovinAd f3591q = null;

    /* renamed from: r */
    private DialogC1003l f3592r = null;

    /* renamed from: s */
    private DialogC1003l f3593s = null;

    /* renamed from: t */
    private final AtomicReference<AppLovinAd> f3594t = new AtomicReference<>();

    /* renamed from: u */
    private final AtomicBoolean f3595u = new AtomicBoolean();

    /* renamed from: v */
    private volatile boolean f3596v = false;

    /* renamed from: w */
    private volatile boolean f3597w = false;

    /* renamed from: x */
    private volatile boolean f3598x = false;

    /* renamed from: C */
    private volatile AbstractC0994g f3574C = null;

    /* renamed from: com.applovin.impl.adview.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/b$a.class */
    public class RunnableC0980a implements Runnable {
        private RunnableC0980a() {
            C0969b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0969b.this.f3586l != null) {
                C0969b.this.f3586l.setVisibility(8);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.b$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/b$b.class */
    public class RunnableC0981b implements Runnable {
        private RunnableC0981b() {
            C0969b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0969b.this.f3590p != null) {
                if (C0969b.this.f3586l == null) {
                    StringBuilder m8752j = C0082b.m8752j("Unable to render advertisement for ad #");
                    m8752j.append(C0969b.this.f3590p.getAdIdNumber());
                    m8752j.append(". Please make sure you are not calling AppLovinAdView.destroy() prematurely.");
                    C1479t.m5107i("AppLovinAdView", m8752j.toString());
                    C1496j.m5036a(C0969b.this.f3572A, C0969b.this.f3590p, (AppLovinAdView) null, AppLovinAdViewDisplayErrorCode.WEBVIEW_NOT_FOUND);
                    return;
                }
                C0969b.this.m6886x();
                C1479t c1479t = C0969b.this.f3579e;
                StringBuilder m8752j2 = C0082b.m8752j("Rendering advertisement ad for #");
                m8752j2.append(C0969b.this.f3590p.getAdIdNumber());
                m8752j2.append("...");
                c1479t.m5116b("AppLovinAdView", m8752j2.toString());
                C0969b.m6927b(C0969b.this.f3586l, C0969b.this.f3590p.getSize());
                C0969b.this.f3586l.m6881a(C0969b.this.f3590p);
                if (C0969b.this.f3590p.getSize() != AppLovinAdSize.INTERSTITIAL && !C0969b.this.f3597w) {
                    C0969b c0969b = C0969b.this;
                    c0969b.f3583i = new C1326d(c0969b.f3590p, C0969b.this.f3577c);
                    C0969b.this.f3583i.m5773a();
                    C0969b.this.f3586l.setStatsManagerHelper(C0969b.this.f3583i);
                    C0969b.this.f3590p.setHasShown(true);
                }
                if (C0969b.this.f3586l.getStatsManagerHelper() == null) {
                    return;
                }
                C0969b.this.f3586l.getStatsManagerHelper().m5772a((C0969b.this.f3590p.m5894x() ? null : 1) == 1 ? 1L : 0L);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.b$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/b$c.class */
    public static class C0982c implements AppLovinAdLoadListener {

        /* renamed from: a */
        private final C0969b f3617a;

        public C0982c(C0969b c0969b, C1408l c1408l) {
            if (c0969b != null) {
                if (c1408l == null) {
                    throw new IllegalArgumentException("No sdk specified");
                }
                this.f3617a = c0969b;
                return;
            }
            throw new IllegalArgumentException("No view specified");
        }

        /* renamed from: a */
        private C0969b m6885a() {
            return this.f3617a;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            C0969b m6885a = m6885a();
            if (m6885a != null) {
                m6885a.m6924b(appLovinAd);
            } else {
                C1479t.m5107i("AppLovinAdView", "Ad view has been garbage collected by the time an ad was received");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            C0969b m6885a = m6885a();
            if (m6885a != null) {
                m6885a.m6948a(i);
            }
        }
    }

    /* renamed from: a */
    private void m6943a(AppLovinAdView appLovinAdView, C1408l c1408l, AppLovinAdSize appLovinAdSize, String str, Context context) {
        if (appLovinAdView != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            if (appLovinAdSize == null) {
                throw new IllegalArgumentException("No ad size specified");
            }
            this.f3577c = c1408l;
            this.f3578d = c1408l.m5449u();
            this.f3579e = c1408l.m5542A();
            this.f3580f = AppLovinCommunicator.getInstance(context);
            this.f3581g = appLovinAdSize;
            this.f3582h = str;
            if (!(context instanceof AppLovinFullscreenActivity)) {
                context = context.getApplicationContext();
            }
            this.f3575a = context;
            this.f3576b = appLovinAdView;
            this.f3584j = new C0990e(this, c1408l);
            this.f3588n = new RunnableC0980a();
            this.f3587m = new RunnableC0981b();
            this.f3585k = new C0982c(this, c1408l);
            this.f3589o = new C1469j.C1471a();
            m6930a(appLovinAdSize);
            return;
        }
        throw new IllegalArgumentException("No parent view specified");
    }

    /* renamed from: a */
    private void m6929a(Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(runnable);
    }

    /* renamed from: b */
    public static void m6927b(View view, AppLovinAdSize appLovinAdSize) {
        if (view == null) {
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        String label = appLovinAdSize.getLabel();
        AppLovinAdSize appLovinAdSize2 = AppLovinAdSize.INTERSTITIAL;
        int i = -1;
        int applyDimension = label.equals(appLovinAdSize2.getLabel()) ? -1 : appLovinAdSize.getWidth() == -1 ? displayMetrics.widthPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        if (!appLovinAdSize.getLabel().equals(appLovinAdSize2.getLabel())) {
            i = appLovinAdSize.getHeight() == -1 ? displayMetrics.heightPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams2.width = applyDimension;
        layoutParams2.height = i;
        if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) layoutParams2;
            layoutParams3.addRule(10);
            layoutParams3.addRule(9);
        }
        view.setLayoutParams(layoutParams2);
    }

    /* renamed from: t */
    private void m6890t() {
        C1479t c1479t = this.f3579e;
        if (c1479t != null) {
            c1479t.m5116b("AppLovinAdView", "Destroying...");
        }
        C0984d c0984d = this.f3586l;
        if (c0984d != null) {
            ViewParent parent = c0984d.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f3586l);
            }
            this.f3586l.removeAllViews();
            this.f3586l.loadUrl("about:blank");
            this.f3586l.onPause();
            this.f3586l.destroyDrawingCache();
            this.f3586l.destroy();
            this.f3586l = null;
        }
        this.f3599y = null;
        this.f3600z = null;
        this.f3573B = null;
        this.f3572A = null;
        this.f3597w = true;
    }

    /* renamed from: u */
    private void m6889u() {
        m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.2
            @Override // java.lang.Runnable
            public void run() {
                if (C0969b.this.f3592r != null) {
                    C1479t c1479t = C0969b.this.f3579e;
                    StringBuilder m8752j = C0082b.m8752j("Detaching expanded ad: ");
                    m8752j.append(C0969b.this.f3592r.m6838a());
                    c1479t.m5116b("AppLovinAdView", m8752j.toString());
                    C0969b c0969b = C0969b.this;
                    c0969b.f3593s = c0969b.f3592r;
                    C0969b.this.f3592r = null;
                    C0969b c0969b2 = C0969b.this;
                    c0969b2.m6930a(c0969b2.f3581g);
                }
            }
        });
    }

    /* renamed from: v */
    public void m6888v() {
        m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.8
            @Override // java.lang.Runnable
            public void run() {
                C1281a c1281a;
                if (C0969b.this.f3593s == null && C0969b.this.f3592r == null) {
                    return;
                }
                if (C0969b.this.f3593s != null) {
                    c1281a = C0969b.this.f3593s.m6838a();
                    C0969b.this.f3593s.dismiss();
                    C0969b.this.f3593s = null;
                } else {
                    c1281a = C0969b.this.f3592r.m6838a();
                    C0969b.this.f3592r.dismiss();
                    C0969b.this.f3592r = null;
                }
                C1496j.m5010b(C0969b.this.f3572A, c1281a, (AppLovinAdView) C0969b.this.f3576b);
            }
        });
    }

    /* renamed from: w */
    private void m6887w() {
        C1326d c1326d = this.f3583i;
        if (c1326d != null) {
            c1326d.m5765c();
            this.f3583i = null;
        }
    }

    /* renamed from: x */
    public void m6886x() {
        AbstractC1286e abstractC1286e = this.f3590p;
        C1530k c1530k = new C1530k();
        c1530k.m4990a().m4986a(abstractC1286e).m4988a(m6893r());
        if (!Utils.isBML(abstractC1286e.getSize())) {
            c1530k.m4990a().m4984a("Fullscreen Ad Properties").m4981b(abstractC1286e);
        }
        c1530k.m4985a(this.f3577c);
        c1530k.m4990a();
        C1479t.m5110f("AppLovinAdView", c1530k.toString());
    }

    /* renamed from: a */
    public void m6949a() {
        if (this.f3577c == null || this.f3585k == null || this.f3575a == null || !this.f3596v) {
            C1479t.m5109g("AppLovinAdView", "Unable to load next ad: AppLovinAdView is not initialized.");
            return;
        }
        C0984d c0984d = this.f3586l;
        if (c0984d != null) {
            this.f3589o.m5161a("viewport_width", String.valueOf(AppLovinSdkUtils.pxToDp(this.f3575a, c0984d.getWidth()))).m5161a("viewport_height", String.valueOf(AppLovinSdkUtils.pxToDp(this.f3575a, this.f3586l.getHeight())));
        }
        this.f3578d.loadNextAd(this.f3582h, this.f3581g, this.f3589o.m5164a(), this.f3585k);
    }

    /* renamed from: a */
    public void m6948a(final int i) {
        if (!this.f3597w) {
            m6929a(this.f3588n);
        }
        m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (C0969b.this.f3599y == null) {
                        return;
                    }
                    C0969b.this.f3599y.failedToReceiveAd(i);
                } catch (Throwable th) {
                    C1479t.m5113c("AppLovinAdView", "Exception while running app load  callback", th);
                }
            }
        });
    }

    /* renamed from: a */
    public void m6947a(final PointF pointF) {
        m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.4
            @Override // java.lang.Runnable
            public void run() {
                if (C0969b.this.f3592r == null && (C0969b.this.f3590p instanceof C1281a) && C0969b.this.f3586l != null) {
                    C1281a c1281a = (C1281a) C0969b.this.f3590p;
                    Activity retrieveParentActivity = C0969b.this.f3575a instanceof Activity ? (Activity) C0969b.this.f3575a : Utils.retrieveParentActivity(C0969b.this.f3586l, C0969b.this.f3577c);
                    if (retrieveParentActivity == null) {
                        C1479t.m5107i("AppLovinAdView", "Unable to expand ad. No Activity found.");
                        Uri mo5906i = c1281a.mo5906i();
                        if (mo5906i != null) {
                            AppLovinAdServiceImpl appLovinAdServiceImpl = C0969b.this.f3578d;
                            AppLovinAdView m6893r = C0969b.this.m6893r();
                            C0969b c0969b = C0969b.this;
                            appLovinAdServiceImpl.trackAndLaunchClick(c1281a, m6893r, c0969b, mo5906i, pointF, c0969b.f3598x);
                            if (C0969b.this.f3583i != null) {
                                C0969b.this.f3583i.m5767b();
                            }
                        }
                        C0969b.this.f3586l.m6879a("javascript:al_onFailedExpand();");
                        return;
                    }
                    if (C0969b.this.f3576b != null) {
                        C0969b.this.f3576b.removeView(C0969b.this.f3586l);
                    }
                    C0969b.this.f3592r = new DialogC1003l(c1281a, C0969b.this.f3586l, retrieveParentActivity, C0969b.this.f3577c);
                    C0969b.this.f3592r.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.b.4.1
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            C0969b.this.m6907k();
                        }
                    });
                    C0969b.this.f3592r.show();
                    C1496j.m5037a(C0969b.this.f3572A, C0969b.this.f3590p, (AppLovinAdView) C0969b.this.f3576b);
                    if (C0969b.this.f3583i != null) {
                        C0969b.this.f3583i.m5763d();
                    }
                    if (!C0969b.this.f3590p.isOpenMeasurementEnabled()) {
                        return;
                    }
                    C0969b.this.f3590p.getAdEventTracker().m6064a((View) C0969b.this.f3592r.m6834b());
                }
            }
        });
    }

    /* renamed from: a */
    public void m6945a(final WebView webView) {
        m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.3
            @Override // java.lang.Runnable
            public void run() {
                webView.setVisibility(0);
            }
        });
        try {
            if (this.f3590p == this.f3591q || this.f3600z == null) {
                return;
            }
            this.f3591q = this.f3590p;
            C1496j.m5018a(this.f3600z, this.f3590p);
            this.f3586l.m6879a("javascript:al_onAdViewRendered();");
        } catch (Throwable th) {
            C1479t.m5113c("AppLovinAdView", "Exception while notifying ad display listener", th);
        }
    }

    /* renamed from: a */
    public void m6944a(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (appLovinAdView != null) {
            if (context == null) {
                C1479t.m5107i("AppLovinAdView", "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
                return;
            }
            AppLovinAdSize appLovinAdSize2 = appLovinAdSize;
            if (appLovinAdSize == null) {
                AppLovinAdSize m5095a = C1486b.m5095a(attributeSet);
                appLovinAdSize2 = m5095a;
                if (m5095a == null) {
                    appLovinAdSize2 = AppLovinAdSize.BANNER;
                }
            }
            AppLovinSdk appLovinSdk2 = appLovinSdk;
            if (appLovinSdk == null) {
                appLovinSdk2 = AppLovinSdk.getInstance(context);
            }
            if (appLovinSdk2 == null) {
                return;
            }
            m6943a(appLovinAdView, appLovinSdk2.coreSdk, appLovinAdSize2, str, context);
            if (!C1486b.m5092b(attributeSet)) {
                return;
            }
            m6949a();
            return;
        }
        throw new IllegalArgumentException("No parent view specified");
    }

    /* renamed from: a */
    public void m6942a(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        this.f3572A = appLovinAdViewEventListener;
    }

    /* renamed from: a */
    public void m6938a(AbstractC0994g abstractC0994g) {
        this.f3574C = abstractC0994g;
    }

    /* renamed from: a */
    public void m6937a(AbstractC1286e abstractC1286e, AppLovinAdView appLovinAdView, Uri uri, PointF pointF) {
        C1496j.m5019a(this.f3573B, abstractC1286e);
        if (appLovinAdView != null) {
            this.f3578d.trackAndLaunchClick(abstractC1286e, appLovinAdView, this, uri, pointF, this.f3598x);
        } else {
            this.f3579e.m5111e("AppLovinAdView", "Unable to process ad click - AppLovinAdView destroyed prematurely");
        }
    }

    /* renamed from: a */
    public void m6936a(C1326d c1326d) {
        C0984d c0984d = this.f3586l;
        if (c0984d != null) {
            c0984d.setStatsManagerHelper(c1326d);
        }
    }

    /* renamed from: a */
    public void m6935a(AppLovinAd appLovinAd) {
        m6934a(appLovinAd, (String) null);
    }

    /* renamed from: a */
    public void m6934a(AppLovinAd appLovinAd, String str) {
        if (appLovinAd != null) {
            Utils.validateAdSdkKey(appLovinAd, this.f3577c);
            if (!this.f3596v) {
                C1479t.m5109g("AppLovinAdView", "Unable to render ad: AppLovinAdView is not initialized.");
                return;
            }
            AbstractC1286e abstractC1286e = (AbstractC1286e) Utils.maybeRetrieveNonDummyAd(appLovinAd, this.f3577c);
            if (abstractC1286e == null || abstractC1286e == this.f3590p) {
                if (abstractC1286e == null) {
                    this.f3579e.m5112d("AppLovinAdView", "Unable to render ad. Ad is null. Internal inconsistency error.");
                    return;
                }
                C1479t c1479t = this.f3579e;
                StringBuilder m8752j = C0082b.m8752j("Ad #");
                m8752j.append(abstractC1286e.getAdIdNumber());
                m8752j.append(" is already showing, ignoring");
                c1479t.m5112d("AppLovinAdView", m8752j.toString());
                if (((Boolean) this.f3577c.m5511a(C1314b.f4797bZ)).booleanValue()) {
                    throw new IllegalStateException("Failed to display ad - ad can only be displayed once. Load the next ad.");
                }
                return;
            }
            C1479t c1479t2 = this.f3579e;
            StringBuilder m8752j2 = C0082b.m8752j("Rendering ad #");
            m8752j2.append(abstractC1286e.getAdIdNumber());
            m8752j2.append(" (");
            m8752j2.append(abstractC1286e.getSize());
            m8752j2.append(")");
            c1479t2.m5116b("AppLovinAdView", m8752j2.toString());
            C1496j.m5006b(this.f3600z, this.f3590p);
            if (abstractC1286e.getSize() != AppLovinAdSize.INTERSTITIAL) {
                m6887w();
            }
            if (this.f3590p != null && this.f3590p.isOpenMeasurementEnabled()) {
                this.f3590p.getAdEventTracker().mo6037e();
            }
            this.f3594t.set(null);
            this.f3591q = null;
            this.f3590p = abstractC1286e;
            if (!this.f3597w && Utils.isBML(this.f3581g)) {
                this.f3577c.m5449u().trackImpression(abstractC1286e);
            }
            if (this.f3592r != null) {
                m6889u();
            }
            m6929a(this.f3587m);
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    /* renamed from: a */
    public void m6933a(AppLovinAdClickListener appLovinAdClickListener) {
        this.f3573B = appLovinAdClickListener;
    }

    /* renamed from: a */
    public void m6932a(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f3600z = appLovinAdDisplayListener;
    }

    /* renamed from: a */
    public void m6931a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f3599y = appLovinAdLoadListener;
    }

    /* renamed from: a */
    public void m6930a(AppLovinAdSize appLovinAdSize) {
        try {
            C0984d c0984d = new C0984d(this.f3584j, this.f3577c, this.f3575a);
            this.f3586l = c0984d;
            c0984d.setBackgroundColor(0);
            this.f3586l.setWillNotCacheDrawing(false);
            this.f3576b.setBackgroundColor(0);
            this.f3576b.addView(this.f3586l);
            m6927b(this.f3586l, appLovinAdSize);
            if (!this.f3596v) {
                m6929a(this.f3588n);
            }
            m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.1
                @Override // java.lang.Runnable
                public void run() {
                    C0969b.this.f3586l.loadDataWithBaseURL("/", "<html></html>", "text/html", null, "");
                }
            });
            this.f3596v = true;
        } catch (Throwable th) {
            C1479t.m5113c("AppLovinAdView", "Failed to initialize AdWebView", th);
            this.f3595u.set(true);
        }
    }

    /* renamed from: b */
    public AppLovinAdSize m6928b() {
        return this.f3581g;
    }

    /* renamed from: b */
    public void m6924b(final AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            this.f3579e.m5111e("AppLovinAdView", "No provided when to the view controller");
            m6948a(-1);
            return;
        }
        if (!this.f3597w) {
            m6935a(appLovinAd);
        } else {
            this.f3594t.set(appLovinAd);
            this.f3579e.m5116b("AppLovinAdView", "Ad view has paused when an ad was received, ad saved for later");
        }
        m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.6
            @Override // java.lang.Runnable
            public void run() {
                if (C0969b.this.f3595u.compareAndSet(true, false)) {
                    C0969b c0969b = C0969b.this;
                    c0969b.m6930a(c0969b.f3581g);
                }
                try {
                    if (C0969b.this.f3599y == null) {
                        return;
                    }
                    C0969b.this.f3599y.adReceived(appLovinAd);
                } catch (Throwable th) {
                    StringBuilder m8752j = C0082b.m8752j("Exception while running ad load callback: ");
                    m8752j.append(th.getMessage());
                    C1479t.m5107i("AppLovinAdView", m8752j.toString());
                }
            }
        });
    }

    /* renamed from: c */
    public String m6923c() {
        return this.f3582h;
    }

    /* renamed from: d */
    public void m6921d() {
        if (!this.f3596v || this.f3597w) {
            return;
        }
        this.f3597w = true;
    }

    /* renamed from: e */
    public void m6919e() {
        if (!this.f3596v) {
            return;
        }
        AppLovinAd andSet = this.f3594t.getAndSet(null);
        if (andSet != null) {
            m6935a(andSet);
        }
        this.f3597w = false;
    }

    /* renamed from: f */
    public void m6917f() {
        if (this.f3586l != null && this.f3592r != null) {
            m6907k();
        }
        m6890t();
    }

    /* renamed from: g */
    public AppLovinAdViewEventListener m6915g() {
        return this.f3572A;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "b";
    }

    /* renamed from: h */
    public AbstractC0994g m6913h() {
        return this.f3574C;
    }

    /* renamed from: i */
    public void m6911i() {
        if (C1486b.m5094a(this.f3586l)) {
            this.f3577c.m5524S().m5741a(C1328f.f5093m);
        }
    }

    /* renamed from: j */
    public void m6909j() {
        if (!this.f3596v) {
            return;
        }
        C1496j.m5006b(this.f3600z, this.f3590p);
        if (this.f3590p != null && this.f3590p.isOpenMeasurementEnabled()) {
            this.f3590p.getAdEventTracker().mo6037e();
        }
        if (this.f3586l == null || this.f3592r == null) {
            this.f3579e.m5116b("AppLovinAdView", "onDetachedFromWindowCalled without an expanded ad present");
            return;
        }
        this.f3579e.m5116b("AppLovinAdView", "onDetachedFromWindowCalled with expanded ad present");
        m6889u();
    }

    /* renamed from: k */
    public void m6907k() {
        m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.5
            @Override // java.lang.Runnable
            public void run() {
                C0969b.this.m6888v();
                if (C0969b.this.f3576b == null || C0969b.this.f3586l == null || C0969b.this.f3586l.getParent() != null) {
                    return;
                }
                C0969b.this.f3576b.addView(C0969b.this.f3586l);
                C0969b.m6927b(C0969b.this.f3586l, C0969b.this.f3590p.getSize());
                if (!C0969b.this.f3590p.isOpenMeasurementEnabled()) {
                    return;
                }
                C0969b.this.f3590p.getAdEventTracker().m6064a((View) C0969b.this.f3586l);
            }
        });
    }

    /* renamed from: l */
    public void m6905l() {
        if (this.f3592r != null || this.f3593s != null) {
            m6907k();
            return;
        }
        C1479t c1479t = this.f3579e;
        StringBuilder m8752j = C0082b.m8752j("Ad: ");
        m8752j.append(this.f3590p);
        m8752j.append(" closed.");
        c1479t.m5116b("AppLovinAdView", m8752j.toString());
        m6929a(this.f3588n);
        C1496j.m5006b(this.f3600z, this.f3590p);
        this.f3590p = null;
    }

    /* renamed from: m */
    public void m6903m() {
        this.f3598x = true;
    }

    /* renamed from: n */
    public void m6901n() {
        this.f3598x = false;
    }

    /* renamed from: o */
    public void m6899o() {
        if (!(this.f3575a instanceof AbstractC1002k) || this.f3590p == null) {
            return;
        }
        if (!(this.f3590p.m5989D() == AbstractC1286e.EnumC1288a.DISMISS)) {
            return;
        }
        ((AbstractC1002k) this.f3575a).dismiss();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("crash_applovin_ad_webview".equals(appLovinCommunicatorMessage.getTopic())) {
            m6929a(new Runnable() { // from class: com.applovin.impl.adview.b.9
                @Override // java.lang.Runnable
                public void run() {
                    C0969b.this.m6891s().loadUrl("chrome://crash");
                }
            });
        }
    }

    /* renamed from: p */
    public AbstractC1286e m6897p() {
        return this.f3590p;
    }

    /* renamed from: q */
    public C1408l m6895q() {
        return this.f3577c;
    }

    /* renamed from: r */
    public AppLovinAdView m6893r() {
        return (AppLovinAdView) this.f3576b;
    }

    /* renamed from: s */
    public C0984d m6891s() {
        return this.f3586l;
    }
}
