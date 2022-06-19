package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
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
import com.amazon.device.ads.DTBAdView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ScreenDensity;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdView.class */
public class DTBAdView extends WebView {
    public static final String AMAZON_AD_INFO = "amazon_ad_info";
    public static final String AMAZON_BRIDGE = "amzn_bridge";
    public static final String BID_HTML = "bid_html_template";
    public static final String BID_IDENTIFIER = "bid_identifier";
    private static final String ENV_TEMPLATE = "window.MRAID_ENV={version:'%s',sdk:'%s',sdkVersion:'%s',appId:'%s',ifa:'%s',limitAdTracking:%b,coppa:%b,impFired:true};";
    private static final String ENV_TEMPLATE_INFO = "window.MRAID_ENV={version:'%s',sdk:'%s',sdkVersion:'%s',appId:'%s',ifa:'%s',limitAdTracking:%b,coppa:%b,amznAdInfo:%s,impFired:true};";
    public static final String EVENT_SERVER_PARAMETER = "event_server_parameter";
    public static final String EXPECTED_HEIGHT = "expected_height";
    public static final String EXPECTED_WIDTH = "expected_width";
    public static final String HOSTNAME_IDENTIFIER = "hostname_identifier";
    public static final String LOG_TAG = DTBAdView.class.getSimpleName();
    public static final String MRAID_IDENTIFIER = "MRAID_ENV";
    public static final String REQUEST_QUEUE = "amazon_request_queue";
    public static final String SMARTBANNER_STATE = "smart_banner_state";
    public static final String START_LOAD_TIME = "start_load_time";
    private String bidId;
    private DTBAdMRAIDController controller;
    private int exposurePercent;
    public ViewTreeObserver.OnGlobalFocusChangeListener focusChangeListener;
    public ViewTreeObserver.OnGlobalLayoutListener globalLayoutListener;
    private String hostname;
    private boolean ignoreDetachment;
    private boolean isFirstDisplay;
    private boolean isVisible;
    private boolean localOnly;
    public ViewTreeObserver.OnScrollChangedListener scrollChangeListener;
    private boolean scrollEnabled;
    private long startTime;
    public DTBAdViewSupportClient supportClient;
    private long timeClicked;
    private long timePressed;
    private WebBridge webBridge;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdView$WebBridge.class */
    public class WebBridge {
        public Exception execException;

        public WebBridge() {
            DTBAdView.this = r4;
        }

        private void logFromJavasScript(String str) {
            DtbLog.debug("mraid:JSNative", str);
        }

