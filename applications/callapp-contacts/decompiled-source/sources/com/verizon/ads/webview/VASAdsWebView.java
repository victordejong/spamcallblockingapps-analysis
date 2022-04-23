package com.verizon.ads.webview;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.iab.omid.library.verizonmedia.adsession.AdSessionConfiguration;
import com.iab.omid.library.verizonmedia.adsession.a;
import com.iab.omid.library.verizonmedia.adsession.b;
import com.iab.omid.library.verizonmedia.adsession.c;
import com.iab.omid.library.verizonmedia.adsession.e;
import com.iab.omid.library.verizonmedia.adsession.g;
import com.iab.omid.library.verizonmedia.adsession.h;
import com.iab.omid.library.verizonmedia.adsession.i;
import com.iab.omid.library.verizonmedia.d.d;
import com.verizon.ads.BuildConfig;
import com.verizon.ads.Configuration;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.omsdk.OMSDKPlugin;
import com.verizon.ads.omsdk.OpenMeasurementService;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.utils.IOUtils;
import com.verizon.ads.utils.ThreadUtils;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebView.class */
public class VASAdsWebView extends WebView {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35893a = Logger.getInstance(VASAdsWebView.class);
    private static final String g = VASAdsWebView.class.getSimpleName();
    private static final boolean h;
    private static final Pattern i;
    private static final Pattern j;
    private static final Pattern k;
    private static final Pattern l;

    /* renamed from: b  reason: collision with root package name */
    protected VASAdsWebViewListener f35894b;

    /* renamed from: c  reason: collision with root package name */
    String f35895c;

    /* renamed from: d  reason: collision with root package name */
    volatile LoadDataListener f35896d;
    LinkedHashMap<String, String> e;
    b f;
    private volatile JSONArray m;
    private GestureDetector n;
    private volatile boolean o = false;
    private volatile boolean p = false;
    private a q;

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface.class */
    class CommonJavaScriptInterface {
        CommonJavaScriptInterface() {
        }

        @JavascriptInterface
        public void fileLoaded(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsWebView.f35893a.d("fileLoaded: ".concat(String.valueOf(str)));
            }
            VASAdsWebView.this.e.remove(new JSONObject(str).getString("filename"));
            if (VASAdsWebView.this.e.isEmpty()) {
                VASAdsWebView.this.a((ErrorInfo) null);
            }
        }

        @JavascriptInterface
        public String getActionsQueue() {
            synchronized (this) {
                if (VASAdsWebView.this.m == null) {
                    return null;
                }
                String jSONArray = VASAdsWebView.this.m.toString();
                VASAdsWebView.this.m = null;
                return jSONArray;
            }
        }

