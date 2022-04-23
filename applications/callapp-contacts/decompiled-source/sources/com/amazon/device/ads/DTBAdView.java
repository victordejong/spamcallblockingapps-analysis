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

    /* renamed from: a  reason: collision with root package name */
    static final String f6416a = "DTBAdView";

    /* renamed from: b  reason: collision with root package name */
    DTBAdMRAIDController f6417b;

    /* renamed from: c  reason: collision with root package name */
    boolean f6418c;

    /* renamed from: d  reason: collision with root package name */
    boolean f6419d;
    long e;
    String f;
    String g;
    DTBAdViewSupportClient h;
    ViewTreeObserver.OnGlobalLayoutListener i;
    ViewTreeObserver.OnGlobalFocusChangeListener j;
    ViewTreeObserver.OnScrollChangedListener k;
    private WebBridge l;
    private boolean m;
    private boolean n;
    private int o;
    private boolean p;
    private long q;
    private long r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdView$WebBridge.class */
    public class WebBridge {

        /* renamed from: a  reason: collision with root package name */
        Exception f6423a;

        WebBridge() {
        }

        @JavascriptInterface
        public void postMessage(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("type")) {
                    String string = jSONObject.getString("type");
                    if ("service".equals(string)) {
                        if ("log".equals(jSONObject.getString("subtype"))) {
                            DtbLog.c("mraid:JSNative", jSONObject.getJSONObject("arguments").getString("message"));
                        }
                    } else if ("mraid".equals(string)) {
                        this.f6423a = null;
                        String string2 = jSONObject.getString("subtype");
                        Class<MraidCommand> a2 = MraidCommand.a(string2);
                        if (a2 == null) {
                            DtbLog.c("MRAID Command:" + string2 + " is not found");
                            DTBAdMRAIDController dTBAdMRAIDController = DTBAdView.this.f6417b;
                            dTBAdMRAIDController.a(string2, string2 + " is not supported");
                            DTBAdView.this.f6417b.a(string2);
                            return;
                        }
                        try {
                            try {
                                MraidCommand newInstance = a2.newInstance();
                                String str2 = DTBAdView.f6416a;
                                DtbLog.c(str2, "execute command " + newInstance.a());
                                newInstance.a(jSONObject.getJSONObject("arguments"), DTBAdView.this.f6417b);
                            } catch (JSONException e) {
                                throw e;
                            }
                        } catch (Exception e2) {
                            this.f6423a = e2;
                            StringBuilder sb = new StringBuilder("Error execution command ");
                            sb.append(string2);
                            sb.append(StringUtils.SPACE);
                            sb.append(e2.getLocalizedMessage());
                            DtbLog.b();
                        }
                    }
                } else {
                    DtbLog.c("Unrecognized bridge call");
                }
            } catch (JSONException e3) {
                DtbLog.c(DTBAdView.f6416a, "JSON conversion failed:".concat(String.valueOf(e3)));
            }
        }
    }

    public DTBAdView(Context context, DTBAdBannerListener dTBAdBannerListener) {
        super(context);
        this.m = true;
        this.f6418c = false;
        this.n = true;
        this.f6419d = false;
        this.o = -1;
        this.p = WebResourceOptions.c();
        CookieManager.getInstance().setAcceptCookie(true);
        this.f6417b = new DTBAdMRAIDBannerController(this, dTBAdBannerListener);
        a();
    }

    public DTBAdView(Context context, DTBAdExpandedListener dTBAdExpandedListener) {
        this(context, dTBAdExpandedListener, 0);
    }

    public DTBAdView(Context context, DTBAdExpandedListener dTBAdExpandedListener, int i) {
        super(context);
        this.m = true;
        this.f6418c = false;
        this.n = true;
        this.f6419d = false;
        this.o = -1;
        this.p = WebResourceOptions.c();
        CookieManager.getInstance().setAcceptCookie(true);
        DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController = new DTBAdMRAIDExpandedController(this);
        this.f6417b = dTBAdMRAIDExpandedController;
        dTBAdMRAIDExpandedController.j = DTBAdMRAIDBannerController.a(i);
        a();
    }

    public DTBAdView(Context context, DTBAdInterstitialListener dTBAdInterstitialListener) {
        super(context);
        this.m = true;
        this.f6418c = false;
        this.n = true;
        this.f6419d = false;
        this.o = -1;
        this.p = WebResourceOptions.c();
        CookieManager.getInstance().setAcceptCookie(true);
        this.f6417b = new DTBAdMRAIDInterstitialController(this, dTBAdInterstitialListener);
        a();
    }

    private void a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setAllowContentAccess(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAllowFileAccess(false);
        getSettings().setLoadsImagesAutomatically(true);
        if (AdRegistration.g() && Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        getSettings().setBlockNetworkImage(false);
        DTBAdViewSupportClient dTBAdViewSupportClient = new DTBAdViewSupportClient(getContext(), this.f6417b);
        this.h = dTBAdViewSupportClient;
        setWebViewClient(dTBAdViewSupportClient);
        b(false);
        WebBridge webBridge = new WebBridge();
        this.l = webBridge;
        addJavascriptInterface(webBridge, "amzn_bridge");
        WebResourceService.a();
        this.i = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.DTBAdView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DTBAdView.a(DTBAdView.this);
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.i);
        this.j = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: com.amazon.device.ads.DTBAdView.2
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public void onGlobalFocusChanged(View view, View view2) {
                DTBAdView.a(DTBAdView.this);
            }
        };
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.j);
        this.k = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.amazon.device.ads.DTBAdView.3
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                DTBAdView.a(DTBAdView.this);
            }
        };
        getViewTreeObserver().addOnScrollChangedListener(this.k);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdView$ys3TRHw_0J_YR7kcsleUwo5QMgg
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean a2;
                a2 = DTBAdView.this.a(view, motionEvent);
                return a2;
            }
        });
    }

    private void a(ScrollView scrollView, boolean z) {
        ViewGroup viewGroup = (ViewGroup) DTBAdUtil.a((View) getParent()).findViewById(16908290);
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
        if (i != this.o || z) {
            this.o = i;
            this.f6417b.a(i, rect2);
            this.f6417b.q();
        }
    }

    static /* synthetic */ void a(DTBAdView dTBAdView) {
        if (dTBAdView.getParent() != null && dTBAdView.getVisibility() == 0) {
            Activity a2 = AdRegistration.a();
            if (a2 != null) {
                ViewGroup viewGroup = (ViewGroup) a2.findViewById(16908290);
                int[] iArr = new int[2];
                viewGroup.getLocationInWindow(iArr);
                Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + viewGroup.getWidth(), iArr[1] + viewGroup.getHeight());
                int[] iArr2 = new int[2];
                dTBAdView.getLocationInWindow(iArr2);
                Rect rect2 = new Rect(iArr2[0], iArr2[1], iArr2[0] + dTBAdView.getWidth(), iArr2[1] + dTBAdView.getHeight());
                if (rect.contains(rect2) || Rect.intersects(rect, rect2)) {
                    ScrollView b2 = dTBAdView.b();
                    if (b2 != null) {
                        int[] iArr3 = new int[2];
                        b2.getLocationInWindow(iArr3);
                        Rect rect3 = new Rect(iArr3[0], iArr3[1], iArr3[0] + b2.getWidth(), iArr3[1] + b2.getHeight());
                        if (!Rect.intersects(rect2, rect3) && dTBAdView.f6419d) {
                            DTBAdMRAIDController dTBAdMRAIDController = dTBAdView.f6417b;
                            if (dTBAdMRAIDController != null) {
                                dTBAdMRAIDController.c(false);
                            }
                            dTBAdView.d(false);
                            DtbLog.b();
                        } else if (Rect.intersects(rect2, rect3) && !dTBAdView.f6419d) {
                            DTBAdMRAIDController dTBAdMRAIDController2 = dTBAdView.f6417b;
                            if (dTBAdMRAIDController2 != null) {
                                dTBAdMRAIDController2.c(true);
                            }
                            dTBAdView.d(true);
                            DtbLog.b();
                        }
                    } else {
                        DTBAdMRAIDController dTBAdMRAIDController3 = dTBAdView.f6417b;
                        if (dTBAdMRAIDController3 != null && !dTBAdView.f6419d) {
                            dTBAdMRAIDController3.c(true);
                        }
                        dTBAdView.d(true);
                    }
                } else if (dTBAdView.f6419d) {
                    DTBAdMRAIDController dTBAdMRAIDController4 = dTBAdView.f6417b;
                    if (dTBAdMRAIDController4 != null) {
                        dTBAdMRAIDController4.c(false);
                    }
                    dTBAdView.d(false);
                    DtbLog.b();
                }
                if (dTBAdView.f6419d) {
                    dTBAdView.a(false);
                }
            } else if (dTBAdView.f6419d) {
                DTBAdMRAIDController dTBAdMRAIDController5 = dTBAdView.f6417b;
                if (dTBAdMRAIDController5 != null) {
                    dTBAdMRAIDController5.c(false);
                }
                dTBAdView.d(false);
            }
        } else if (dTBAdView.f6419d) {
            DTBAdMRAIDController dTBAdMRAIDController6 = dTBAdView.f6417b;
            if (dTBAdMRAIDController6 != null) {
                dTBAdMRAIDController6.c(false);
            }
            dTBAdView.d(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        long time = new Date().getTime();
        if (action == 0) {
            this.q = time;
            return false;
        } else if (action != 1) {
            this.q = 0L;
            return false;
        } else if (time - this.r < 1000) {
            return false;
        } else {
            if (time - this.q < 500) {
                this.r = time;
                this.f6417b.i();
            }
            this.q = 0L;
            return false;
        }
    }

    private ScrollView b() {
        View view = this;
        while (true) {
            ViewParent parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                return null;
            }
            if (parent instanceof ScrollView) {
                return (ScrollView) parent;
            }
            view = (View) parent;
        }
    }

    private void c(boolean z) {
        View view = (View) getParent();
        Activity a2 = view != null ? DTBAdUtil.a(view) : DTBAdUtil.a(this);
        if (a2 != null) {
            ViewGroup viewGroup = (ViewGroup) a2.findViewById(16908290);
            int[] iArr = new int[2];
            viewGroup.getLocationInWindow(iArr);
            Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + viewGroup.getWidth(), iArr[1] + viewGroup.getHeight());
            int[] iArr2 = new int[2];
            getLocationOnScreen(iArr2);
            Rect rect2 = new Rect(iArr2[0], iArr2[1], iArr2[0] + getWidth(), iArr2[1] + getHeight());
            float width = getWidth() * getHeight();
            if (rect2.intersect(rect)) {
                int i = (int) (((((rect2.right - rect2.left) * (rect2.bottom - rect2.top)) * 100.0d) / width) + 0.5d);
                if (i != this.o || z) {
                    this.o = i;
                    this.f6417b.a(i, rect2);
                }
            } else if (this.o != 0 || z) {
                this.o = 0;
                rect2.top = rect2.bottom;
                this.f6417b.a(this.o, rect2);
            }
        }
    }

    private void d(boolean z) {
        this.f6419d = z;
        if (!z) {
            this.o = -1;
            DTBAdMRAIDController dTBAdMRAIDController = this.f6417b;
            if (dTBAdMRAIDController != null) {
                dTBAdMRAIDController.a(0, new Rect(0, 0, 0, 0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, StringBuilder sb) {
        if (!this.p) {
            try {
                String a2 = WebResourceService.b().a(str);
                if (a2 != null) {
                    sb.append("<script>");
                    sb.append(a2);
                    sb.append("</script>");
                    return;
                }
            } catch (Exception e) {
                DtbLog.d(f6416a, "Failed to read local file");
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
                sb.append(StringUtils.LF);
            }
        } catch (Exception e2) {
            DtbLog.c("Error reading file:".concat(String.valueOf(str)));
        }
        sb.append("</script>");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        ScrollView b2 = b();
        if (b2 != null) {
            a(b2, z);
            return;
        }
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + getWidth(), iArr[1] + getHeight());
        if (this.f6417b != null) {
            c(z);
            this.f6417b.a(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(boolean z) {
        this.m = z;
        setVerticalScrollBarEnabled(z);
        setHorizontalScrollBarEnabled(z);
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    public void finalize() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this.i);
        getViewTreeObserver().removeOnScrollChangedListener(this.k);
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.j);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this.i);
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.j);
        getViewTreeObserver().addOnScrollChangedListener(this.k);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.i);
        getViewTreeObserver().removeOnScrollChangedListener(this.k);
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.j);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.n) {
            if (DTBTimeTrace.a() != null && AdRegistration.g()) {
                DTBTimeTrace a2 = DTBTimeTrace.a();
                if (a2.f6452b) {
                    a2.f6451a.add(new DTBTimeTrace.DTBTimeTracePhase("AD displayed"));
                }
                DTBTimeTrace.a();
                DTBTimeTrace.b();
            }
            DTBAdMRAIDController dTBAdMRAIDController = this.f6417b;
            if (dTBAdMRAIDController instanceof DTBAdViewDisplayListener) {
                ((DTBAdViewDisplayListener) dTBAdMRAIDController).h();
            }
            this.n = false;
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        if (this.m) {
            super.onScrollChanged(i, i2, i4, i3);
        } else {
            scrollTo(0, 0);
        }
    }
}
