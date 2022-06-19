package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.ScrollView;
import com.amazon.device.ads.DTBTimeTrace;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Date;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdView.class */
public class DTBAdView extends WebView {

    /* renamed from: a */
    static final String f11779a = "DTBAdView";

    /* renamed from: b */
    DTBAdMRAIDController f11780b;

    /* renamed from: c */
    boolean f11781c;

    /* renamed from: d */
    boolean f11782d;

    /* renamed from: e */
    long f11783e;

    /* renamed from: f */
    String f11784f;

    /* renamed from: g */
    String f11785g;

    /* renamed from: h */
    DTBAdViewSupportClient f11786h;

    /* renamed from: i */
    ViewTreeObserver.OnGlobalLayoutListener f11787i;

    /* renamed from: j */
    ViewTreeObserver.OnGlobalFocusChangeListener f11788j;

    /* renamed from: k */
    ViewTreeObserver.OnScrollChangedListener f11789k;

    /* renamed from: l */
    private WebBridge f11790l;

    /* renamed from: m */
    private boolean f11791m;

    /* renamed from: n */
    private boolean f11792n;

    /* renamed from: o */
    private int f11793o;

    /* renamed from: p */
    private boolean f11794p;

    /* renamed from: q */
    private long f11795q;

    /* renamed from: r */
    private long f11796r;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdView$WebBridge.class */
    public class WebBridge {

        /* renamed from: a */
        Exception f11800a;

        WebBridge() {
            DTBAdView.this = r4;
        }

