package com.taiwanmobile.p055pt.adp.view.inread;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.mopub.common.FullAdType;
import com.taiwanmobile.p055pt.adp.view.TWMAd;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.TWMAdViewListener;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import com.taiwanmobile.p055pt.adp.view.webview.InReadIRBehavior;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientMraid;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidProcessor;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import okhttp3.ResponseBody;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/inread/TWMInReadAdAnchor.class */
public class TWMInReadAdAnchor extends RelativeLayout implements TWMAd {

    /* renamed from: a */
    public static final String f9996a = TWMInReadAdAnchor.class.getSimpleName();

    /* renamed from: b */
    public WeakReference<Context> f9997b;

    /* renamed from: c */
    public WeakReference<Activity> f9998c;

    /* renamed from: i */
    public WindowManager.LayoutParams f10004i;

    /* renamed from: m */
    public String f10008m;

    /* renamed from: p */
    public C4184b f10011p;

    /* renamed from: t */
    public JSWebView f10015t;

    /* renamed from: y */
    public C4184b f10020y;

    /* renamed from: d */
    public int f9999d = 0;

    /* renamed from: e */
    public int f10000e = 0;

    /* renamed from: f */
    public int f10001f = 0;

    /* renamed from: g */
    public int f10002g = 0;

    /* renamed from: h */
    public double f10003h = 0.0d;

    /* renamed from: j */
    public View.OnLayoutChangeListener f10005j = null;

    /* renamed from: k */
    public boolean f10006k = false;

    /* renamed from: l */
    public String f10007l = null;

    /* renamed from: n */
    public TWMAdRequest f10009n = null;

    /* renamed from: o */
    public TWMAdViewListener f10010o = null;

    /* renamed from: q */
    public boolean f10012q = false;

    /* renamed from: r */
    public boolean f10013r = false;

    /* renamed from: s */
    public boolean f10014s = false;

    /* renamed from: u */
    public MraidProcessor f10016u = null;

    /* renamed from: v */
    public RunnableC4180a f10017v = null;

    /* renamed from: w */
    public C4124a f10018w = null;

