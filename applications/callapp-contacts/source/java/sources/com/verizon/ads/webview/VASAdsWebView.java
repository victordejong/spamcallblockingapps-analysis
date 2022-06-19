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
import com.iab.omid.library.verizonmedia.adsession.AbstractC16483b;
import com.iab.omid.library.verizonmedia.adsession.AdSessionConfiguration;
import com.iab.omid.library.verizonmedia.adsession.C16479a;
import com.iab.omid.library.verizonmedia.adsession.C16484c;
import com.iab.omid.library.verizonmedia.adsession.C16490i;
import com.iab.omid.library.verizonmedia.adsession.EnumC16485d;
import com.iab.omid.library.verizonmedia.adsession.EnumC16486e;
import com.iab.omid.library.verizonmedia.adsession.EnumC16488g;
import com.iab.omid.library.verizonmedia.adsession.EnumC16489h;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
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

    /* renamed from: a */
    private static final Logger f62188a = Logger.getInstance(VASAdsWebView.class);

    /* renamed from: g */
    private static final String f62189g = VASAdsWebView.class.getSimpleName();

    /* renamed from: h */
    private static final boolean f62190h;

    /* renamed from: i */
    private static final Pattern f62191i;

    /* renamed from: j */
    private static final Pattern f62192j;

    /* renamed from: k */
    private static final Pattern f62193k;

    /* renamed from: l */
    private static final Pattern f62194l;

    /* renamed from: b */
    protected VASAdsWebViewListener f62195b;

    /* renamed from: c */
    String f62196c;

    /* renamed from: d */
    volatile LoadDataListener f62197d;

    /* renamed from: e */
    LinkedHashMap<String, String> f62198e;

    /* renamed from: f */
    AbstractC16483b f62199f;

    /* renamed from: m */
    private volatile JSONArray f62200m;

    /* renamed from: n */
    private GestureDetector f62201n;

    /* renamed from: o */
    private volatile boolean f62202o = false;

    /* renamed from: p */
    private volatile boolean f62203p = false;

    /* renamed from: q */
    private C16479a f62204q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface.class */
    public class CommonJavaScriptInterface {
        CommonJavaScriptInterface() {
            VASAdsWebView.this = r4;
        }

        @JavascriptInterface
        public void fileLoaded(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsWebView.f62188a.m5567d("fileLoaded: ".concat(String.valueOf(str)));
            }
            VASAdsWebView.this.f62198e.remove(new JSONObject(str).getString("filename"));
            if (VASAdsWebView.this.f62198e.isEmpty()) {
                VASAdsWebView.this.mo4940a((ErrorInfo) null);
            }
        }

        @JavascriptInterface
        public String getActionsQueue() {
            synchronized (this) {
                if (VASAdsWebView.this.f62200m != null) {
                    String jSONArray = VASAdsWebView.this.f62200m.toString();
                    VASAdsWebView.this.f62200m = null;
                    return jSONArray;
                }
                return null;
            }
        }

        @JavascriptInterface
        public Boolean useActionsQueue() {
            return Boolean.valueOf(VASAdsWebView.f62190h);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebView$LoadDataListener.class */
    public interface LoadDataListener {
        void onComplete(ErrorInfo errorInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebView$VASAdsWebViewGestureListener.class */
    public static class VASAdsWebViewGestureListener extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a */
        private WeakReference<VASAdsWebView> f62207a;

        VASAdsWebViewGestureListener(VASAdsWebView vASAdsWebView) {
            this.f62207a = new WeakReference<>(vASAdsWebView);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            VASAdsWebView vASAdsWebView = this.f62207a.get();
            if (vASAdsWebView != null) {
                vASAdsWebView.f62195b.onClicked(vASAdsWebView);
                return true;
            }
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
        f62190h = Build.VERSION.SDK_INT < 19;
        f62191i = Pattern.compile("<html[^>]*>", 2);
        f62192j = Pattern.compile("<head[^>]*>", 2);
        f62193k = Pattern.compile("<body[^>]*>", 2);
        f62194l = Pattern.compile("<(?!meta)[^>]*>", 2);
    }

    public VASAdsWebView(Context context, VASAdsWebViewListener vASAdsWebViewListener) {
        super(new MutableContextWrapper(context));
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f62188a;
            logger.m5567d("Creating webview " + hashCode());
        }
        setTag("VASAdsWebView");
        this.f62195b = vASAdsWebViewListener == null ? mo4935b() : vASAdsWebViewListener;
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        this.f62201n = new GestureDetector(context.getApplicationContext(), new VASAdsWebViewGestureListener(this));
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
            f62188a.m5567d("Disabling user gesture requirement for media playback");
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        this.f62198e = linkedHashMap;
        if (f62190h) {
            linkedHashMap.put("actionsQueue.js", "vas/actionsQueue.js");
        }
        for (String str : mo4941a()) {
            if (str != null) {
                this.f62198e.put(str.substring(str.lastIndexOf(47) + 1), str);
            }
        }
        addJavascriptInterface(new CommonJavaScriptInterface(), "MmInjectedFunctions");
    }

    /* renamed from: a */
    public /* synthetic */ void m4937a(String str, String str2, String str3, String str4, String str5, boolean z) {
        if (str5 == null) {
            str5 = "vasadsdk";
        }
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            if (z) {
                return;
            }
            mo4940a((ErrorInfo) null);
        } catch (Exception e) {
            f62188a.m5564e("Error occurred when calling through to loadDataWithBaseUrl", e);
            mo4940a(new ErrorInfo(f62189g, "Exception occurred loading content.", -2));
        }
    }

    /* renamed from: b */
    private String m4933b(String str) {
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
                        f62188a.m5564e("Error closing asset input stream", e);
                    }
                }
                return convertStreamToString;
            } catch (IOException e2) {
                inputStream2 = inputStream;
                f62188a.m5564e("Error opening asset input stream", e2);
                if (inputStream == null) {
                    return "";
                }
                try {
                    inputStream.close();
                    return "";
                } catch (IOException e3) {
                    f62188a.m5564e("Error closing asset input stream", e3);
                    return "";
                }
            }
        } catch (Throwable th) {
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException e4) {
                    f62188a.m5564e("Error closing asset input stream", e4);
                }
            }
            throw th;
        }
    }

    /* renamed from: c */
    public /* synthetic */ void m4931c(String str) {
        if (Logger.isLogLevelEnabled(3)) {
            f62188a.m5567d("Calling js: ".concat(String.valueOf(str)));
        }
        evaluateJavascript(str, null);
    }

    /* renamed from: c */
    private boolean m4932c() {
        OpenMeasurementService measurementService = OMSDKPlugin.getMeasurementService();
        if (measurementService == null) {
            f62188a.m5567d("OMSDK is disabled");
            return false;
        }
        try {
            C16490i partner = measurementService.getPartner();
            C16514d.m7102a(partner, "Partner is null");
            C16514d.m7102a(this, "WebView is null");
            this.f62199f = AbstractC16483b.m7158a(AdSessionConfiguration.createAdSessionConfiguration(EnumC16486e.HTML_DISPLAY, EnumC16488g.OTHER, EnumC16489h.NATIVE, null, false), new C16484c(partner, this, null, null, "", null, EnumC16485d.HTML));
            return true;
        } catch (Throwable th) {
            f62188a.m5564e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
            return false;
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m4930d() {
        if (this.f62199f != null) {
            return;
        }
        Logger logger = f62188a;
        logger.m5567d("Preparing OMSDK");
        if (!m4932c()) {
            return;
        }
        try {
            this.f62204q = C16479a.m7173a(this.f62199f);
            this.f62199f.mo7153a(this);
            logger.m5567d("Starting the OMSDK Ad Session.");
            this.f62199f.mo7154a();
            this.f62204q.m7172b();
            logger.m5567d("Fired OMSDK loaded event.");
        } catch (Throwable th) {
            f62188a.m5564e("OMSDK is disabled - error starting OMSDK Ad Session.", th);
            this.f62199f = null;
            this.f62204q = null;
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m4929d(String str) {
        if (this.f62202o) {
            f62188a.m5567d("Attempt to loadUrlOnUiThread after webview has been destroyed");
            return;
        }
        try {
            super.loadUrl(str);
        } catch (Exception e) {
            f62188a.m5564e("Error loading url", e);
        }
    }

    /* renamed from: e */
    public /* synthetic */ void m4928e() {
        this.f62202o = true;
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f62188a;
            logger.m5567d("Releasing webview " + hashCode());
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
            f62188a.m5564e("An error occurred destroying the webview.", e);
        }
        this.f62201n = null;
    }

    /* renamed from: a */
    protected String mo4938a(String str) {
        return str;
    }

    /* renamed from: a */
    public String mo4936a(Collection<String> collection) {
        StringBuilder sb = new StringBuilder();
        for (String str : collection) {
            sb.append("\n<script>");
            sb.append(m4933b(str));
            sb.append("</script>");
        }
        return sb.toString();
    }

    /* renamed from: a */
    protected List<String> mo4941a() {
        return Collections.emptyList();
    }

    /* renamed from: a */
    public void mo4940a(ErrorInfo errorInfo) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$WHeBH_cxM56FvYjT_f_NHoIkynA
            @Override // java.lang.Runnable
            public final void run() {
                VASAdsWebView.this.m4930d();
            }
        });
        if (this.f62197d != null) {
            this.f62197d.onComplete(errorInfo);
            this.f62197d = null;
        }
    }

    /* renamed from: b */
    protected VASAdsWebViewListener mo4935b() {
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
            if (!this.f62198e.isEmpty()) {
                if (!Logger.isLogLevelEnabled(3)) {
                    return;
                }
                f62188a.m5567d("jsBridge scripts are not loaded: " + str + "(" + jSONArray.join(",") + ")");
            } else if (!f62190h) {
                final String str2 = str + "(" + jSONArray.join(",") + ")";
                post(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$SpTF7XLzwPbmV3fbdV_YREF5Hr0
                    @Override // java.lang.Runnable
                    public final void run() {
                        VASAdsWebView.this.m4931c(str2);
                    }
                });
            } else {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("functionName", str);
                jSONObject.put("args", jSONArray);
                synchronized (this) {
                    if (Logger.isLogLevelEnabled(3)) {
                        f62188a.m5567d("Queuing js: " + str + " args: " + jSONArray.toString());
                    }
                    if (this.f62200m == null) {
                        this.f62200m = new JSONArray();
                    }
                    this.f62200m.put(jSONObject);
                }
            }
        } catch (JSONException e) {
            f62188a.m5564e("Unable to execute javascript function", e);
        }
    }

    public void fireImpression() {
        C16479a c16479a = this.f62204q;
        if (c16479a != null) {
            try {
                c16479a.m7175a();
                f62188a.m5567d("Fired OMSDK impression event.");
            } catch (Throwable th) {
                f62188a.m5564e("Error occurred firing OMSDK Impression event.", th);
            }
        }
    }

    @Override // android.webkit.WebView
    public String getUrl() {
        if (this.f62202o) {
            return null;
        }
        return super.getUrl();
    }

    /* renamed from: i */
    public final boolean m4927i() {
        return !this.f62203p;
    }

    public boolean isDestroyed() {
        return this.f62202o;
    }

    public void loadData(String str, String str2, String str3, LoadDataListener loadDataListener) {
        loadDataWithBaseURL(Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "waterfallProviderBaseUrl", "http://ads.nexage.com"), str, str2, str3, null, loadDataListener);
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f62196c = str;
        super.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public void loadDataWithBaseURL(final String str, String str2, final String str3, final String str4, final String str5, LoadDataListener loadDataListener) {
        String str6;
        this.f62197d = loadDataListener;
        if (str2 == null) {
            mo4940a(new ErrorInfo(f62189g, "data was null", -1));
            return;
        }
        this.f62196c = str;
        boolean isHttpsUrl = URLUtil.isHttpsUrl(str);
        boolean isEmpty = this.f62198e.isEmpty();
        String str7 = (isHttpsUrl ? "<meta http-equiv=\"Content-Security-Policy\" content=\"upgrade-insecure-requests\"><style>body {margin:0;padding:0;}</style>" : "<style>body {margin:0;padding:0;}</style>") + mo4936a(this.f62198e.values());
        StringBuffer stringBuffer = new StringBuffer(str2.length() + str7.length() + 64);
        Matcher matcher = f62191i.matcher(str2);
        boolean find = matcher.find(0);
        if (!find) {
            stringBuffer.append("<html>");
        }
        matcher.usePattern(f62192j);
        if (matcher.find()) {
            int end = matcher.end(0);
            matcher.usePattern(f62194l);
            matcher.region(end, matcher.regionEnd());
            if (matcher.find()) {
                matcher.appendReplacement(stringBuffer, "");
                stringBuffer.append(str7);
                stringBuffer.append(matcher.group(0));
            }
            matcher.appendTail(stringBuffer);
        } else {
            matcher.usePattern(f62193k);
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
            f62188a.m5564e("Error injecting OMSDK scripts into HTML content.", e);
            str6 = stringBuffer2;
        }
        final String mo4938a = mo4938a(str6);
        if (Logger.isLogLevelEnabled(3)) {
            f62188a.m5567d(String.format("Injected Content:\n%s", str6));
        }
        final boolean z = !isEmpty;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$lyRLzQsQbeErs2U_LEUFN75QOnU
            @Override // java.lang.Runnable
            public final void run() {
                VASAdsWebView.this.m4937a(str, mo4938a, str3, str4, str5, z);
            }
        });
    }

    @Override // android.webkit.WebView
    public void loadUrl(final String str) {
        if (TextUtils.isEmpty(str)) {
            f62188a.m5565e("Url is null or empty");
        } else if (this.f62202o) {
            f62188a.m5567d("Attempt to load url after webview has been destroyed");
        } else {
            if (str.startsWith("http")) {
                this.f62196c = str;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$UtWIWJvHjr9RS12mpOK_1BCvBGo
                @Override // java.lang.Runnable
                public final void run() {
                    VASAdsWebView.this.m4929d(str);
                }
            });
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f62203p = true;
        GestureDetector gestureDetector = this.f62201n;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void release() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62188a.m5565e("release must be called on the UI thread");
            return;
        }
        if (this.f62199f != null) {
            f62188a.m5567d("Finishing the OMSDK Ad session.");
            this.f62199f.mo7151b();
        }
        ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.verizon.ads.webview._$$Lambda$VASAdsWebView$ihvQkcHU61EMaCpp8QCQ_z30TuM
            @Override // java.lang.Runnable
            public final void run() {
                VASAdsWebView.this.m4928e();
            }
        }, 1000L);
    }
}