        @JavascriptInterface
        public void postMessage(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has("type")) {
                    DtbLog.m38821c("Unrecognized bridge call");
                    return;
                }
                String string = jSONObject.getString("type");
                if ("service".equals(string)) {
                    if (!"log".equals(jSONObject.getString("subtype"))) {
                        return;
                    }
                    DtbLog.m38820c("mraid:JSNative", jSONObject.getJSONObject("arguments").getString("message"));
                } else if (!"mraid".equals(string)) {
                } else {
                    this.f11800a = null;
                    String string2 = jSONObject.getString("subtype");
                    Class<MraidCommand> m38757a = MraidCommand.m38757a(string2);
                    if (m38757a == null) {
                        DtbLog.m38821c("MRAID Command:" + string2 + " is not found");
                        DTBAdMRAIDController dTBAdMRAIDController = DTBAdView.this.f11780b;
                        dTBAdMRAIDController.m39029a(string2, string2 + " is not supported");
                        DTBAdView.this.f11780b.m39030a(string2);
                        return;
                    }
                    try {
                        try {
                            MraidCommand newInstance = m38757a.newInstance();
                            String str2 = DTBAdView.f11779a;
                            DtbLog.m38820c(str2, "execute command " + newInstance.mo38748a());
                            newInstance.mo38747a(jSONObject.getJSONObject("arguments"), DTBAdView.this.f11780b);
                        } catch (JSONException e) {
                            throw e;
                        }
                    } catch (Exception e2) {
                        this.f11800a = e2;
                        StringBuilder sb = new StringBuilder("Error execution command ");
                        sb.append(string2);
                        sb.append(StringUtils.SPACE);
                        sb.append(e2.getLocalizedMessage());
                        DtbLog.m38825b();
                    }
                }
            } catch (JSONException e3) {
                DtbLog.m38820c(DTBAdView.f11779a, "JSON conversion failed:".concat(String.valueOf(e3)));
            }
        }
    }

    public DTBAdView(Context context, DTBAdBannerListener dTBAdBannerListener) {
        super(context);
        this.f11791m = true;
        this.f11781c = false;
        this.f11792n = true;
        this.f11782d = false;
        this.f11793o = -1;
        this.f11794p = WebResourceOptions.m38739c();
        CookieManager.getInstance().setAcceptCookie(true);
        this.f11780b = new DTBAdMRAIDBannerController(this, dTBAdBannerListener);
        m38950a();
    }

    public DTBAdView(Context context, DTBAdExpandedListener dTBAdExpandedListener) {
        this(context, dTBAdExpandedListener, 0);
    }

    public DTBAdView(Context context, DTBAdExpandedListener dTBAdExpandedListener, int i) {
        super(context);
        this.f11791m = true;
        this.f11781c = false;
        this.f11792n = true;
        this.f11782d = false;
        this.f11793o = -1;
        this.f11794p = WebResourceOptions.m38739c();
        CookieManager.getInstance().setAcceptCookie(true);
        DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController = new DTBAdMRAIDExpandedController(this);
        this.f11780b = dTBAdMRAIDExpandedController;
        dTBAdMRAIDExpandedController.f11737j = DTBAdMRAIDBannerController.m39056a(i);
        m38950a();
    }

    public DTBAdView(Context context, DTBAdInterstitialListener dTBAdInterstitialListener) {
        super(context);
        this.f11791m = true;
        this.f11781c = false;
        this.f11792n = true;
        this.f11782d = false;
        this.f11793o = -1;
        this.f11794p = WebResourceOptions.m38739c();
        CookieManager.getInstance().setAcceptCookie(true);
        this.f11780b = new DTBAdMRAIDInterstitialController(this, dTBAdInterstitialListener);
        m38950a();
    }

    /* renamed from: a */
    private void m38950a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setAllowContentAccess(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAllowFileAccess(false);
        getSettings().setLoadsImagesAutomatically(true);
        if (AdRegistration.m39068g() && Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        getSettings().setBlockNetworkImage(false);
        DTBAdViewSupportClient dTBAdViewSupportClient = new DTBAdViewSupportClient(getContext(), this.f11780b);
        this.f11786h = dTBAdViewSupportClient;
        setWebViewClient(dTBAdViewSupportClient);
        m38942b(false);
        WebBridge webBridge = new WebBridge();
        this.f11790l = webBridge;
        addJavascriptInterface(webBridge, "amzn_bridge");
        WebResourceService.m38738a();
        this.f11787i = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.DTBAdView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DTBAdView.m38947a(DTBAdView.this);
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.f11787i);
        this.f11788j = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: com.amazon.device.ads.DTBAdView.2
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public void onGlobalFocusChanged(View view, View view2) {
                DTBAdView.m38947a(DTBAdView.this);
            }
        };
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.f11788j);
        this.f11789k = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.amazon.device.ads.DTBAdView.3
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                DTBAdView.m38947a(DTBAdView.this);
            }
        };
        getViewTreeObserver().addOnScrollChangedListener(this.f11789k);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdView$ys3TRHw_0J_YR7kcsleUwo5QMgg
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m38949a;
                m38949a = DTBAdView.this.m38949a(view, motionEvent);
                return m38949a;
            }
        });
    }

    /* renamed from: a */
    private void m38948a(ScrollView scrollView, boolean z) {
        ViewGroup viewGroup = (ViewGroup) DTBAdUtil.m38960a((View) getParent()).findViewById(16908290);
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        int i = 0;
        Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + viewGroup.getWidth(), iArr[1] + viewGroup.getHeight());
        int[] iArr2 = new int[2];
        getLocationInWindow(iArr2);
        float width = getWidth() * getHeight();
        Rect rect2 = new Rect(iArr2[0], iArr2[1], iArr2[0] + getWidth(), iArr2[1] + getHeight());
        if (scrollView == null) {
            rect2.intersect(rect);
        } else {
            int[] iArr3 = new int[2];
            scrollView.getLocationInWindow(iArr3);
            Rect rect3 = new Rect(iArr3[0], iArr3[1], iArr3[0] + scrollView.getWidth(), iArr3[1] + scrollView.getHeight());
            rect3.intersect(rect);
            rect2.intersect(rect3);
        }
        float f = (rect2.right - rect2.left) * (rect2.bottom - rect2.top);
        if (width != BitmapDescriptorFactory.HUE_RED) {
            i = (int) ((f * 100.0f) / width);
        }
        if (i != this.f11793o || z) {
            this.f11793o = i;
            this.f11780b.m39035a(i, rect2);
            this.f11780b.m39010q();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m38947a(DTBAdView dTBAdView) {
        if (dTBAdView.getParent() == null || dTBAdView.getVisibility() != 0) {
            if (!dTBAdView.f11782d) {
                return;
            }
            DTBAdMRAIDController dTBAdMRAIDController = dTBAdView.f11780b;
            if (dTBAdMRAIDController != null) {
                dTBAdMRAIDController.m39020c(false);
            }
            dTBAdView.m38940d(false);
            return;
        }
        Activity m39078a = AdRegistration.m39078a();
        if (m39078a == null) {
            if (!dTBAdView.f11782d) {
                return;
            }
            DTBAdMRAIDController dTBAdMRAIDController2 = dTBAdView.f11780b;
            if (dTBAdMRAIDController2 != null) {
                dTBAdMRAIDController2.m39020c(false);
            }
            dTBAdView.m38940d(false);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) m39078a.findViewById(16908290);
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + viewGroup.getWidth(), iArr[1] + viewGroup.getHeight());
        int[] iArr2 = new int[2];
        dTBAdView.getLocationInWindow(iArr2);
        Rect rect2 = new Rect(iArr2[0], iArr2[1], iArr2[0] + dTBAdView.getWidth(), iArr2[1] + dTBAdView.getHeight());
        if (rect.contains(rect2) || Rect.intersects(rect, rect2)) {
            ScrollView m38944b = dTBAdView.m38944b();
            if (m38944b != null) {
                int[] iArr3 = new int[2];
                m38944b.getLocationInWindow(iArr3);
                Rect rect3 = new Rect(iArr3[0], iArr3[1], iArr3[0] + m38944b.getWidth(), iArr3[1] + m38944b.getHeight());
                if (!Rect.intersects(rect2, rect3) && dTBAdView.f11782d) {
                    DTBAdMRAIDController dTBAdMRAIDController3 = dTBAdView.f11780b;
                    if (dTBAdMRAIDController3 != null) {
                        dTBAdMRAIDController3.m39020c(false);
                    }
                    dTBAdView.m38940d(false);
                    DtbLog.m38825b();
                } else if (Rect.intersects(rect2, rect3) && !dTBAdView.f11782d) {
                    DTBAdMRAIDController dTBAdMRAIDController4 = dTBAdView.f11780b;
                    if (dTBAdMRAIDController4 != null) {
                        dTBAdMRAIDController4.m39020c(true);
                    }
                    dTBAdView.m38940d(true);
                    DtbLog.m38825b();
                }
            } else {
                DTBAdMRAIDController dTBAdMRAIDController5 = dTBAdView.f11780b;
                if (dTBAdMRAIDController5 != null && !dTBAdView.f11782d) {
                    dTBAdMRAIDController5.m39020c(true);
                }
                dTBAdView.m38940d(true);
            }
        } else if (dTBAdView.f11782d) {
            DTBAdMRAIDController dTBAdMRAIDController6 = dTBAdView.f11780b;
            if (dTBAdMRAIDController6 != null) {
                dTBAdMRAIDController6.m39020c(false);
            }
            dTBAdView.m38940d(false);
            DtbLog.m38825b();
        }
        if (!dTBAdView.f11782d) {
            return;
        }
        dTBAdView.m38945a(false);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m38949a(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        long time = new Date().getTime();
        if (action == 0) {
            this.f11795q = time;
            return false;
        } else if (action != 1) {
            this.f11795q = 0L;
            return false;
        } else if (time - this.f11796r < 1000) {
            return false;
        } else {
            if (time - this.f11795q < 500) {
                this.f11796r = time;
                this.f11780b.mo38990i();
            }
            this.f11795q = 0L;
            return false;
        }
    }

    /* renamed from: b */
    private ScrollView m38944b() {
        View view = this;
        while (true) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                if (parent instanceof ScrollView) {
                    return (ScrollView) parent;
                }
                view = (View) parent;
            } else {
                return null;
            }
        }
    }

    /* renamed from: c */
    private void m38941c(boolean z) {
        View view = (View) getParent();
        Activity m38960a = view != null ? DTBAdUtil.m38960a(view) : DTBAdUtil.m38960a(this);
        if (m38960a == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) m38960a.findViewById(16908290);
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + viewGroup.getWidth(), iArr[1] + viewGroup.getHeight());
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        Rect rect2 = new Rect(iArr2[0], iArr2[1], iArr2[0] + getWidth(), iArr2[1] + getHeight());
        float width = getWidth() * getHeight();
        if (rect2.intersect(rect)) {
            int i = (int) (((((rect2.right - rect2.left) * (rect2.bottom - rect2.top)) * 100.0d) / width) + 0.5d);
            if (i == this.f11793o && !z) {
                return;
            }
            this.f11793o = i;
            this.f11780b.m39035a(i, rect2);
        } else if (this.f11793o == 0 && !z) {
        } else {
            this.f11793o = 0;
            rect2.top = rect2.bottom;
            this.f11780b.m39035a(this.f11793o, rect2);
        }
    }

    /* renamed from: d */
    private void m38940d(boolean z) {
        this.f11782d = z;
        if (!z) {
            this.f11793o = -1;
            DTBAdMRAIDController dTBAdMRAIDController = this.f11780b;
            if (dTBAdMRAIDController == null) {
                return;
            }
            dTBAdMRAIDController.m39035a(0, new Rect(0, 0, 0, 0));
        }
    }

    /* renamed from: a */
    public final void m38946a(String str, StringBuilder sb) {
        if (!this.f11794p) {
            try {
                String m38736a = WebResourceService.m38735b().m38736a(str);
                if (m38736a != null) {
                    sb.append("<script>");
                    sb.append(m38736a);
                    sb.append("</script>");
                    return;
                }
            } catch (Exception e) {
                DtbLog.m38818d(f11779a, "Failed to read local file");
            }
        }
        sb.append("<script>");
        try {
            AssetManager assets = getContext().getAssets();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open(str + ".js")));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine.trim());
                sb.append(StringUtils.f67179LF);
            }
        } catch (Exception e2) {
            DtbLog.m38821c("Error reading file:".concat(String.valueOf(str)));
        }
        sb.append("</script>");
    }

    /* renamed from: a */
    public final void m38945a(boolean z) {
        ScrollView m38944b = m38944b();
        if (m38944b != null) {
            m38948a(m38944b, z);
            return;
        }
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + getWidth(), iArr[1] + getHeight());
        if (this.f11780b == null) {
            return;
        }
        m38941c(z);
        this.f11780b.m39034a(rect);
    }

    /* renamed from: b */
    public final void m38942b(boolean z) {
        this.f11791m = z;
        setVerticalScrollBarEnabled(z);
        setHorizontalScrollBarEnabled(z);
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    public void finalize() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f11787i);
        getViewTreeObserver().removeOnScrollChangedListener(this.f11789k);
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.f11788j);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f11787i);
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.f11788j);
        getViewTreeObserver().addOnScrollChangedListener(this.f11789k);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f11787i);
        getViewTreeObserver().removeOnScrollChangedListener(this.f11789k);
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.f11788j);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f11792n) {
            if (DTBTimeTrace.m38907a() != null && AdRegistration.m39068g()) {
                DTBTimeTrace m38907a = DTBTimeTrace.m38907a();
                if (m38907a.f11837b) {
                    m38907a.f11836a.add(new DTBTimeTrace.DTBTimeTracePhase("AD displayed"));
                }
                DTBTimeTrace.m38907a();
                DTBTimeTrace.m38906b();
            }
            DTBAdMRAIDController dTBAdMRAIDController = this.f11780b;
            if (dTBAdMRAIDController instanceof DTBAdViewDisplayListener) {
                ((DTBAdViewDisplayListener) dTBAdMRAIDController).mo38939h();
            }
            this.f11792n = false;
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        if (this.f11791m) {
            super.onScrollChanged(i, i2, i4, i3);
        } else {
            scrollTo(0, 0);
        }
    }
}