    /* renamed from: x */
    public final AbstractC4126b f10019x = new AbstractC4126b() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor.4
        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b
        /* renamed from: a */
        public void mo29382a(String str, TWMAdRequest.ErrorCode errorCode) {
            C10831c.m10518c("TWMAdServiceCallback", "noticeError(" + errorCode + ") invoked!! ");
            TWMInReadAdAnchor.this.m29469a(errorCode);
        }
    };

    /* renamed from: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/inread/TWMInReadAdAnchor$a.class */
    public final class RunnableC4180a implements Runnable {

        /* renamed from: b */
        public String f10032b;

        /* renamed from: c */
        public String f10033c;

        /* renamed from: d */
        public String f10034d;

        public RunnableC4180a(String str, String str2, String str3) {
            this.f10032b = str;
            this.f10033c = str2;
            this.f10034d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TWMInReadAdAnchor.this.f10015t != null) {
                TWMInReadAdAnchor tWMInReadAdAnchor = TWMInReadAdAnchor.this;
                tWMInReadAdAnchor.f10016u = new MraidProcessor(tWMInReadAdAnchor.f10015t, this.f10034d);
                C4117a.C4121d dVar = (C4117a.C4121d) C4117a.m29671b().m29673a(this.f10034d);
                if (dVar != null) {
                    dVar.m29658a("kmp", TWMInReadAdAnchor.this.f10016u);
                }
                TWMInReadAdAnchor.this.f10015t.setIRBehavior(new InReadIRBehavior() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor.a.1
                    @Override // com.taiwanmobile.p055pt.adp.view.webview.InReadIRBehavior, com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
                    public void closeWebView(String str) {
                        TWMInReadAdAnchor tWMInReadAdAnchor2 = TWMInReadAdAnchor.this;
                        tWMInReadAdAnchor2.m29471a((RelativeLayout) tWMInReadAdAnchor2);
                        TWMInReadAdAnchor.this.f10014s = true;
                        if (TWMInReadAdAnchor.this.f9998c != null && TWMInReadAdAnchor.this.f9998c.get() != null) {
                            ((Activity) TWMInReadAdAnchor.this.f9998c.get()).runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor.a.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    TWMInReadAdAnchor.this.destroy();
                                }
                            });
                        }
                    }

                    @Override // com.taiwanmobile.p055pt.adp.view.webview.InReadIRBehavior
                    public void passElementOffset(double d, double d2, double d3, double d4) {
                    }
                });
                TWMInReadAdAnchor.this.f10015t.setWebViewClient(new WebViewClientMraid(this.f10034d, TWMInReadAdAnchor.this.f10016u) { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor.a.2
                    @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str) {
                        super.onPageFinished(webView, str);
                        if (TWMInReadAdAnchor.this.f10015t != null) {
                            C10831c.m10518c(TWMInReadAdAnchor.f9996a, "Anchor call onPageFinished.");
                            if (RunnableC4180a.this.f10034d != null) {
                                if (MraidProcessor.isMraidAd(RunnableC4180a.this.f10034d) && TWMInReadAdAnchor.this.f10016u != null) {
                                    TWMInReadAdAnchor.this.f10016u.initMRAID(MraidProcessor.MraidPlacementType.INREAD);
                                    if (TWMInReadAdAnchor.this.f10004i != null) {
                                        TWMInReadAdAnchor tWMInReadAdAnchor2 = TWMInReadAdAnchor.this;
                                        tWMInReadAdAnchor2.m29470a(tWMInReadAdAnchor2, tWMInReadAdAnchor2.f10004i);
                                    }
                                    if (!TWMInReadAdAnchor.this.f10013r) {
                                        TWMInReadAdAnchor.this.f10016u.fireViewableChangeEvent(true);
                                    }
                                }
                                TWMInReadAdAnchor.this.f10015t.passInReadInfo(RunnableC4180a.this.f10034d);
                                if (TWMInReadAdAnchor.this.f10015t.getVisibility() != 0) {
                                    TWMInReadAdAnchor.this.f10015t.setVisibility(0);
                                }
                                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(RunnableC4180a.this.f10034d);
                                if (bVar == null || !((Boolean) bVar.m29659a("isOmProviderExisted")).booleanValue()) {
                                    C10831c.m10518c(TWMInReadAdAnchor.f9996a, "Measurement Provider is Empty.");
                                } else if (!(TWMInReadAdAnchor.this.f9997b == null || TWMInReadAdAnchor.this.f9997b.get() == null)) {
                                    TWMInReadAdAnchor.this.f10018w = new C4124a();
                                    C4127a.m29645a(TWMInReadAdAnchor.this.f10018w, ((Context) TWMInReadAdAnchor.this.f9997b.get()).getApplicationContext(), RunnableC4180a.this.f10034d, TWMInReadAdAnchor.this.f10015t, (View[]) null);
                                    if (!((Boolean) bVar.m29659a("isVideoAd")).booleanValue()) {
                                        C4127a.m29646a(TWMInReadAdAnchor.this.f10018w);
                                    }
                                }
                            }
                            TWMInReadAdAnchor.this.m29458a("inread anchor");
                        }
                    }
                });
                TWMInReadAdAnchor.this.f10015t.loadContent(this.f10032b, this.f10033c, this.f10034d);
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/inread/TWMInReadAdAnchor$b.class */
    public class C4184b extends AbstractC4140c {
        public C4184b(Context context, AbstractC4126b bVar) {
            super(context, bVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            super.onResponse(bVar, rVar);
            if (m29565n()) {
                if (!(TWMInReadAdAnchor.this.f10007l == null || C4117a.m29671b().m29673a(TWMInReadAdAnchor.this.f10007l) == null)) {
                    String str = TWMInReadAdAnchor.f9996a;
                    C10831c.m10518c(str, "Remove ad info in hashmap, key = " + TWMInReadAdAnchor.this.f10007l);
                    C4117a.m29671b().m29669c(TWMInReadAdAnchor.this.f10007l);
                }
                TWMInReadAdAnchor.this.f10012q = true;
                C4117a b = C4117a.m29671b();
                b.getClass();
                C4117a.C4121d dVar = new C4117a.C4121d(TWMInReadAdAnchor.this.getAdUnitId());
                dVar.m29658a("_context", this.f9873b.get());
                dVar.m29658a("adListener", TWMInReadAdAnchor.this.f10010o);
                dVar.m29658a("adRequest", TWMInReadAdAnchor.this.f10009n);
                dVar.m29658a("targetUrl", m29568k());
                dVar.m29658a("mediaUrl", m29573f());
                dVar.m29658a(AdFetch.AD_ADTYPE_KEY, Integer.valueOf(m29569j()));
                dVar.m29658a("subType", Integer.valueOf(m29562q()));
                dVar.m29658a(IapPlanRealmObject.PLAN_ID, m29567l());
                dVar.m29658a("cvt", m29570i());
                dVar.m29658a("isVideoAd", Boolean.valueOf(m29587A()));
                dVar.m29658a(CatWalkWebPayload.CATWALK_AD_KEY, TWMInReadAdAnchor.this);
                dVar.m29658a("clickUrl", m29574e());
                dVar.m29658a("userAgent", C10832d.m10513a(this.f9873b.get()));
                dVar.m29658a("isOpenChrome", Boolean.valueOf(m29563p()));
                dVar.m29658a("mraidUrl", m29555x());
                boolean B = m29586B();
                dVar.m29658a("isOmProviderExisted", Boolean.valueOf(B));
                if (B) {
                    dVar.m29658a("OMSDK", m29584D());
                    dVar.m29658a("PartnerName", m29583E());
                    dVar.m29658a("PartnerVersion", m29582F());
                    dVar.m29658a("PartnerCustomData", m29581G());
                }
                TWMInReadAdAnchor.this.f10003h = m29561r() / m29560s();
                dVar.m29658a("impUrl", m29557v());
                dVar.m29658a(FullAdType.VAST, m29558u());
                dVar.m29658a("trackingUrl", m29559t());
                TWMInReadAdAnchor.this.f10007l = m29566m();
                dVar.m29658a("_deviceId", ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(TWMInReadAdAnchor.this.f10007l)).m29659a("_deviceId"));
                C4117a.m29671b().m29672a(TWMInReadAdAnchor.this.f10007l, dVar);
                TWMInReadAdAnchor.this.m29457b();
                TWMInReadAdAnchor tWMInReadAdAnchor = TWMInReadAdAnchor.this;
                tWMInReadAdAnchor.f10017v = new RunnableC4180a(m29573f(), m29568k(), m29566m());
                new Handler().post(TWMInReadAdAnchor.this.f10017v);
            }
        }
    }

    public TWMInReadAdAnchor(Activity activity, String str) {
        super(activity);
        C4184b bVar = null;
        this.f9997b = null;
        this.f9998c = null;
        this.f10011p = null;
        this.f10015t = null;
        this.f10020y = !isInEditMode() ? new C4184b(getContext(), this.f10019x) : bVar;
        this.f9998c = new WeakReference<>(activity);
        this.f9997b = new WeakReference<>(activity);
        this.f10008m = str;
        this.f10011p = new C4184b(activity, this.f10019x);
        try {
            this.f10015t = new JSWebView(activity);
        } catch (Exception e) {
            String str2 = f9996a;
            C10831c.m10520b(str2, "Build webview failed. " + e.getMessage());
        }
    }

    /* renamed from: a */
    private int m29473a(int i, int i2) {
        return (int) (m29456b(i, i2) * this.f10003h);
    }

    /* renamed from: a */
    private void m29472a(WindowManager.LayoutParams layoutParams) {
        try {
            Class<?> cls = Class.forName("android.view.WindowManager$LayoutParams");
            Field field = cls.getField("privateFlags");
            Field field2 = cls.getField("PRIVATE_FLAG_NO_MOVE_ANIMATION");
            field.setInt(layoutParams, field2.getInt(layoutParams) | field.getInt(layoutParams));
        } catch (ClassNotFoundException e) {
            String str = f9996a;
            C10831c.m10520b(str, "buildViews ClassNotFoundException: " + e.toString());
        } catch (Exception e2) {
            String str2 = f9996a;
            C10831c.m10520b(str2, "buildViews Exception: " + e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29471a(final RelativeLayout relativeLayout) {
        WeakReference<Activity> weakReference;
        if (relativeLayout != null && (weakReference = this.f9998c) != null && weakReference.get() != null) {
            if (!this.f10006k) {
                C10831c.m10518c(f9996a, "mWindowRemoveView invoke, but this layout has not been added.");
                return;
            }
            final WindowManager windowManager = (WindowManager) this.f9998c.get().getSystemService("window");
            this.f9998c.get().runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        windowManager.removeViewImmediate(relativeLayout);
                        TWMInReadAdAnchor.this.f10006k = false;
                    } catch (Exception e) {
                        String str = TWMInReadAdAnchor.f9996a;
                        C10831c.m10520b(str, "mWindowRemoveView Exception: " + e.toString());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29470a(final RelativeLayout relativeLayout, final WindowManager.LayoutParams layoutParams) {
        WeakReference<Activity> weakReference;
        if (relativeLayout != null && layoutParams != null && (weakReference = this.f9998c) != null && weakReference.get() != null) {
            if (this.f10006k) {
                C10831c.m10518c(f9996a, "mWindowAddView invoke, but this layout has been added.");
                return;
            }
            final WindowManager windowManager = (WindowManager) this.f9998c.get().getSystemService("window");
            this.f9998c.get().runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        windowManager.addView(relativeLayout, layoutParams);
                        TWMInReadAdAnchor.this.f10006k = true;
                    } catch (Exception e) {
                        String str = TWMInReadAdAnchor.f9996a;
                        C10831c.m10520b(str, "mWindowAddView Exception: " + e.toString());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29469a(TWMAdRequest.ErrorCode errorCode) {
        TWMAdViewListener tWMAdViewListener = this.f10010o;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onFailedToReceiveAd(this, errorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29458a(String str) {
        String str2 = f9996a;
        C10831c.m10518c(str2, "popAdReceive(" + str + ")");
        TWMAdViewListener tWMAdViewListener = this.f10010o;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onReceiveAd(this);
        }
    }

    /* renamed from: b */
    private int m29456b(int i, int i2) {
        double d = i2 * 0.3d;
        double d2 = i / this.f10003h;
        return d2 > d ? (int) d : (int) d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m29457b() {
        C10831c.m10518c(f9996a, "initialView invoked!!");
        WeakReference<Context> weakReference = this.f9997b;
        if (weakReference != null && weakReference.get() != null && this.f10015t != null) {
            m29450c();
            this.f10005j = new View.OnLayoutChangeListener() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (!TWMInReadAdAnchor.this.f10014s) {
                        TWMInReadAdAnchor.this.m29447d();
                        TWMInReadAdAnchor.this.f10004i.width = TWMInReadAdAnchor.this.f10001f;
                        TWMInReadAdAnchor.this.f10004i.height = TWMInReadAdAnchor.this.f10002g;
                        TWMInReadAdAnchor tWMInReadAdAnchor = TWMInReadAdAnchor.this;
                        tWMInReadAdAnchor.m29455b(tWMInReadAdAnchor, tWMInReadAdAnchor.f10004i);
                    }
                }
            };
            addOnLayoutChangeListener(this.f10005j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m29455b(RelativeLayout relativeLayout, WindowManager.LayoutParams layoutParams) {
        WeakReference<Activity> weakReference;
        if (relativeLayout != null && layoutParams != null && (weakReference = this.f9998c) != null && weakReference.get() != null) {
            ((WindowManager) this.f9998c.get().getSystemService("window")).updateViewLayout(relativeLayout, layoutParams);
        }
    }

    /* renamed from: c */
    private void m29450c() {
        m29447d();
        String str = f9996a;
        C10831c.m10518c(str, "Anchor Size = " + this.f10001f + "x" + this.f10002g);
        this.f10004i = new WindowManager.LayoutParams();
        WindowManager.LayoutParams layoutParams = this.f10004i;
        layoutParams.width = this.f10001f;
        layoutParams.height = this.f10002g;
        layoutParams.gravity = 81;
        layoutParams.format = -3;
        layoutParams.type = 2;
        layoutParams.flags = 32;
        m29472a(layoutParams);
        if (this.f10015t != null) {
            this.f10015t.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f10015t.setBackgroundColor(0);
            addView(this.f10015t);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m29447d() {
        WindowManager windowManager = (WindowManager) this.f9997b.get().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.f9999d = displayMetrics.widthPixels;
        this.f10000e = displayMetrics.heightPixels;
        this.f10001f = m29473a(this.f9999d, this.f10000e);
        this.f10002g = m29456b(this.f9999d, this.f10000e);
    }

    /* renamed from: e */
    private boolean m29445e() {
        return this.f10012q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m29443f() {
        JSWebView jSWebView = this.f10015t;
        if (jSWebView != null) {
            jSWebView.clearWebView();
            this.f10015t = null;
        }
    }

    public void destroy() {
        C10831c.m10518c(f9996a, "destroy");
        this.f10017v = null;
        this.f10011p = null;
        this.f10008m = null;
        this.f10010o = null;
        this.f9998c = null;
        this.f9997b = null;
        View.OnLayoutChangeListener onLayoutChangeListener = this.f10005j;
        if (onLayoutChangeListener != null) {
            removeOnLayoutChangeListener(onLayoutChangeListener);
            this.f10005j = null;
        }
        if (!(this.f10007l == null || C4117a.m29671b().m29673a(this.f10007l) == null)) {
            String str = f9996a;
            C10831c.m10518c(str, "Remove ad info in hashmap, key = " + this.f10007l);
            C4117a.m29671b().m29669c(this.f10007l);
        }
        C4124a aVar = this.f10018w;
        if (aVar != null) {
            C4127a.m29644a(aVar, new C4124a.AbstractC4125a() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdAnchor.5
                @Override // com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a.AbstractC4125a
                /* renamed from: a */
                public void mo29430a() {
                    TWMInReadAdAnchor.this.m29443f();
                    TWMInReadAdAnchor.this.f10018w = null;
                }
            });
        } else {
            m29443f();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        String str = f9996a;
        C10831c.m10518c(str, "dispatchKeyEventPreIme(" + keyEvent + ")");
        if (keyEvent.getKeyCode() == 4) {
            m29471a((RelativeLayout) this);
            this.f10014s = true;
            destroy();
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    public String getAdUnitId() {
        return this.f10008m;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public boolean isReady() {
        return false;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void loadAd(TWMAdRequest tWMAdRequest) {
        C10831c.m10518c(f9996a, "loadAd invoked!!");
        this.f10009n = tWMAdRequest;
        WeakReference<Context> weakReference = this.f9997b;
        if (weakReference == null || weakReference.get() == null || this.f10015t == null || !C10832d.m10483f(this.f9997b.get())) {
            C10831c.m10520b(f9996a, "Permissions must be declared in AndroidManifest.xml.");
            TWMAdViewListener tWMAdViewListener = this.f10010o;
            if (tWMAdViewListener != null) {
                tWMAdViewListener.onFailedToReceiveAd(this, TWMAdRequest.ErrorCode.INVALID_REQUEST);
            }
        } else if (C4127a.m29638b(this.f9997b.get())) {
            String str = f9996a;
            C10831c.m10518c(str, "isAdLoading ? " + m29445e());
            if (!m29445e()) {
                C4127a.m29652a(this.f9997b.get(), getAdUnitId(), null, tWMAdRequest, this.f10020y, true, "IR");
            }
        }
    }

    public void pause() {
        C10831c.m10518c(f9996a, "pause");
        RunnableC4180a aVar = this.f10017v;
        if (aVar != null) {
            removeCallbacks(aVar);
        }
        if (!(this.f10014s || this.f10015t == null || getParent() == null)) {
            MraidProcessor mraidProcessor = this.f10016u;
            if (mraidProcessor != null) {
                mraidProcessor.fireViewableChangeEvent(false);
            }
            m29471a((RelativeLayout) this);
        }
        this.f10013r = true;
    }

    public void resume() {
        C4117a.AbstractC4119b bVar;
        Boolean bool;
        WindowManager.LayoutParams layoutParams;
        C10831c.m10518c(f9996a, "resume");
        if (!(this.f10014s || (layoutParams = this.f10004i) == null || this.f10015t == null)) {
            m29470a(this, layoutParams);
            MraidProcessor mraidProcessor = this.f10016u;
            if (mraidProcessor != null) {
                mraidProcessor.fireViewableChangeEvent(true);
            }
        }
        if (!(this.f10007l == null || (bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.f10007l)) == null || (bool = (Boolean) bVar.m29659a("lam")) == null || !bool.booleanValue() || this.f10010o == null)) {
            bVar.m29660a();
            C4117a.m29671b().m29672a(this.f10007l, bVar);
            this.f10010o.onDismissScreen(this);
        }
        this.f10013r = false;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void setAdListener(TWMAdViewListener tWMAdViewListener) {
        this.f10010o = tWMAdViewListener;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void stopLoading() {
    }
}