        public void echo(JSONObject jSONObject) {
            try {
                int i = jSONObject.getInt("promiseId");
                final String format = String.format("window.promiseResolve(%d, '%s');", Integer.valueOf(i), jSONObject.getJSONObject("arguments").getString("greeting") + " Returned");
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: e.c.b.a.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DTBAdView.WebBridge webBridge = DTBAdView.WebBridge.this;
                        DTBAdView.this.evaluateJavascript(format, null);
                    }
                });
            } catch (JSONException e) {
                String str = DTBAdView.LOG_TAG;
                DtbLog.debug(str, "JSON conversion failed:" + e);
            }
        }

        public Exception getExecutionException() {
            return this.execException;
        }

        public void handleMraidCommand(JSONObject jSONObject) throws JSONException {
            this.execException = null;
            String string = jSONObject.getString("subtype");
            Class<MraidCommand> findMraidCommandByName = MraidCommand.findMraidCommandByName(string);
            if (findMraidCommandByName == null) {
                DtbLog.error("MRAID Command:" + string + " is not found");
                DTBAdMRAIDController dTBAdMRAIDController = DTBAdView.this.controller;
                dTBAdMRAIDController.fireErrorEvent(string, string + " is not supported");
                DTBAdView.this.controller.commandCompleted(string);
                return;
            }
            try {
                MraidCommand newInstance = findMraidCommandByName.newInstance();
                String str = DTBAdView.LOG_TAG;
                DtbLog.debug(str, "execute command " + newInstance.getName());
                newInstance.execute(jSONObject.getJSONObject("arguments"), DTBAdView.this.controller);
            } catch (JSONException e) {
                throw e;
            } catch (Exception e2) {
                this.execException = e2;
                StringBuilder m8692L = C22128a.m8692L("Error execution command ", string, StringConstant.SPACE);
                m8692L.append(e2.getLocalizedMessage());
                DtbLog.debug(m8692L.toString());
            }
        }

        public void handleServiceCall(JSONObject jSONObject) throws JSONException {
            if (AnalyticsConstants.LOG.equals(jSONObject.getString("subtype"))) {
                logFromJavasScript(jSONObject.getJSONObject("arguments").getString("message"));
            }
        }

        @JavascriptInterface
        public void postMessage(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has("type")) {
                    DtbLog.error("Unrecognized bridge call");
                    return;
                }
                String string = jSONObject.getString("type");
                if ("service".equals(string)) {
                    handleServiceCall(jSONObject);
                } else if (!"mraid".equals(string)) {
                } else {
                    handleMraidCommand(jSONObject);
                }
            } catch (JSONException e) {
                String str2 = DTBAdView.LOG_TAG;
                DtbLog.debug(str2, "JSON conversion failed:" + e);
            }
        }
    }

    public DTBAdView(Context context, DTBAdBannerListener dTBAdBannerListener) {
        super(context);
        this.scrollEnabled = true;
        this.ignoreDetachment = false;
        this.isFirstDisplay = true;
        this.isVisible = false;
        this.exposurePercent = -1;
        this.localOnly = WebResourceOptions.isLocalSourcesOnly();
        CookieManager.getInstance().setAcceptCookie(true);
        try {
            this.controller = new DTBAdMRAIDBannerController(this, dTBAdBannerListener);
            commonInit();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdView class with DTBAdBannerListener");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to initialize DTBAdView class with DTBAdBannerListener", e);
        }
    }

    public DTBAdView(Context context, DTBAdExpandedListener dTBAdExpandedListener) {
        this(context, dTBAdExpandedListener, 0);
    }

    public DTBAdView(Context context, DTBAdExpandedListener dTBAdExpandedListener, int i) {
        super(context);
        this.scrollEnabled = true;
        this.ignoreDetachment = false;
        this.isFirstDisplay = true;
        this.isVisible = false;
        this.exposurePercent = -1;
        this.localOnly = WebResourceOptions.isLocalSourcesOnly();
        CookieManager.getInstance().setAcceptCookie(true);
        try {
            DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController = new DTBAdMRAIDExpandedController(this);
            this.controller = dTBAdMRAIDExpandedController;
            dTBAdMRAIDExpandedController.setMasterController(DTBAdMRAIDBannerController.findControllerByIndex(i));
            dTBAdExpandedListener.onCreateExpandedController((DTBAdMRAIDExpandedController) this.controller);
            commonInit();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdView class with DTBAdExpandedListener");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to initialize DTBAdView class with DTBAdExpandedListener", e);
        }
    }

    public DTBAdView(Context context, DTBAdInterstitialListener dTBAdInterstitialListener) {
        super(context);
        this.scrollEnabled = true;
        this.ignoreDetachment = false;
        this.isFirstDisplay = true;
        this.isVisible = false;
        this.exposurePercent = -1;
        this.localOnly = WebResourceOptions.isLocalSourcesOnly();
        CookieManager.getInstance().setAcceptCookie(true);
        try {
            this.controller = new DTBAdMRAIDInterstitialController(this, dTBAdInterstitialListener);
            commonInit();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdView class with DTBAdInterstitialListener");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to initialize DTBAdView class with DTBAdInterstitialListener", e);
        }
    }

    private void commonInit() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setAllowContentAccess(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAllowFileAccess(false);
        getSettings().setLoadsImagesAutomatically(true);
        if (AdRegistration.isTestMode()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        getSettings().setBlockNetworkImage(false);
        DTBAdViewSupportClient dTBAdViewSupportClient = new DTBAdViewSupportClient(getContext(), this.controller);
        this.supportClient = dTBAdViewSupportClient;
        setWebViewClient(dTBAdViewSupportClient);
        setScrollEnabled(false);
        WebBridge webBridge = new WebBridge();
        this.webBridge = webBridge;
        addJavascriptInterface(webBridge, AMAZON_BRIDGE);
        WebResourceService.init();
        this.globalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.DTBAdView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DTBAdView.this.verifyIsVisible();
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.globalLayoutListener);
        this.focusChangeListener = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: com.amazon.device.ads.DTBAdView.2
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public void onGlobalFocusChanged(View view, View view2) {
                DTBAdView.this.verifyIsVisible();
            }
        };
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.focusChangeListener);
        this.scrollChangeListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.amazon.device.ads.DTBAdView.3
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                DTBAdView.this.verifyIsVisible();
            }
        };
        getViewTreeObserver().addOnScrollChangedListener(this.scrollChangeListener);
        setOnTouchListener(new View.OnTouchListener() { // from class: e.c.b.a.d0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                DTBAdView.this.m42587a(view, motionEvent);
                return false;
            }
        });
    }

    private void computeExposureInScrollView(ScrollView scrollView, boolean z) {
        ViewGroup viewGroup;
        Activity activity = DTBAdUtil.getActivity((View) getParent());
        if (activity == null || (viewGroup = (ViewGroup) activity.findViewById(16908290)) == null) {
            return;
        }
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        int i = 0;
        Rect rect = new Rect(iArr[0], iArr[1], viewGroup.getWidth() + iArr[0], viewGroup.getHeight() + iArr[1]);
        int[] iArr2 = new int[2];
        getLocationInWindow(iArr2);
        float height = getHeight() * getWidth();
        Rect rect2 = new Rect(iArr2[0], iArr2[1], getWidth() + iArr2[0], getHeight() + iArr2[1]);
        if (scrollView == null) {
            rect2.intersect(rect);
        } else {
            int[] iArr3 = new int[2];
            scrollView.getLocationInWindow(iArr3);
            Rect rect3 = new Rect(iArr3[0], iArr3[1], scrollView.getWidth() + iArr3[0], scrollView.getHeight() + iArr3[1]);
            rect3.intersect(rect);
            rect2.intersect(rect3);
        }
        float f = (rect2.bottom - rect2.top) * (rect2.right - rect2.left);
        if (height != 0.0f) {
            i = (int) ((f * 100.0f) / height);
        }
        if (i == this.exposurePercent && !z) {
            return;
        }
        this.exposurePercent = i;
        this.controller.fireExposureChange(i, rect2);
        this.controller.setCurrentPositionProperty();
    }

    private ScrollView getScrollViewParent() {
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

    private void loadLocalFile(String str, StringBuilder sb) {
        if (!this.localOnly) {
            try {
                String loadFile = WebResourceService.getInstance().loadFile(str);
                if (loadFile != null) {
                    sb.append("<script>");
                    sb.append(loadFile);
                    sb.append("</script>");
                    return;
                }
            } catch (Exception e) {
                DtbLog.error(LOG_TAG, "Failed to read local file");
            }
        }
        sb.append("<script>");
        try {
            AssetManager assets = getContext().getAssets();
            InputStream open = assets.open(str + ".js");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine.trim());
                sb.append(StringConstant.NEW_LINE);
            }
            bufferedReader.close();
            open.close();
        } catch (Exception e2) {
            DtbLog.error("Error reading file:" + str);
        }
        sb.append("</script>");
    }

    private void markAsInvisible() {
    }

    private void setIsVisible(boolean z) {
        this.isVisible = z;
        if (!z) {
            this.exposurePercent = -1;
            DTBAdMRAIDController dTBAdMRAIDController = this.controller;
            if (dTBAdMRAIDController == null) {
                return;
            }
            dTBAdMRAIDController.fireExposureChange(0, new Rect(0, 0, 0, 0));
        }
    }

    public void verifyIsVisible() {
        if (getParent() == null || getVisibility() != 0) {
            if (!this.isVisible) {
                return;
            }
            DTBAdMRAIDController dTBAdMRAIDController = this.controller;
            if (dTBAdMRAIDController != null) {
                dTBAdMRAIDController.onViewabilityChanged(false);
            }
            setIsVisible(false);
            return;
        }
        Activity currentActivity = AdRegistration.getCurrentActivity();
        if (currentActivity == null) {
            if (!this.isVisible) {
                return;
            }
            DTBAdMRAIDController dTBAdMRAIDController2 = this.controller;
            if (dTBAdMRAIDController2 != null) {
                dTBAdMRAIDController2.onViewabilityChanged(false);
            }
            setIsVisible(false);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) currentActivity.findViewById(16908290);
        if (viewGroup == null) {
            if (!this.isVisible) {
                return;
            }
            DTBAdMRAIDController dTBAdMRAIDController3 = this.controller;
            if (dTBAdMRAIDController3 != null) {
                dTBAdMRAIDController3.onViewabilityChanged(false);
            }
            setIsVisible(false);
            return;
        }
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[0];
        Rect rect = new Rect(i, i2, viewGroup.getWidth() + i3, viewGroup.getHeight() + iArr[1]);
        int[] iArr2 = new int[2];
        getLocationInWindow(iArr2);
        int i4 = iArr2[0];
        int i5 = iArr2[1];
        int i6 = iArr2[0];
        Rect rect2 = new Rect(i4, i5, getWidth() + i6, getHeight() + iArr2[1]);
        if (rect.contains(rect2) || Rect.intersects(rect, rect2)) {
            ScrollView scrollViewParent = getScrollViewParent();
            if (scrollViewParent != null) {
                int[] iArr3 = new int[2];
                scrollViewParent.getLocationInWindow(iArr3);
                int i7 = iArr3[0];
                int i8 = iArr3[1];
                int i9 = iArr3[0];
                Rect rect3 = new Rect(i7, i8, scrollViewParent.getWidth() + i9, scrollViewParent.getHeight() + iArr3[1]);
                if (!Rect.intersects(rect2, rect3) && this.isVisible) {
                    DTBAdMRAIDController dTBAdMRAIDController4 = this.controller;
                    if (dTBAdMRAIDController4 != null) {
                        dTBAdMRAIDController4.onViewabilityChanged(false);
                    }
                    setIsVisible(false);
                    DtbLog.debug("SET MRAID Visible false because of scroll ");
                } else if (Rect.intersects(rect2, rect3) && !this.isVisible) {
                    DTBAdMRAIDController dTBAdMRAIDController5 = this.controller;
                    if (dTBAdMRAIDController5 != null) {
                        dTBAdMRAIDController5.onViewabilityChanged(true);
                    }
                    setIsVisible(true);
                    DtbLog.debug("SET MRAID Visible true because of scroll ");
                }
            } else {
                DTBAdMRAIDController dTBAdMRAIDController6 = this.controller;
                if (dTBAdMRAIDController6 != null && !this.isVisible) {
                    dTBAdMRAIDController6.onViewabilityChanged(true);
                }
                setIsVisible(true);
            }
        } else if (this.isVisible) {
            DTBAdMRAIDController dTBAdMRAIDController7 = this.controller;
            if (dTBAdMRAIDController7 != null) {
                dTBAdMRAIDController7.onViewabilityChanged(false);
            }
            setIsVisible(false);
            DtbLog.debug("SET MRAID Visible false because of root");
        }
        if (!this.isVisible) {
            return;
        }
        computeExposure();
    }

    /* renamed from: a */
    public /* synthetic */ boolean m42587a(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        long m8638c = C22128a.m8638c();
        if (action == 0) {
            this.timePressed = m8638c;
            return false;
        } else if (action != 1) {
            this.timePressed = 0L;
            return false;
        } else if (m8638c - this.timeClicked < 1000) {
            return false;
        } else {
            if (m8638c - this.timePressed < 500) {
                this.timeClicked = m8638c;
                this.controller.onAdClicked();
            }
            this.timePressed = 0L;
            return false;
        }
    }

    public void cleanup() {
        removeJavascriptInterface(AMAZON_BRIDGE);
        DTBAdMRAIDController dTBAdMRAIDController = this.controller;
        dTBAdMRAIDController.adView = null;
        dTBAdMRAIDController.customButtonListener = null;
        this.controller = null;
    }

    public void computeExposure() {
        computeExposure(false);
    }

    public void computeExposure(boolean z) {
        ScrollView scrollViewParent = getScrollViewParent();
        if (scrollViewParent != null) {
            computeExposureInScrollView(scrollViewParent, z);
            return;
        }
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[0];
        Rect rect = new Rect(i, i2, getWidth() + i3, getHeight() + iArr[1]);
        if (this.controller == null) {
            return;
        }
        computeExposureInRootView(z);
        this.controller.onPositionChanged(rect);
    }

    public void computeExposureInRootView() {
        computeExposureInRootView(false);
    }

    public void computeExposureInRootView(boolean z) {
        ViewGroup viewGroup;
        View view = (View) getParent();
        Activity activity = view != null ? DTBAdUtil.getActivity(view) : DTBAdUtil.getActivity(this);
        if (activity == null || (viewGroup = (ViewGroup) activity.findViewById(16908290)) == null) {
            return;
        }
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        Rect rect = new Rect(iArr[0], iArr[1], viewGroup.getWidth() + iArr[0], viewGroup.getHeight() + iArr[1]);
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        Rect rect2 = new Rect(iArr2[0], iArr2[1], getWidth() + iArr2[0], getHeight() + iArr2[1]);
        float height = getHeight() * getWidth();
        if (rect2.intersect(rect)) {
            int i = (int) (((((rect2.bottom - rect2.top) * (rect2.right - rect2.left)) * 100.0d) / height) + 0.5d);
            if (i == this.exposurePercent && !z) {
                return;
            }
            this.exposurePercent = i;
            this.controller.fireExposureChange(i, rect2);
        } else if (this.exposurePercent == 0 && !z) {
        } else {
            this.exposurePercent = 0;
            rect2.top = rect2.bottom;
            this.controller.fireExposureChange(0, rect2);
        }
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    public void fetchAd(Bundle bundle) {
        fetchAd((String) null, bundle);
    }

    public void fetchAd(String str) {
        fetchAd(str, (Bundle) null);
    }

    public void fetchAd(String str, Bundle bundle) {
        String str2 = str;
        if (str == null) {
            try {
                str2 = bundle.getString(BID_HTML, null);
            } catch (RuntimeException e) {
                DtbLog.error(LOG_TAG, "Fail to execute fetchAd method with bundle");
                C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute fetchAd method with bundle", e);
                return;
            }
        }
        if (bundle != null) {
            DTBAdMRAIDBannerController dTBAdMRAIDBannerController = this.controller;
            if (dTBAdMRAIDBannerController instanceof DTBAdMRAIDBannerController) {
                DTBAdBannerListener dTBAdBannerListener = dTBAdMRAIDBannerController.bannerListener;
                int i = bundle.getInt(EXPECTED_WIDTH, 0);
                int i2 = bundle.getInt(EXPECTED_HEIGHT, 0);
                if (i2 > 0 && i > 0 && (dTBAdBannerListener instanceof DTBExpectedSizeProvider)) {
                    DTBExpectedSizeProvider dTBExpectedSizeProvider = (DTBExpectedSizeProvider) dTBAdBannerListener;
                    dTBExpectedSizeProvider.setExpectedWidth(i);
                    dTBExpectedSizeProvider.setExpectedHeight(i2);
                }
            }
        }
        if (bundle != null) {
            this.bidId = bundle.getString(BID_IDENTIFIER);
            this.hostname = bundle.getString(HOSTNAME_IDENTIFIER);
        }
        this.startTime = new Date().getTime();
        StringBuilder sb = new StringBuilder();
        sb.append("<!DOCTYPE html><html><head>");
        sb.append("<script>");
        sb.append(getEnvironment(bundle));
        sb.append("</script>");
        loadLocalFile("aps-mraid", sb);
        loadLocalFile("dtb-m", sb);
        sb.append("</head>");
        sb.append("<body style='margin:0;padding:0;'>");
        sb.append(str2);
        sb.append("</body></html>");
        loadDataWithBaseURL("https://c.amazon-adsystem.com/", sb.toString(), "text/html", StringConstant.UTF8, null);
    }

    public void fetchAd(String str, Map<String, Object> map) {
        try {
            Bundle bundle = new Bundle();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof String) {
                    bundle.putString(entry.getKey(), (String) value);
                } else if (value instanceof Boolean) {
                    bundle.putBoolean(entry.getKey(), ((Boolean) value).booleanValue());
                }
                if (value instanceof Integer) {
                    bundle.putInt(entry.getKey(), ((Integer) value).intValue());
                }
                if (value instanceof Long) {
                    bundle.putLong(entry.getKey(), ((Long) value).longValue());
                }
            }
            fetchAd(str, bundle);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute fetchAd method with map bundle");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute fetchAd method with map bundle", e);
        }
    }

    public void fetchAd(Map<String, Object> map) {
        fetchAd((String) null, map);
    }

    public void fetchAdWithLocation(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("<script>");
            sb.append(getEnvironment(null));
            sb.append("</script>");
            loadLocalFile("aps-mraid", sb);
            sb.append("<script>");
            sb.append("window.location=\"");
            sb.append(str);
            sb.append("\";");
            sb.append("</script>");
            loadDataWithBaseURL("https://c.amazon-adsystem.com/", sb.toString(), "text/html", StringConstant.UTF8, null);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute fetchAdWithLocation method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute fetchAdWithLocation method", e);
        }
    }

    public void finalize() {
        try {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
            getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangeListener);
            getViewTreeObserver().removeOnGlobalFocusChangeListener(this.focusChangeListener);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute finalize method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute finalize method", e);
        }
    }

    public String getBidId() {
        return this.bidId;
    }

    public DTBAdMRAIDController getController() {
        return this.controller;
    }

    public String getEnvironment(Bundle bundle) {
        Boolean bool = Boolean.FALSE;
        String string = bundle != null ? bundle.getString(AMAZON_AD_INFO) : null;
        Context context = getContext();
        String str = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
        String idfa = DtbSharedPreferences.getInstance().getIdfa();
        String str2 = idfa;
        if (DtbCommonUtils.isNullOrEmpty(idfa)) {
            str2 = "unknown";
        }
        Boolean optOut = DtbSharedPreferences.getInstance().getOptOut();
        Boolean bool2 = optOut;
        if (optOut == null) {
            bool2 = bool;
        }
        return string == null ? String.format(ENV_TEMPLATE, ScreenDensity.SD_300, DtbCommonUtils.getSDKMRAIDVersion(), DtbConstants.SDK_VERSION, str, str2, bool2, bool) : String.format(ENV_TEMPLATE_INFO, ScreenDensity.SD_300, DtbCommonUtils.getSDKMRAIDVersion(), DtbConstants.SDK_VERSION, str, str2, bool2, bool, string);
    }

    public String getHostname() {
        return this.hostname;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void onAdRemoved() {
        this.controller.onAdRemoved();
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            getViewTreeObserver().addOnGlobalLayoutListener(this.globalLayoutListener);
            getViewTreeObserver().addOnGlobalFocusChangeListener(this.focusChangeListener);
            getViewTreeObserver().addOnScrollChangedListener(this.scrollChangeListener);
            DTBAdMRAIDController controller = getController();
            if (controller == null) {
                return;
            }
            controller.onAdOpened(this);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute onAttachedToWindow method in DTBAdView class");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute onAttachedToWindow method in DTBAdView class", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
            getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
            getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangeListener);
            getViewTreeObserver().removeOnGlobalFocusChangeListener(this.focusChangeListener);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute onDetachedFromWindow method in DTBAdView class");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute onDetachedFromWindow method in DTBAdView class", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.isFirstDisplay) {
            if (DTBTimeTrace.getInstance() != null && AdRegistration.isTestMode()) {
                DTBTimeTrace.getInstance().addPhase(DTBTimeTrace.TIMETRACE_AD_DISPLAY_SUCCEEDED);
                DTBTimeTrace.getInstance().logTrace();
            }
            DTBAdMRAIDController dTBAdMRAIDController = this.controller;
            if (dTBAdMRAIDController instanceof DTBAdViewDisplayListener) {
                ((DTBAdViewDisplayListener) dTBAdMRAIDController).onInitialDisplay();
            }
            this.isFirstDisplay = false;
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        if (this.scrollEnabled) {
            super.onScrollChanged(i, i2, i4, i3);
        } else {
            scrollTo(0, 0);
        }
    }

    public void setIgnoreDetachment() {
        this.ignoreDetachment = true;
    }

    public void setScrollEnabled(boolean z) {
        this.scrollEnabled = z;
        setVerticalScrollBarEnabled(z);
        setHorizontalScrollBarEnabled(z);
    }
}