        @JavascriptInterface
        public Boolean useActionsQueue() {
            return Boolean.valueOf(VASAdsWebView.h);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebView$LoadDataListener.class */
    public interface LoadDataListener {
        void onComplete(ErrorInfo errorInfo);
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebView$VASAdsWebViewGestureListener.class */
    static class VASAdsWebViewGestureListener extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<VASAdsWebView> f35899a;

        VASAdsWebViewGestureListener(VASAdsWebView vASAdsWebView) {
            this.f35899a = new WeakReference<>(vASAdsWebView);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            VASAdsWebView vASAdsWebView = this.f35899a.get();
            if (vASAdsWebView == null) {
                return true;
            }
            vASAdsWebView.f35894b.onClicked(vASAdsWebView);
            return true;
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener.class */
    public interface VASAdsWebViewListener {
        void onAdLeftApplication(VASAdsWebView vASAdsWebView);

        void onClicked(VASAdsWebView vASAdsWebView);

        void onError(ErrorInfo errorInfo);
    }

    static {
        h = Build.VERSION.SDK_INT < 19;
        i = Pattern.compile("<html[^>]*>", 2);
        j = Pattern.compile("<head[^>]*>", 2);
        k = Pattern.compile("<body[^>]*>", 2);
        l = Pattern.compile("<(?!meta)[^>]*>", 2);
    }

    public VASAdsWebView(Context context, VASAdsWebViewListener vASAdsWebViewListener) {
        super(new MutableContextWrapper(context));
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f35893a;
            logger.d("Creating webview " + hashCode());
        }
        setTag("VASAdsWebView");
        this.f35894b = vASAdsWebViewListener == null ? b() : vASAdsWebViewListener;
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        this.n = new GestureDetector(context.getApplicationContext(), new VASAdsWebViewGestureListener(this));
        setWebViewClient(new VASAdsWebViewClient());
        setWebChromeClient(new VASAdsWebChromeClient());
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setLoadWithOverviewMode(true);
        settings.setGeolocationEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 17) {
            f35893a.d("Disabling user gesture requirement for media playback");
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        this.e = linkedHashMap;
        if (h) {
            linkedHashMap.put("actionsQueue.js", "vas/actionsQueue.js");
        }
        for (String str : a()) {
            if (str != null) {
                this.e.put(str.substring(str.lastIndexOf(47) + 1), str);
            }
        }
        addJavascriptInterface(new CommonJavaScriptInterface(), "MmInjectedFunctions");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, String str3, String str4, String str5, boolean z) {
        if (str5 == null) {
            str5 = "vasadsdk";
        }
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            if (!z) {
                a((ErrorInfo) null);
            }
        } catch (Exception e) {
            f35893a.e("Error occurred when calling through to loadDataWithBaseUrl", e);
            a(new ErrorInfo(g, "Exception occurred loading content.", -2));
        }
    }

    private String b(String str) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                InputStream open = getContext().getAssets().open(str);
                inputStream2 = open;
                inputStream = open;
                String convertStreamToString = IOUtils.convertStreamToString(open);
                if (open != null) {
                    try {
                        open.close();
                    } catch (IOException e) {
                        f35893a.e("Error closing asset input stream", e);
                    }
                }
                return convertStreamToString;
            } catch (IOException e2) {
                inputStream2 = inputStream;
                f35893a.e("Error opening asset input stream", e2);
                if (inputStream == null) {
                    return "";
                }
                try {
                    inputStream.close();
                    return "";
                } catch (IOException e3) {
                    f35893a.e("Error closing asset input stream", e3);
                    return "";
                }
            }
        } catch (Throwable th) {
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException e4) {
                    f35893a.e("Error closing asset input stream", e4);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        if (Logger.isLogLevelEnabled(3)) {
            f35893a.d("Calling js: ".concat(String.valueOf(str)));
        }
        evaluateJavascript(str, null);
    }

    private boolean c() {
        OpenMeasurementService measurementService = OMSDKPlugin.getMeasurementService();
        if (measurementService == null) {
            f35893a.d("OMSDK is disabled");
            return false;
        }
        try {
            i partner = measurementService.getPartner();
            d.a(partner, "Partner is null");
            d.a(this, "WebView is null");
            this.f = b.a(AdSessionConfiguration.createAdSessionConfiguration(e.HTML_DISPLAY, g.OTHER, h.NATIVE, null, false), new c(partner, this, null, null, "", null, com.iab.omid.library.verizonmedia.adsession.d.HTML));
            return true;
        } catch (Throwable th) {
            f35893a.e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        if (this.f == null) {
            Logger logger = f35893a;
            logger.d("Preparing OMSDK");
            if (c()) {
                try {
                    this.q = a.a(this.f);
                    this.f.a(this);
                    logger.d("Starting the OMSDK Ad Session.");
                    this.f.a();
                    this.q.b();
                    logger.d("Fired OMSDK loaded event.");
                } catch (Throwable th) {
                    f35893a.e("OMSDK is disabled - error starting OMSDK Ad Session.", th);
                    this.f = null;
                    this.q = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str) {
        if (this.o) {
            f35893a.d("Attempt to loadUrlOnUiThread after webview has been destroyed");
            return;
        }
        try {
            super.loadUrl(str);
        } catch (Exception e) {
            f35893a.e("Error loading url", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.o = true;
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f35893a;
            logger.d("Releasing webview " + hashCode());
        }
        if (getParent() != null) {
            ViewUtils.removeFromParent(this);
        }
        super.loadUrl("about:blank");
        stopLoading();
        setWebChromeClient(null);
        setWebViewClient(null);
        try {
            destroy();
        } catch (Exception e) {
            f35893a.e("An error occurred destroying the webview.", e);
        }
        this.n = null;
    }

    protected String a(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(Collection<String> collection) {
        StringBuilder sb = new StringBuilder();
        for (String str : collection) {
            sb.append("\n<script>");
            sb.append(b(str));
            sb.append("</script>");
        }
        return sb.toString();
    }

    protected List<String> a() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ErrorInfo errorInfo) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$WHeBH_cxM56FvYjT_f_NHoIkynA
            @Override // java.lang.Runnable
            public final void run() {
                VASAdsWebView.this.d();
            }
        });
        if (this.f35896d != null) {
            this.f35896d.onComplete(errorInfo);
            this.f35896d = null;
        }
    }

    protected VASAdsWebViewListener b() {
        return new VASAdsWebViewListener() { // from class: com.verizon.ads.webview.VASAdsWebView.1
            @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
            public void onAdLeftApplication(VASAdsWebView vASAdsWebView) {
            }

            @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
            public void onClicked(VASAdsWebView vASAdsWebView) {
            }

            @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
            public void onError(ErrorInfo errorInfo) {
            }
        };
    }

    public void callJavascript(String str, Object... objArr) {
        JSONArray jSONArray = new JSONArray((Collection) Arrays.asList(objArr));
        try {
            if (!this.e.isEmpty()) {
                if (Logger.isLogLevelEnabled(3)) {
                    f35893a.d("jsBridge scripts are not loaded: " + str + "(" + jSONArray.join(",") + ")");
                }
            } else if (h) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("functionName", str);
                jSONObject.put("args", jSONArray);
                synchronized (this) {
                    if (Logger.isLogLevelEnabled(3)) {
                        f35893a.d("Queuing js: " + str + " args: " + jSONArray.toString());
                    }
                    if (this.m == null) {
                        this.m = new JSONArray();
                    }
                    this.m.put(jSONObject);
                }
            } else {
                final String str2 = str + "(" + jSONArray.join(",") + ")";
                post(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$SpTF7XLzwPbmV3fbdV_YREF5Hr0
                    @Override // java.lang.Runnable
                    public final void run() {
                        VASAdsWebView.this.c(str2);
                    }
                });
            }
        } catch (JSONException e) {
            f35893a.e("Unable to execute javascript function", e);
        }
    }

    public void fireImpression() {
        a aVar = this.q;
        if (aVar != null) {
            try {
                aVar.a();
                f35893a.d("Fired OMSDK impression event.");
            } catch (Throwable th) {
                f35893a.e("Error occurred firing OMSDK Impression event.", th);
            }
        }
    }

    @Override // android.webkit.WebView
    public String getUrl() {
        if (this.o) {
            return null;
        }
        return super.getUrl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean i() {
        return !this.p;
    }

    public boolean isDestroyed() {
        return this.o;
    }

    public void loadData(String str, String str2, String str3, LoadDataListener loadDataListener) {
        loadDataWithBaseURL(Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "waterfallProviderBaseUrl", "http://ads.nexage.com"), str, str2, str3, null, loadDataListener);
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f35895c = str;
        super.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public void loadDataWithBaseURL(final String str, String str2, final String str3, final String str4, final String str5, LoadDataListener loadDataListener) {
        String str6;
        this.f35896d = loadDataListener;
        if (str2 == null) {
            a(new ErrorInfo(g, "data was null", -1));
            return;
        }
        this.f35895c = str;
        boolean isHttpsUrl = URLUtil.isHttpsUrl(str);
        boolean isEmpty = this.e.isEmpty();
        String str7 = (isHttpsUrl ? "<meta http-equiv=\"Content-Security-Policy\" content=\"upgrade-insecure-requests\"><style>body {margin:0;padding:0;}</style>" : "<style>body {margin:0;padding:0;}</style>") + a(this.e.values());
        StringBuffer stringBuffer = new StringBuffer(str2.length() + str7.length() + 64);
        Matcher matcher = i.matcher(str2);
        boolean find = matcher.find(0);
        if (!find) {
            stringBuffer.append("<html>");
        }
        matcher.usePattern(j);
        if (matcher.find()) {
            int end = matcher.end(0);
            matcher.usePattern(l);
            matcher.region(end, matcher.regionEnd());
            if (matcher.find()) {
                matcher.appendReplacement(stringBuffer, "");
                stringBuffer.append(str7);
                stringBuffer.append(matcher.group(0));
            }
            matcher.appendTail(stringBuffer);
        } else {
            matcher.usePattern(k);
            if (matcher.find()) {
                matcher.appendReplacement(stringBuffer, "");
                stringBuffer.append("<head>");
                stringBuffer.append(str7);
                stringBuffer.append("</head>");
                stringBuffer.append(matcher.group(0));
                matcher.appendTail(stringBuffer);
            } else if (!find) {
                stringBuffer.append("<head>");
                stringBuffer.append(str7);
                stringBuffer.append("</head><body>");
                stringBuffer.append(str2);
                stringBuffer.append("</body>");
            }
        }
        if (!find) {
            stringBuffer.append("</html>");
        }
        String stringBuffer2 = stringBuffer.toString();
        try {
            OpenMeasurementService measurementService = OMSDKPlugin.getMeasurementService();
            str6 = stringBuffer2;
            if (measurementService != null) {
                str6 = measurementService.enhanceHTML(stringBuffer2);
            }
        } catch (IOException e) {
            f35893a.e("Error injecting OMSDK scripts into HTML content.", e);
            str6 = stringBuffer2;
        }
        final String a2 = a(str6);
        if (Logger.isLogLevelEnabled(3)) {
            f35893a.d(String.format("Injected Content:\n%s", str6));
        }
        final boolean z = !isEmpty;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$lyRLzQsQbeErs2U_LEUFN75QOnU
            @Override // java.lang.Runnable
            public final void run() {
                VASAdsWebView.this.a(str, a2, str3, str4, str5, z);
            }
        });
    }

    @Override // android.webkit.WebView
    public void loadUrl(final String str) {
        if (TextUtils.isEmpty(str)) {
            f35893a.e("Url is null or empty");
        } else if (this.o) {
            f35893a.d("Attempt to load url after webview has been destroyed");
        } else {
            if (str.startsWith("http")) {
                this.f35895c = str;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$UtWIWJvHjr9RS12mpOK_1BCvBGo
                @Override // java.lang.Runnable
                public final void run() {
                    VASAdsWebView.this.d(str);
                }
            });
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.p = true;
        GestureDetector gestureDetector = this.n;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void release() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35893a.e("release must be called on the UI thread");
            return;
        }
        if (this.f != null) {
            f35893a.d("Finishing the OMSDK Ad session.");
            this.f.b();
        }
        ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$ihvQkcHU61EMaCpp8QCQ_z30TuM
            @Override // java.lang.Runnable
            public final void run() {
                VASAdsWebView.this.e();
            }
        }, 1000L);
    }
}
