package net.pubnative.lite.sdk.mraid;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.ClientCertRequest;
import android.webkit.ConsoleMessage;
import android.webkit.HttpAuthHandler;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.amazonaws.services.s3.util.Mimetypes;
import com.iab.omid.library.pubnativenet.adsession.f;
import com.mopub.common.AdType;
import com.verizon.ads.EnvironmentInfo;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.mraid.internal.MRAIDHtmlProcessor;
import net.pubnative.lite.sdk.mraid.internal.MRAIDLog;
import net.pubnative.lite.sdk.mraid.internal.MRAIDNativeFeatureManager;
import net.pubnative.lite.sdk.mraid.internal.MRAIDParser;
import net.pubnative.lite.sdk.mraid.properties.MRAIDOrientationProperties;
import net.pubnative.lite.sdk.mraid.properties.MRAIDResizeProperties;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityFriendlyObstruction;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityWebAdSession;
import net.pubnative.lite.sdk.views.PNWebView;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import net.pubnative.lite.sdk.vpaid.helpers.SimpleTimer;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/MRAIDView.class */
public class MRAIDView extends RelativeLayout {
    private static final int CLOSE_REGION_SIZE = 50;
    private static final String MRAID_LOG_TAG = "MRAIDView";
    public static final int STATE_DEFAULT = 1;
    public static final int STATE_EXPANDED = 2;
    public static final int STATE_HIDDEN = 4;
    public static final int STATE_LOADING = 0;
    public static final int STATE_RESIZED = 3;
    private final String baseUrl;
    private MRAIDViewCloseLayoutListener closeLayoutListener;
    private ImageButton closeRegion;
    private ViewGroup contentInfo;
    private int contentViewTop;
    private final Context context;
    private Rect currentPosition;
    private WebView currentWebView;
    private Rect defaultPosition;
    private final DisplayMetrics displayMetrics;
    private RelativeLayout expandedView;
    private final GestureDetector gestureDetector;
    protected Handler handler;
    private boolean isActionBarShowing;
    private boolean isClosing;
    private boolean isExpanded;
    private boolean isExpandingFromDefault;
    private boolean isExpandingPart2;
    private boolean isForceNotFullScreen;
    private boolean isForcingFullScreen;
    private boolean isFullScreen;
    private final boolean isInterstitial;
    protected boolean isLaidOut;
    protected boolean isPageFinished;
    protected boolean isViewable;
    protected MRAIDViewListener listener;
    private SimpleTimer mExpirationTimer;
    private HyBidViewabilityWebAdSession mViewabilityAdSession;
    private List<HyBidViewabilityFriendlyObstruction> mViewabilityFriendlyObstructions;
    private Size maxSize;
    private String mraidJs;
    private final MRAIDWebChromeClient mraidWebChromeClient;
    private final MRAIDWebViewClient mraidWebViewClient;
    private final MRAIDNativeFeatureListener nativeFeatureListener;
    private final MRAIDNativeFeatureManager nativeFeatureManager;
    private final MRAIDOrientationProperties orientationProperties;
    private int origTitleBarVisibility;
    private final int originalRequestedOrientation;
    private final MRAIDResizeProperties resizeProperties;
    private RelativeLayout resizedView;
    private Size screenSize;
    private Activity showActivity;
    protected int state;
    private View titleBar;
    private boolean useCustomClose;
    protected WebView webView;
    private WebView webViewPart2;
    private static final String[] COMMANDS_WITH_NO_PARAM = {EventConstants.CLOSE, "resize"};
    private static final String[] COMMANDS_WITH_STRING = {"createCalendarEvent", "expand", "open", "playVideo", MRAIDNativeFeature.STORE_PICTURE, "useCustomClose"};
    private static final String[] COMMANDS_WITH_MAP = {"setOrientationProperties", "setResizeProperties"};
    private Integer mSkipTimeMillis = -1;
    private boolean wasTouched = false;
    private boolean contentInfoAdded = false;
    private boolean webViewLoaded = false;
    private int injections = 0;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/MRAIDView$MRAIDState.class */
    public @interface MRAIDState {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebChromeClient.class */
    public class MRAIDWebChromeClient extends WebChromeClient {
        private MRAIDWebChromeClient() {
        }

        private boolean handlePopups(JsResult jsResult) {
            jsResult.cancel();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            MRAIDLog.d("hz-m MRAIDView ChromeClient - onCloseWindow");
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String str;
            if (consoleMessage == null || consoleMessage.message() == null) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(consoleMessage.message());
            if (consoleMessage.sourceId() == null) {
                str = "";
            } else {
                str = " at " + consoleMessage.sourceId();
            }
            sb.append(str);
            sb.append(":");
            sb.append(consoleMessage.lineNumber());
            MRAIDLog.i("JS console", sb.toString());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onExceededDatabaseQuota");
            quotaUpdater.updateQuota(j);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            MRAIDLog.d("JS alert", str2);
            return handlePopups(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            MRAIDLog.d("hz-m MRAIDView ChromeClient - onJsBeforeUnload");
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            MRAIDLog.d("JS confirm", str2);
            return handlePopups(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            MRAIDLog.d("JS prompt", str2);
            return handlePopups(jsPromptResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsTimeout() {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onJsTimeout");
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequest(PermissionRequest permissionRequest) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onPermissionRequest");
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            MRAIDLog.d("hz-m MRAIDView ChromeClient - onProgressChanged " + i + " wv: " + MRAIDView.this.webView + " view: " + MRAIDView.this);
        }

        @Override // android.webkit.WebChromeClient
        public void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onReachedMaxAppCacheSize");
            quotaUpdater.updateQuota(j2);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            MRAIDLog.d("hz-m MRAIDView ChromeClient - showCustomView");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient.class */
    public class MRAIDWebViewClient extends WebViewClient {
        private MRAIDWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(WebView webView, String str) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onPageCommitVisibile");
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            MRAIDLog.d(MRAIDView.MRAID_LOG_TAG, "onPageFinished: ".concat(String.valueOf(str)));
            if (MRAIDView.this.state == 0) {
                MRAIDView.this.isPageFinished = true;
                MRAIDView mRAIDView = MRAIDView.this;
                StringBuilder sb = new StringBuilder("mraid.setPlacementType('");
                sb.append(MRAIDView.this.isInterstitial ? AdType.INTERSTITIAL : "inline");
                sb.append("');");
                mRAIDView.injectJavaScript(sb.toString());
                MRAIDView.this.setSupportedServices();
                if (MRAIDView.this.isLaidOut) {
                    MRAIDView.this.initSkipTime();
                    MRAIDView.this.setScreenSize();
                    MRAIDView.this.setMaxSize();
                    MRAIDView.this.setCurrentPosition();
                    MRAIDView.this.setDefaultPosition();
                    if (MRAIDView.this.isInterstitial) {
                        MRAIDView mRAIDView2 = MRAIDView.this;
                        mRAIDView2.showAsInterstitial(mRAIDView2.showActivity);
                    } else {
                        MRAIDView.this.state = 1;
                        MRAIDView.this.fireStateChangeEvent();
                        MRAIDView.this.fireReadyEvent();
                        if (MRAIDView.this.isViewable) {
                            MRAIDView.this.fireViewableChangeEvent();
                        }
                    }
                }
                if (!MRAIDView.this.isInterstitial) {
                    MRAIDView mRAIDView3 = MRAIDView.this;
                    mRAIDView3.addContentInfo(mRAIDView3);
                }
                if (MRAIDView.this.listener != null && !MRAIDView.this.webViewLoaded) {
                    MRAIDView.this.mViewabilityAdSession.initAdSession(webView, false);
                    if (MRAIDView.this.contentInfo != null && MRAIDView.this.contentInfoAdded) {
                        MRAIDView mRAIDView4 = MRAIDView.this;
                        mRAIDView4.addViewabilityFriendlyObstruction(mRAIDView4.contentInfo, f.OTHER, "Content info description for the ad");
                        for (HyBidViewabilityFriendlyObstruction hyBidViewabilityFriendlyObstruction : MRAIDView.this.mViewabilityFriendlyObstructions) {
                            MRAIDView.this.mViewabilityAdSession.addFriendlyObstruction(hyBidViewabilityFriendlyObstruction.getView(), hyBidViewabilityFriendlyObstruction.getPurpose(), hyBidViewabilityFriendlyObstruction.getReason());
                        }
                    }
                    MRAIDView.this.webViewLoaded = true;
                    MRAIDView.this.mViewabilityAdSession.fireLoaded();
                    MRAIDView.this.mViewabilityAdSession.fireImpression();
                    MRAIDView.this.listener.mraidViewLoaded(MRAIDView.this);
                    MRAIDView.this.startSkipTimer();
                }
            }
            if (MRAIDView.this.isExpandingPart2) {
                MRAIDView.this.isExpandingPart2 = false;
                MRAIDView.this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.MRAIDWebViewClient.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MRAIDView mRAIDView5 = MRAIDView.this;
                        StringBuilder sb2 = new StringBuilder("mraid.setPlacementType('");
                        sb2.append(MRAIDView.this.isInterstitial ? AdType.INTERSTITIAL : "inline");
                        sb2.append("');");
                        mRAIDView5.injectJavaScript(sb2.toString());
                        MRAIDView.this.setSupportedServices();
                        MRAIDView.this.setScreenSize();
                        MRAIDView.this.setDefaultPosition();
                        MRAIDLog.d(MRAIDView.MRAID_LOG_TAG, "calling fireStateChangeEvent 2");
                        MRAIDView.this.fireStateChangeEvent();
                        MRAIDView.this.fireReadyEvent();
                        if (MRAIDView.this.isViewable) {
                            MRAIDView.this.fireViewableChangeEvent();
                        }
                    }
                });
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onPageStarted");
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onReceivedClientCertRequest");
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            MRAIDLog.d(MRAIDView.MRAID_LOG_TAG, "onReceivedError: ".concat(String.valueOf(str)));
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (Build.VERSION.SDK_INT >= 23) {
                MRAIDLog.d("hz-m MRAIDView WebViewClient - onReceivedError code: " + webResourceError.getErrorCode());
                MRAIDLog.d("hz-m MRAIDView WebViewClient - onReceivedError: " + ((Object) webResourceError.getDescription()));
                return;
            }
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onReceivedError: ".concat(String.valueOf(webResourceError)));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onReceivedHttpAuthRequest");
            httpAuthHandler.cancel();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onReceivedHttpError");
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onReceivedLoginRequest");
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onReceivedSslError");
        }

        @Override // android.webkit.WebViewClient
        public void onScaleChanged(WebView webView, float f, float f2) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onScaleChanged");
        }

        @Override // android.webkit.WebViewClient
        public void onTooManyRedirects(WebView webView, Message message, Message message2) {
            message.sendToTarget();
            MRAIDLog.d("hz-m MRAIDView WebViewClient - onTooManyRedirects");
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            MRAIDLog.d("hz-m shouldInterceptRequest - ".concat(String.valueOf(str)));
            if (!str.contains("mraid.js")) {
                return null;
            }
            MRAIDLog.d("hz-m shouldInterceptRequest - intercepting mraid - ".concat(String.valueOf(str)));
            MRAIDView.this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.MRAIDWebViewClient.2
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDView.injectJavaScript(MRAIDView.this.webView, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;");
                }
            });
            return new WebResourceResponse("application/javascript", "UTF-8", MRAIDView.this.getMraidJsStream());
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
            MRAIDLog.d("hz-m MRAIDView WebViewClient - shouldOverrideKeyEvent");
            return false;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            MRAIDLog.d(MRAIDView.MRAID_LOG_TAG, "shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
            if (str.startsWith("mraid://")) {
                MRAIDView.this.parseCommandUrl(str);
                return true;
            } else if (MRAIDView.this.isVerveCustomExpand(str)) {
                MRAIDView.this.expandCreative(str, true);
                return true;
            } else {
                try {
                    MRAIDView.this.open(URLEncoder.encode(str, "UTF-8"));
                    return true;
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    return true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/MRAIDView$Size.class */
    public static class Size {
        public int height;
        public int width;

        private Size() {
        }
    }

    public MRAIDView(Context context, String str, String str2, String[] strArr, MRAIDViewListener mRAIDViewListener, MRAIDNativeFeatureListener mRAIDNativeFeatureListener, ViewGroup viewGroup, boolean z) {
        super(context);
        this.context = context;
        if (context instanceof Activity) {
            this.showActivity = (Activity) context;
        }
        String str3 = str == null ? "http://example.com/" : str;
        this.baseUrl = str3;
        this.isInterstitial = z;
        this.contentInfo = viewGroup;
        this.state = 0;
        this.isViewable = false;
        this.useCustomClose = false;
        this.orientationProperties = new MRAIDOrientationProperties();
        this.resizeProperties = new MRAIDResizeProperties();
        this.nativeFeatureManager = new MRAIDNativeFeatureManager(context, new ArrayList(Arrays.asList(strArr)));
        this.listener = mRAIDViewListener;
        this.nativeFeatureListener = mRAIDNativeFeatureListener;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.displayMetrics = displayMetrics;
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        } else {
            this.displayMetrics = null;
        }
        this.currentPosition = new Rect();
        this.defaultPosition = new Rect();
        this.maxSize = new Size();
        this.screenSize = new Size();
        if (context instanceof Activity) {
            this.originalRequestedOrientation = ((Activity) context).getRequestedOrientation();
        } else {
            this.originalRequestedOrientation = -1;
        }
        String str4 = MRAID_LOG_TAG;
        MRAIDLog.d(str4, "originalRequestedOrientation " + getOrientationString(this.originalRequestedOrientation));
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }
        });
        this.handler = new Handler(Looper.getMainLooper());
        this.mViewabilityAdSession = new HyBidViewabilityWebAdSession(HyBid.getViewabilityManager());
        this.mViewabilityFriendlyObstructions = new ArrayList();
        this.mraidWebChromeClient = new MRAIDWebChromeClient();
        this.mraidWebViewClient = new MRAIDWebViewClient();
        WebView createWebView = createWebView();
        this.webView = createWebView;
        this.currentWebView = createWebView;
        String processRawHtml = MRAIDHtmlProcessor.processRawHtml(str2);
        MRAIDLog.d("hz-m loading mraid ".concat(String.valueOf(processRawHtml)));
        this.webView.loadDataWithBaseURL(str3, processRawHtml, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
    }

    private void addCloseRegion(View view) {
        ImageButton imageButton = new ImageButton(this.context);
        this.closeRegion = imageButton;
        imageButton.setBackgroundColor(0);
        this.closeRegion.setOnClickListener(new View.OnClickListener() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MRAIDView.this.close();
            }
        });
        if (view == this.expandedView && !this.useCustomClose) {
            showDefaultCloseButton();
        }
        ((ViewGroup) view).addView(this.closeRegion);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addContentInfo(View view) {
        ViewGroup viewGroup = this.contentInfo;
        if (viewGroup != null && !this.contentInfoAdded) {
            ((ViewGroup) view).addView(viewGroup);
            this.contentInfoAdded = true;
        }
    }

    private void calculateMaxSize() {
        if (this.context instanceof Activity) {
            Rect rect = new Rect();
            Window window = ((Activity) this.context).getWindow();
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
            String str = MRAID_LOG_TAG;
            MRAIDLog.d(str, "calculateMaxSize frame [" + rect.left + "," + rect.top + "][" + rect.right + "," + rect.bottom + "] (" + rect.width() + "x" + rect.height() + ")");
            if (window.findViewById(16908290) != null) {
                this.contentViewTop = window.findViewById(16908290).getTop();
            } else {
                this.contentViewTop = rect.top;
            }
            int i = rect.top;
            int i2 = this.contentViewTop;
            MRAIDLog.d(str, "calculateMaxSize statusHeight ".concat(String.valueOf(i)));
            MRAIDLog.d(str, "calculateMaxSize titleHeight ".concat(String.valueOf(i2 - i)));
            MRAIDLog.d(str, "calculateMaxSize contentViewTop " + this.contentViewTop);
            int width = rect.width();
            int i3 = this.screenSize.height - this.contentViewTop;
            MRAIDLog.d(str, "calculateMaxSize max size " + width + "x" + i3);
            if (width != this.maxSize.width || i3 != this.maxSize.height) {
                this.maxSize.width = width;
                this.maxSize.height = i3;
                if (this.isPageFinished) {
                    setMaxSize();
                }
            }
        }
    }

    private void calculatePosition(boolean z) {
        View view = z ? this.currentWebView : this;
        String str = z ? "current" : "default";
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        String str2 = MRAID_LOG_TAG;
        MRAIDLog.d(str2, "calculatePosition " + str + " locationOnScreen [" + i + "," + i2 + "]");
        StringBuilder sb = new StringBuilder("calculatePosition ");
        sb.append(str);
        sb.append(" contentViewTop ");
        sb.append(this.contentViewTop);
        MRAIDLog.d(str2, sb.toString());
        int i3 = i2 - this.contentViewTop;
        int width = view.getWidth();
        int height = view.getHeight();
        MRAIDLog.d(str2, "calculatePosition " + str + " position [" + i + "," + i3 + "] (" + width + "x" + height + ")");
        Rect rect = z ? this.currentPosition : this.defaultPosition;
        if (i != rect.left || i3 != rect.top || width != rect.width() || height != rect.height()) {
            if (z) {
                this.currentPosition = new Rect(i, i3, width + i, height + i3);
            } else {
                this.defaultPosition = new Rect(i, i3, width + i, height + i3);
            }
            if (!this.isPageFinished) {
                return;
            }
            if (z) {
                setCurrentPosition();
            } else {
                setDefaultPosition();
            }
        }
    }

    private void calculateScreenSize() {
        boolean z = true;
        if (getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        String str = MRAID_LOG_TAG;
        StringBuilder sb = new StringBuilder("calculateScreenSize orientation ");
        sb.append(z ? EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE);
        MRAIDLog.d(str, sb.toString());
        DisplayMetrics displayMetrics = this.displayMetrics;
        if (displayMetrics != null) {
            int i = displayMetrics.widthPixels;
            int i2 = this.displayMetrics.heightPixels;
            MRAIDLog.d(str, "calculateScreenSize screen size " + i + "x" + i2);
            if (i != this.screenSize.width || i2 != this.screenSize.height) {
                this.screenSize.width = i;
                this.screenSize.height = i2;
                if (this.isPageFinished) {
                    setScreenSize();
                }
            }
        }
    }

    private void createCalendarEvent(String str) {
        MRAIDLog.d(MRAID_LOG_TAG + "-JS callback", "createCalendarEvent ".concat(String.valueOf(str)));
        MRAIDNativeFeatureListener mRAIDNativeFeatureListener = this.nativeFeatureListener;
        if (mRAIDNativeFeatureListener != null) {
            mRAIDNativeFeatureListener.mraidNativeFeatureCreateCalendarEvent(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebView createWebView() {
        PNWebView pNWebView = new PNWebView(this.context) { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.2
            private static final String TAG = "MRAIDView-WebView";

            @Override // android.webkit.WebView, android.view.View
            public void onConfigurationChanged(Configuration configuration) {
                WindowManager windowManager;
                super.onConfigurationChanged(configuration);
                StringBuilder sb = new StringBuilder("onConfigurationChanged ");
                sb.append(configuration.orientation == 1 ? EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE);
                MRAIDLog.d(TAG, sb.toString());
                if (MRAIDView.this.isInterstitial && (windowManager = (WindowManager) MRAIDView.this.context.getSystemService("window")) != null) {
                    windowManager.getDefaultDisplay().getMetrics(MRAIDView.this.displayMetrics);
                }
            }

            @Override // android.widget.AbsoluteLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                MRAIDView.this.onLayoutWebView(this, z, i, i2, i3, i4);
            }

            @Override // android.webkit.WebView, android.view.View
            protected void onVisibilityChanged(View view, int i) {
                super.onVisibilityChanged(view, i);
                MRAIDLog.d(TAG, "onVisibilityChanged " + MRAIDView.getVisibilityString(i));
                if (MRAIDView.this.isInterstitial) {
                    MRAIDView.this.setViewable(i);
                }
            }

            @Override // android.webkit.WebView, android.view.View
            protected void onWindowVisibilityChanged(int i) {
                super.onWindowVisibilityChanged(i);
                int visibility = getVisibility();
                MRAIDLog.d(TAG, "onWindowVisibilityChanged " + MRAIDView.getVisibilityString(i) + " (actual " + MRAIDView.getVisibilityString(visibility) + ')');
                if (MRAIDView.this.isInterstitial) {
                    MRAIDView.this.setViewable(visibility);
                }
            }

            @Override // android.view.View
            public boolean performClick() {
                return super.performClick();
            }
        };
        pNWebView.setScrollContainer(false);
        pNWebView.setVerticalScrollBarEnabled(false);
        pNWebView.setHorizontalScrollBarEnabled(false);
        pNWebView.setScrollBarStyle(33554432);
        pNWebView.setOnTouchListener(new View.OnTouchListener() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                MRAIDView.this.wasTouched = true;
                int action = motionEvent.getAction();
                if ((action != 0 && action != 1) || view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        });
        pNWebView.getSettings().setJavaScriptEnabled(true);
        pNWebView.getSettings().setDomStorageEnabled(true);
        pNWebView.getSettings().setAllowContentAccess(false);
        pNWebView.enablePlugins(true);
        pNWebView.getSettings().setSupportZoom(false);
        pNWebView.setWebChromeClient(this.mraidWebChromeClient);
        pNWebView.setWebViewClient(this.mraidWebViewClient);
        if (Build.VERSION.SDK_INT >= 17) {
            pNWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        return pNWebView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandCreative(String str, final boolean z) {
        MRAIDLog.d("hz-m MRAIDView - expand ".concat(String.valueOf(str)));
        String str2 = MRAID_LOG_TAG + "-JS callback";
        StringBuilder sb = new StringBuilder("expand ");
        sb.append(str != null ? str : "(1-part)");
        MRAIDLog.d(str2, sb.toString());
        if (TextUtils.isEmpty(str)) {
            int i = this.state;
            if (i == 0 || i == 1) {
                if (this.webView.getParent() != null) {
                    ((ViewGroup) this.webView.getParent()).removeView(this.webView);
                } else {
                    removeView(this.webView);
                }
            } else if (i == 3) {
                removeResizeView();
            }
            expandHelper(this.webView);
            MRAIDLog.d("hz-m MRAIDView - expand - empty url");
            return;
        }
        try {
            String decode = URLDecoder.decode(str, "UTF-8");
            final String str3 = decode;
            if (!decode.startsWith("http://")) {
                str3 = decode;
                if (!decode.startsWith("https://")) {
                    str3 = this.baseUrl + decode;
                }
            }
            new Thread(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.5
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDLog.d("hz-m MRAIDView - expand - url loading thread");
                    if (!z) {
                        final String stringFromUrl = MRAIDView.this.getStringFromUrl(str3);
                        if (TextUtils.isEmpty(stringFromUrl) || !(MRAIDView.this.context instanceof Activity)) {
                            MRAIDLog.e("Could not load part 2 expanded content for URL: " + str3);
                            return;
                        }
                        ((Activity) MRAIDView.this.context).runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.5.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MRAIDView.this.state == 3) {
                                    MRAIDView.this.removeResizeView();
                                    MRAIDView.this.addView(MRAIDView.this.webView);
                                }
                                MRAIDView.this.webView.setWebChromeClient(null);
                                MRAIDView.this.webView.setWebViewClient(null);
                                MRAIDView.this.webViewPart2 = MRAIDView.this.createWebView();
                                MRAIDView.this.webViewPart2.loadDataWithBaseURL(MRAIDView.this.baseUrl, stringFromUrl, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
                                MRAIDLog.d("hz-m MRAIDView - expand - switching out currentwebview for " + MRAIDView.this.webViewPart2);
                                MRAIDView.this.currentWebView = MRAIDView.this.webViewPart2;
                                MRAIDView.this.isExpandingPart2 = true;
                                MRAIDView.this.expandHelper(MRAIDView.this.currentWebView);
                            }
                        });
                    } else if (MRAIDView.this.context instanceof Activity) {
                        ((Activity) MRAIDView.this.context).runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MRAIDView.this.state == 3) {
                                    MRAIDView.this.removeResizeView();
                                    MRAIDView.this.addView(MRAIDView.this.webView);
                                }
                                MRAIDView.this.webView.setWebChromeClient(null);
                                MRAIDView.this.webView.setWebViewClient(null);
                                MRAIDView.this.webViewPart2 = MRAIDView.this.createWebView();
                                MRAIDView.this.webViewPart2.loadUrl(str3);
                                MRAIDLog.d("hz-m MRAIDView - expand - switching out currentwebview for " + MRAIDView.this.webViewPart2);
                                MRAIDView.this.currentWebView = MRAIDView.this.webViewPart2;
                                MRAIDView.this.isExpandingPart2 = true;
                                MRAIDView.this.expandHelper(MRAIDView.this.currentWebView);
                            }
                        });
                    } else {
                        MRAIDLog.e("Could not load part 2 expanded content for URL: " + str3);
                    }
                }
            }, "2-part-content").start();
        } catch (UnsupportedEncodingException e) {
            MRAIDLog.d("hz-m MRAIDView - expand - UnsupportedEncodingException ".concat(String.valueOf(e)));
        }
    }

    private void forceFullScreen() {
        if (this.context instanceof Activity) {
            MRAIDLog.d(MRAID_LOG_TAG, "forceFullScreen");
            Activity activity = (Activity) this.context;
            int i = activity.getWindow().getAttributes().flags;
            boolean z = false;
            this.isFullScreen = (i & 1024) != 0;
            this.isForceNotFullScreen = (i & 2048) != 0;
            this.origTitleBarVisibility = -9;
            ActionBar actionBar = activity.getActionBar();
            if (actionBar != null) {
                this.isActionBarShowing = actionBar.isShowing();
                actionBar.hide();
                z = true;
            }
            if (!z) {
                this.titleBar = null;
                try {
                    this.titleBar = (View) activity.findViewById(16908310).getParent();
                } catch (NullPointerException e) {
                }
                View view = this.titleBar;
                if (view != null) {
                    this.origTitleBarVisibility = view.getVisibility();
                    this.titleBar.setVisibility(8);
                }
            }
            String str = MRAID_LOG_TAG;
            MRAIDLog.d(str, "isFullScreen " + this.isFullScreen);
            MRAIDLog.d(str, "isForceNotFullScreen " + this.isForceNotFullScreen);
            MRAIDLog.d(str, "isActionBarShowing " + this.isActionBarShowing);
            MRAIDLog.d(str, "origTitleBarVisibility " + getVisibilityString(this.origTitleBarVisibility));
            ((Activity) this.context).getWindow().addFlags(1024);
            ((Activity) this.context).getWindow().clearFlags(2048);
            this.isForcingFullScreen = !this.isFullScreen;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InputStream getMraidJsStream() {
        if (TextUtils.isEmpty(this.mraidJs)) {
            this.mraidJs = new String(Base64.decode(Assets.mraidJS, 0));
        }
        return new ByteArrayInputStream(this.mraidJs.getBytes(Charset.forName("UTF-8")));
    }

    private static String getOrientationString(int i) {
        return i != -1 ? i != 0 ? i != 1 ? "UNKNOWN" : "PORTRAIT" : "LANDSCAPE" : "UNSPECIFIED";
    }

    private String getStringFromFileUrl(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        String[] split = str.split("/");
        if (split[3].equals("android_asset")) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.context.getAssets().open(split[4])));
                String readLine = bufferedReader.readLine();
                stringBuffer.append(readLine);
                while (readLine != null) {
                    readLine = bufferedReader.readLine();
                    stringBuffer.append(readLine);
                }
                bufferedReader.close();
            } catch (IOException e) {
                MRAIDLog.e("Error fetching file: " + e.getMessage());
            }
            return stringBuffer.toString();
        }
        MRAIDLog.e("Unknown location to fetch file content");
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0144, code lost:
        if (r6 != null) goto L_0x0147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0147, code lost:
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x014c, code lost:
        r11 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0199, code lost:
        if (r6 != null) goto L_0x0147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01af, code lost:
        r11 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getStringFromUrl(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.pubnative.lite.sdk.mraid.MRAIDView.getStringFromUrl(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getVisibilityString(int i) {
        return i != 0 ? i != 4 ? i != 8 ? "UNKNOWN" : "GONE" : "INVISIBLE" : "VISIBLE";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initSkipTime() {
        int intValue = HyBid.getInterstitialSkipOffset().intValue() * 1000;
        if (this.mSkipTimeMillis.intValue() <= 0 && intValue > 0) {
            this.mSkipTimeMillis = Integer.valueOf(intValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void injectJavaScript(WebView webView, String str) {
        if (webView != null && !TextUtils.isEmpty(str)) {
            if (Build.VERSION.SDK_INT >= 19) {
                MRAIDLog.d(MRAID_LOG_TAG, "evaluating js: ".concat(String.valueOf(str)));
                webView.evaluateJavascript(str, new ValueCallback<String>() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.11
                    public final void onReceiveValue(String str2) {
                        MRAIDLog.d("Evaluated JS: ".concat(String.valueOf(str2)));
                    }
                });
                return;
            }
            MRAIDLog.d(MRAID_LOG_TAG, "loading url: ".concat(String.valueOf(str)));
            webView.loadUrl("javascript:".concat(String.valueOf(str)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void injectJavaScript(String str) {
        injectJavaScript(this.currentWebView, str);
    }

    private void injectMraidJs(WebView webView) {
        if (TextUtils.isEmpty(this.mraidJs)) {
            this.mraidJs = new String(Base64.decode(Assets.mraidJS, 0));
        }
        injectJavaScript(this.mraidJs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVerveCustomExpand(String str) {
        return !TextUtils.isEmpty(str) && str.contains("tags-prod.vrvm.com") && str.contains("type=expandable");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLayoutWebView(WebView webView, boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = webView == this.currentWebView;
        String str = MRAID_LOG_TAG;
        StringBuilder sb = new StringBuilder("onLayoutWebView ");
        sb.append(webView == this.webView ? "1 " : "2 ");
        sb.append(z2);
        sb.append(" (");
        sb.append(this.state);
        sb.append(") ");
        sb.append(z);
        sb.append(StringUtils.SPACE);
        sb.append(i);
        sb.append(StringUtils.SPACE);
        sb.append(i2);
        sb.append(StringUtils.SPACE);
        sb.append(i3);
        sb.append(StringUtils.SPACE);
        sb.append(i4);
        MRAIDLog.w(str, sb.toString());
        if (!z2) {
            MRAIDLog.d(str, "onLayoutWebView ignored, not current");
            return;
        }
        int i5 = this.state;
        if (i5 == 0 || i5 == 1) {
            calculateScreenSize();
            calculateMaxSize();
        }
        if (!this.isClosing) {
            calculatePosition(true);
            if (this.isInterstitial && !this.defaultPosition.equals(this.currentPosition)) {
                this.defaultPosition = new Rect(this.currentPosition);
                setDefaultPosition();
            }
        }
        if (this.isExpandingFromDefault) {
            this.isExpandingFromDefault = false;
            if (this.isInterstitial) {
                this.state = 1;
                this.isLaidOut = true;
            }
            if (!this.isExpandingPart2) {
                MRAIDLog.d(str, "calling fireStateChangeEvent 1");
                fireStateChangeEvent();
            }
            if (this.isInterstitial) {
                fireReadyEvent();
                if (this.isViewable) {
                    fireViewableChangeEvent();
                }
            }
            MRAIDViewListener mRAIDViewListener = this.listener;
            if (mRAIDViewListener != null) {
                mRAIDViewListener.mraidViewExpand(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void open(String str) {
        try {
            String decode = URLDecoder.decode(str, "UTF-8");
            StringBuilder sb = new StringBuilder();
            String str2 = MRAID_LOG_TAG;
            sb.append(str2);
            sb.append("-JS callback");
            String sb2 = sb.toString();
            MRAIDLog.d(sb2, "open " + decode + " touched: " + this.wasTouched);
            if (!this.wasTouched) {
                MRAIDLog.d(str2 + "- JS callback", "open called, but no touch recorded, aborting");
            } else if (this.nativeFeatureListener == null) {
            } else {
                if (decode.startsWith(MRAIDNativeFeature.SMS)) {
                    this.nativeFeatureListener.mraidNativeFeatureSendSms(decode);
                } else if (decode.startsWith(MRAIDNativeFeature.TEL)) {
                    this.nativeFeatureListener.mraidNativeFeatureCallTel(decode);
                } else {
                    this.nativeFeatureListener.mraidNativeFeatureOpenBrowser(decode);
                }
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseCommandUrl(String str) {
        MRAIDLog.d(MRAID_LOG_TAG, "parseCommandUrl ".concat(String.valueOf(str)));
        Map<String, String> parseCommandUrl = new MRAIDParser().parseCommandUrl(str);
        String str2 = parseCommandUrl.get("command");
        try {
            if (Arrays.asList(COMMANDS_WITH_NO_PARAM).contains(str2)) {
                try {
                    getClass().getDeclaredMethod(str2, new Class[0]).invoke(this, new Object[0]);
                    return;
                } catch (NoSuchMethodException e) {
                    getClass().getSuperclass().getDeclaredMethod(str2, new Class[0]).invoke(this, new Object[0]);
                    return;
                }
            } else if (Arrays.asList(COMMANDS_WITH_STRING).contains(str2)) {
                char c2 = 65535;
                int hashCode = str2.hashCode();
                String str3 = "useCustomClose";
                if (hashCode != -733616544) {
                    if (hashCode == 1614272768 && str2.equals("useCustomClose")) {
                        c2 = 1;
                    }
                } else if (str2.equals("createCalendarEvent")) {
                    c2 = 0;
                }
                if (c2 == 0) {
                    str3 = "eventJSON";
                } else if (c2 != 1) {
                    str3 = "url";
                }
                String str4 = parseCommandUrl.get(str3);
                try {
                    getClass().getDeclaredMethod(str2, String.class).invoke(this, str4);
                    return;
                } catch (NoSuchMethodException e2) {
                    getClass().getSuperclass().getDeclaredMethod(str2, String.class).invoke(this, str4);
                    return;
                }
            } else if (Arrays.asList(COMMANDS_WITH_MAP).contains(str2)) {
                try {
                    getClass().getDeclaredMethod(str2, Map.class).invoke(this, parseCommandUrl);
                    return;
                } catch (NoSuchMethodException e3) {
                    getClass().getSuperclass().getDeclaredMethod(str2, Map.class).invoke(this, parseCommandUrl);
                    return;
                }
            } else {
                return;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        e4.printStackTrace();
    }

    private void pauseWebView(WebView webView) {
        String str = MRAID_LOG_TAG;
        MRAIDLog.d(str, "pauseWebView " + webView.toString());
        webView.onPause();
    }

    private void playVideo(String str) {
        try {
            String decode = URLDecoder.decode(str, "UTF-8");
            MRAIDLog.d(MRAID_LOG_TAG + "-JS callback", "playVideo ".concat(String.valueOf(decode)));
            MRAIDNativeFeatureListener mRAIDNativeFeatureListener = this.nativeFeatureListener;
            if (mRAIDNativeFeatureListener != null) {
                mRAIDNativeFeatureListener.mraidNativeFeaturePlayVideo(decode);
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    private int px2dip(int i) {
        DisplayMetrics displayMetrics = this.displayMetrics;
        int i2 = i;
        if (displayMetrics != null) {
            i2 = (i * 160) / displayMetrics.densityDpi;
        }
        return i2;
    }

    private void removeDefaultCloseButton() {
        ImageButton imageButton = this.closeRegion;
        if (imageButton != null) {
            imageButton.setImageResource(17170445);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeResizeView() {
        this.resizedView.removeAllViews();
        Context context = this.context;
        if (context instanceof Activity) {
            ((FrameLayout) ((Activity) context).findViewById(16908290)).removeView(this.resizedView);
            this.resizedView = null;
            this.closeRegion = null;
        }
    }

    private void resize() {
        MRAIDLog.d(MRAID_LOG_TAG + "-JS callback", "resize");
        MRAIDViewListener mRAIDViewListener = this.listener;
        if (mRAIDViewListener != null && mRAIDViewListener.mraidViewResize(this, this.resizeProperties.width, this.resizeProperties.height, this.resizeProperties.offsetX, this.resizeProperties.offsetY)) {
            this.state = 3;
            if (this.resizedView == null) {
                this.resizedView = new RelativeLayout(this.context);
                removeAllViews();
                this.resizedView.addView(this.webView);
                addCloseRegion(this.resizedView);
                ((FrameLayout) getRootView().findViewById(16908290)).addView(this.resizedView);
            }
            setCloseRegionPosition(this.resizedView);
            setResizedViewSize();
            setResizedViewPosition();
            this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.6
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDView.this.fireStateChangeEvent();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreOriginalOrientation() {
        if (this.context instanceof Activity) {
            MRAIDLog.d(MRAID_LOG_TAG, "restoreOriginalOrientation");
            Activity activity = (Activity) this.context;
            int requestedOrientation = activity.getRequestedOrientation();
            int i = this.originalRequestedOrientation;
            if (requestedOrientation != i) {
                activity.setRequestedOrientation(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreOriginalScreenState() {
        Context context = this.context;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (!this.isFullScreen) {
                activity.getWindow().clearFlags(1024);
            }
            if (this.isForceNotFullScreen) {
                activity.getWindow().addFlags(2048);
            }
            if (this.isActionBarShowing) {
                activity.getActionBar().show();
                return;
            }
            View view = this.titleBar;
            if (view != null) {
                view.setVisibility(this.origTitleBarVisibility);
            }
        }
    }

    private void setCloseRegionPosition(View view) {
        DisplayMetrics displayMetrics = this.displayMetrics;
        if (displayMetrics != null) {
            int applyDimension = (int) TypedValue.applyDimension(1, 50.0f, displayMetrics);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
            if (view != this.expandedView) {
                if (view == this.resizedView) {
                    switch (this.resizeProperties.customClosePosition) {
                        case 0:
                        case 4:
                            layoutParams.addRule(9);
                            break;
                        case 1:
                        case 3:
                        case 5:
                            layoutParams.addRule(14);
                            break;
                        case 2:
                        case 6:
                            layoutParams.addRule(11);
                            break;
                    }
                    switch (this.resizeProperties.customClosePosition) {
                        case 0:
                        case 1:
                        case 2:
                            layoutParams.addRule(10);
                            break;
                        case 3:
                            layoutParams.addRule(15);
                            break;
                        case 4:
                        case 5:
                        case 6:
                            layoutParams.addRule(12);
                            break;
                    }
                }
            } else {
                layoutParams.addRule(10);
                layoutParams.addRule(11);
            }
            this.closeRegion.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentPosition() {
        int i = this.currentPosition.left;
        int i2 = this.currentPosition.top;
        int width = this.currentPosition.width();
        int height = this.currentPosition.height();
        String str = MRAID_LOG_TAG;
        MRAIDLog.d(str, "setCurrentPosition [" + i + "," + i2 + "] (" + width + "x" + height + ")");
        injectJavaScript("mraid.setCurrentPosition(" + px2dip(i) + "," + px2dip(i2) + "," + px2dip(width) + "," + px2dip(height) + ");");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultPosition() {
        int i = this.defaultPosition.left;
        int i2 = this.defaultPosition.top;
        int width = this.defaultPosition.width();
        int height = this.defaultPosition.height();
        String str = MRAID_LOG_TAG;
        MRAIDLog.d(str, "setDefaultPosition [" + i + "," + i2 + "] (" + width + "x" + height + ")");
        injectJavaScript("mraid.setDefaultPosition(" + px2dip(i) + "," + px2dip(i2) + "," + px2dip(width) + "," + px2dip(height) + ");");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMaxSize() {
        String str = MRAID_LOG_TAG;
        MRAIDLog.d(str, "setMaxSize");
        int i = this.maxSize.width;
        int i2 = this.maxSize.height;
        MRAIDLog.d(str, "setMaxSize " + i + "x" + i2);
        injectJavaScript("mraid.setMaxSize(" + px2dip(i) + "," + px2dip(i2) + ");");
    }

    private void setResizeProperties(Map<String, String> map) {
        int parseInt = Integer.parseInt(map.get("width"));
        int parseInt2 = Integer.parseInt(map.get("height"));
        int parseInt3 = Integer.parseInt(map.get("offsetX"));
        int parseInt4 = Integer.parseInt(map.get("offsetY"));
        String str = map.get("customClosePosition");
        boolean parseBoolean = Boolean.parseBoolean(map.get("allowOffscreen"));
        MRAIDLog.d(MRAID_LOG_TAG + "-JS callback", "setResizeProperties " + parseInt + StringUtils.SPACE + parseInt2 + StringUtils.SPACE + parseInt3 + StringUtils.SPACE + parseInt4 + StringUtils.SPACE + str + StringUtils.SPACE + parseBoolean);
        this.resizeProperties.width = parseInt;
        this.resizeProperties.height = parseInt2;
        this.resizeProperties.offsetX = parseInt3;
        this.resizeProperties.offsetY = parseInt4;
        this.resizeProperties.customClosePosition = MRAIDResizeProperties.customClosePositionFromString(str);
        this.resizeProperties.allowOffscreen = parseBoolean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResizedViewPosition() {
        if (this.displayMetrics != null) {
            MRAIDLog.d(MRAID_LOG_TAG, "setResizedViewPosition");
            if (this.resizedView != null) {
                int i = this.resizeProperties.width;
                int i2 = this.resizeProperties.height;
                int i3 = this.resizeProperties.offsetX;
                int i4 = this.resizeProperties.offsetY;
                int applyDimension = (int) TypedValue.applyDimension(1, i, this.displayMetrics);
                int applyDimension2 = (int) TypedValue.applyDimension(1, i2, this.displayMetrics);
                int applyDimension3 = (int) TypedValue.applyDimension(1, i3, this.displayMetrics);
                int applyDimension4 = (int) TypedValue.applyDimension(1, i4, this.displayMetrics);
                int i5 = this.defaultPosition.left + applyDimension3;
                int i6 = this.defaultPosition.top + applyDimension4;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.resizedView.getLayoutParams();
                layoutParams.leftMargin = i5;
                layoutParams.topMargin = i6;
                this.resizedView.setLayoutParams(layoutParams);
                if (i5 != this.currentPosition.left || i6 != this.currentPosition.top || applyDimension != this.currentPosition.width() || applyDimension2 != this.currentPosition.height()) {
                    this.currentPosition.left = i5;
                    this.currentPosition.top = i6;
                    this.currentPosition.right = i5 + applyDimension;
                    this.currentPosition.bottom = i6 + applyDimension2;
                    setCurrentPosition();
                }
            }
        }
    }

    private void setResizedViewSize() {
        if (this.displayMetrics != null) {
            String str = MRAID_LOG_TAG;
            MRAIDLog.d(str, "setResizedViewSize");
            int i = this.resizeProperties.width;
            int i2 = this.resizeProperties.height;
            MRAIDLog.d(str, "setResizedViewSize " + i + "x" + i2);
            this.resizedView.setLayoutParams(new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, (float) i, this.displayMetrics), (int) TypedValue.applyDimension(1, (float) i2, this.displayMetrics)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScreenSize() {
        String str = MRAID_LOG_TAG;
        MRAIDLog.d(str, "setScreenSize");
        int i = this.screenSize.width;
        int i2 = this.screenSize.height;
        MRAIDLog.d(str, "setScreenSize " + i + "x" + i2);
        injectJavaScript("mraid.setScreenSize(" + px2dip(i) + "," + px2dip(i2) + ");");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSupportedServices() {
        MRAIDLog.d(MRAID_LOG_TAG, "setSupportedServices");
        injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, " + this.nativeFeatureManager.isCalendarSupported() + ");");
        injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, " + this.nativeFeatureManager.isInlineVideoSupported() + ");");
        injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, " + this.nativeFeatureManager.isSmsSupported() + ");");
        injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, " + this.nativeFeatureManager.isStorePictureSupported() + ");");
        injectJavaScript("mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, " + this.nativeFeatureManager.isTelSupported() + ");");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewable(int i) {
        boolean z = i == 0;
        if (z != this.isViewable) {
            this.isViewable = z;
            if (this.isPageFinished && this.isLaidOut) {
                fireViewableChangeEvent();
            }
        }
    }

    private void showDefaultCloseButton() {
        if (this.closeRegion != null) {
            Drawable drawableFromBase64 = Assets.getDrawableFromBase64(getResources(), Assets.new_close);
            Drawable drawableFromBase642 = Assets.getDrawableFromBase64(getResources(), Assets.new_close_pressed);
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{-16842919}, drawableFromBase64);
            stateListDrawable.addState(new int[]{16842919}, drawableFromBase642);
            this.closeRegion.setImageDrawable(stateListDrawable);
            this.closeRegion.setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSkipTimer() {
        if (this.mSkipTimeMillis.intValue() > 0) {
            SimpleTimer simpleTimer = new SimpleTimer(this.mSkipTimeMillis.intValue(), new SimpleTimer.Listener() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.13
                @Override // net.pubnative.lite.sdk.vpaid.helpers.SimpleTimer.Listener
                public void onFinish() {
                    MRAIDView.this.listener.mraidShowCloseButton();
                }
            });
            this.mExpirationTimer = simpleTimer;
            simpleTimer.start();
            return;
        }
        this.listener.mraidShowCloseButton();
    }

    private void storePicture(String str) {
        try {
            String decode = URLDecoder.decode(str, "UTF-8");
            MRAIDLog.d(MRAID_LOG_TAG + "-JS callback", "storePicture ".concat(String.valueOf(decode)));
            MRAIDNativeFeatureListener mRAIDNativeFeatureListener = this.nativeFeatureListener;
            if (mRAIDNativeFeatureListener != null) {
                mRAIDNativeFeatureListener.mraidNativeFeatureStorePicture(decode);
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    private void useCustomClose(String str) {
        MRAIDLog.d(MRAID_LOG_TAG + "-JS callback", "useCustomClose ".concat(String.valueOf(str)));
        boolean parseBoolean = Boolean.parseBoolean(str);
        if (this.useCustomClose != parseBoolean) {
            this.useCustomClose = parseBoolean;
            if (parseBoolean) {
                MRAIDViewCloseLayoutListener mRAIDViewCloseLayoutListener = this.closeLayoutListener;
                if (mRAIDViewCloseLayoutListener != null) {
                    mRAIDViewCloseLayoutListener.onRemoveCloseLayout();
                } else {
                    removeDefaultCloseButton();
                }
            } else {
                MRAIDViewCloseLayoutListener mRAIDViewCloseLayoutListener2 = this.closeLayoutListener;
                if (mRAIDViewCloseLayoutListener2 != null) {
                    mRAIDViewCloseLayoutListener2.onShowCloseLayout();
                } else {
                    showDefaultCloseButton();
                }
            }
        }
    }

    public void addViewabilityFriendlyObstruction(View view, f fVar, String str) {
        if (view != null && !TextUtils.isEmpty(str)) {
            this.mViewabilityFriendlyObstructions.add(new HyBidViewabilityFriendlyObstruction(view, fVar, str));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c8, code lost:
        if (r10 != false) goto L_0x009d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void applyOrientationProperties() {
        /*
            r4 = this;
            r0 = r4
            android.content.Context r0 = r0.context
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x00d4
            java.lang.String r0 = net.pubnative.lite.sdk.mraid.MRAIDView.MRAID_LOG_TAG
            r5 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "applyOrientationProperties "
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            r1 = r4
            net.pubnative.lite.sdk.mraid.properties.MRAIDOrientationProperties r1 = r1.orientationProperties
            boolean r1 = r1.allowOrientationChange
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r4
            net.pubnative.lite.sdk.mraid.properties.MRAIDOrientationProperties r1 = r1.orientationProperties
            java.lang.String r1 = r1.forceOrientationString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.toString()
            net.pubnative.lite.sdk.mraid.internal.MRAIDLog.d(r0, r1)
            r0 = r4
            android.content.Context r0 = r0.context
            android.app.Activity r0 = (android.app.Activity) r0
            r7 = r0
            r0 = r4
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.orientation
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0064
            r0 = 1
            r10 = r0
            goto L_0x0067
        L_0x0064:
            r0 = 0
            r10 = r0
        L_0x0067:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "currentOrientation "
            r1.<init>(r2)
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x007f
            java.lang.String r0 = "portrait"
            r6 = r0
            goto L_0x0083
        L_0x007f:
            java.lang.String r0 = "landscape"
            r6 = r0
        L_0x0083:
            r0 = r11
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r11
            java.lang.String r1 = r1.toString()
            net.pubnative.lite.sdk.mraid.internal.MRAIDLog.d(r0, r1)
            r0 = r4
            net.pubnative.lite.sdk.mraid.properties.MRAIDOrientationProperties r0 = r0.orientationProperties
            int r0 = r0.forceOrientation
            if (r0 != 0) goto L_0x00a3
        L_0x009d:
            r0 = 1
            r8 = r0
            goto L_0x00ce
        L_0x00a3:
            r0 = r9
            r8 = r0
            r0 = r4
            net.pubnative.lite.sdk.mraid.properties.MRAIDOrientationProperties r0 = r0.orientationProperties
            int r0 = r0.forceOrientation
            r1 = 1
            if (r0 == r1) goto L_0x00ce
            r0 = r4
            net.pubnative.lite.sdk.mraid.properties.MRAIDOrientationProperties r0 = r0.orientationProperties
            boolean r0 = r0.allowOrientationChange
            if (r0 == 0) goto L_0x00c2
            r0 = -1
            r8 = r0
            goto L_0x00ce
        L_0x00c2:
            r0 = r9
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00ce
            goto L_0x009d
        L_0x00ce:
            r0 = r7
            r1 = r8
            r0.setRequestedOrientation(r1)
        L_0x00d4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.pubnative.lite.sdk.mraid.MRAIDView.applyOrientationProperties():void");
    }

    public void clearView() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setWebChromeClient(null);
            this.webView.setWebViewClient(null);
            this.webView.loadUrl("about:blank");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void close() {
        MRAIDLog.d(MRAID_LOG_TAG + "-JS callback", EventConstants.CLOSE);
        StringBuilder sb = new StringBuilder("hz-m closing wv: ");
        sb.append(this.webView);
        MRAIDLog.d(sb.toString());
        this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.4
            @Override // java.lang.Runnable
            public void run() {
                if (MRAIDView.this.state == 1 || MRAIDView.this.state == 2) {
                    if (MRAIDView.this.closeLayoutListener != null) {
                        MRAIDView.this.closeLayoutListener.onClose();
                    } else {
                        MRAIDView.this.closeFromExpanded();
                    }
                } else if (MRAIDView.this.state == 3) {
                    MRAIDView.this.closeFromResized();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void closeFromExpanded() {
        int i = this.state;
        if (i == 2 || i == 3) {
            this.state = 1;
        }
        this.isClosing = true;
        this.isExpanded = false;
        this.expandedView.removeAllViews();
        Context context = this.context;
        if (context instanceof Activity) {
            ((FrameLayout) ((Activity) context).findViewById(16908290)).removeView(this.expandedView);
            this.expandedView = null;
            this.closeRegion = null;
            this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.7
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDView.this.restoreOriginalOrientation();
                    MRAIDView.this.restoreOriginalScreenState();
                }
            });
            WebView webView = this.webViewPart2;
            if (webView == null) {
                addView(this.webView, new RelativeLayout.LayoutParams(-1, -2));
            } else {
                webView.destroy();
                this.webView.setWebChromeClient(this.mraidWebChromeClient);
                this.webView.setWebViewClient(this.mraidWebViewClient);
                MRAIDLog.d("hz-m MRAIDView - closeFromExpanded - setting currentwebview to " + this.webView);
                WebView webView2 = this.webView;
                this.currentWebView = webView2;
                webView2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
            }
            this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.8
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDView.this.fireStateChangeEvent();
                    if (MRAIDView.this.listener != null) {
                        MRAIDView.this.listener.mraidViewClose(MRAIDView.this);
                    }
                }
            });
        }
    }

    protected void closeFromResized() {
        this.state = 1;
        this.isClosing = true;
        removeResizeView();
        addView(this.webView);
        this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.9
            @Override // java.lang.Runnable
            public void run() {
                MRAIDView.this.fireStateChangeEvent();
                if (MRAIDView.this.listener != null) {
                    MRAIDView.this.listener.mraidViewClose(MRAIDView.this);
                }
            }
        });
    }

    public void destroy() {
        if (this.webView != null) {
            MRAIDLog.i("Destroying Main WebView");
            this.webView.destroy();
        }
        if (this.webViewPart2 != null) {
            MRAIDLog.i("Destroying Secondary WebView");
            this.webViewPart2.destroy();
        }
        RelativeLayout relativeLayout = this.expandedView;
        if (relativeLayout != null) {
            ViewGroup viewGroup = (ViewGroup) relativeLayout.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.expandedView);
            }
            this.expandedView = null;
        }
        this.currentWebView = null;
        this.contentInfoAdded = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void expand(String str) {
        expandCreative(str, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void expandHelper(WebView webView) {
        applyOrientationProperties();
        forceFullScreen();
        RelativeLayout relativeLayout = new RelativeLayout(this.context);
        this.expandedView = relativeLayout;
        relativeLayout.addView(webView, new RelativeLayout.LayoutParams(-1, -1));
        if (this.isInterstitial) {
            addContentInfo(this.expandedView);
        }
        addCloseRegion(this.expandedView);
        setCloseRegionPosition(this.expandedView);
        MRAIDLog.d("hz-m MRAIDView - expandHelper - adding contentview to activity " + this.context);
        this.showActivity.addContentView(this.expandedView, new RelativeLayout.LayoutParams(-1, -1));
        this.isExpandingFromDefault = true;
        this.isExpanded = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fireReadyEvent() {
        MRAIDLog.d(MRAID_LOG_TAG, "fireReadyEvent");
        injectJavaScript("mraid.fireReadyEvent();");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fireStateChangeEvent() {
        MRAIDLog.d(MRAID_LOG_TAG, "fireStateChangeEvent");
        injectJavaScript("mraid.fireStateChangeEvent('" + new String[]{"loading", "default", "expanded", "resized", "hidden"}[this.state] + "');");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fireViewableChangeEvent() {
        MRAIDLog.d(MRAID_LOG_TAG, "fireViewableChangeEvent");
        injectJavaScript("mraid.fireViewableChangeEvent(" + this.isViewable + ");");
    }

    public int getState() {
        return this.state;
    }

    public boolean isExpanded() {
        return this.isExpanded;
    }

    public boolean isLoaded() {
        return this.isPageFinished;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        MRAIDLog.d(MRAID_LOG_TAG, "onAttachedToWindow");
        super.onAttachedToWindow();
    }

    public boolean onBackPressed() {
        MRAIDLog.d("hz-m MRAIDView - onBackPressed");
        int i = this.state;
        if (i == 0 || i == 4) {
            MRAIDLog.d("hz-m MRAIDView - onBackPressed - loading or hidden");
            return false;
        }
        close();
        return true;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        String str = MRAID_LOG_TAG;
        StringBuilder sb = new StringBuilder("onConfigurationChanged ");
        sb.append(configuration.orientation == 1 ? EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE);
        MRAIDLog.d(str, sb.toString());
        WindowManager windowManager = (WindowManager) this.context.getSystemService("window");
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(this.displayMetrics);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        MRAIDLog.d(MRAID_LOG_TAG, "onDetachedFromWindow");
        stopAdSession();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        String str = MRAID_LOG_TAG;
        MRAIDLog.w(str, "onLayout (" + this.state + ") " + z + StringUtils.SPACE + i + StringUtils.SPACE + i2 + StringUtils.SPACE + i3 + StringUtils.SPACE + i4);
        if (this.isForcingFullScreen) {
            MRAIDLog.d(str, "onLayout ignored");
            return;
        }
        int i5 = this.state;
        if (i5 == 2 || i5 == 3) {
            calculateScreenSize();
            calculateMaxSize();
        }
        if (this.isClosing) {
            this.isClosing = false;
            this.currentPosition = new Rect(this.defaultPosition);
            setCurrentPosition();
        } else {
            calculatePosition(false);
        }
        if (this.state == 3 && z) {
            this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDView.12
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDView.this.setResizedViewPosition();
                }
            });
        }
        this.isLaidOut = true;
        onLayoutCompleted();
    }

    protected void onLayoutCompleted() {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.gestureDetector.onTouchEvent(motionEvent)) {
            motionEvent.setAction(3);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        String str = MRAID_LOG_TAG;
        MRAIDLog.d(str, "onVisibilityChanged " + getVisibilityString(i));
        setViewable(i);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        int visibility = getVisibility();
        String str = MRAID_LOG_TAG;
        MRAIDLog.d(str, "onWindowVisibilityChanged " + getVisibilityString(i) + " (actual " + getVisibilityString(visibility) + ")");
        setViewable(visibility);
    }

    public void setCloseLayoutListener(MRAIDViewCloseLayoutListener mRAIDViewCloseLayoutListener) {
        this.closeLayoutListener = mRAIDViewCloseLayoutListener;
    }

    protected void setOrientationProperties(Map<String, String> map) {
        boolean parseBoolean = Boolean.parseBoolean(map.get("allowOrientationChange"));
        String str = map.get("forceOrientation");
        MRAIDLog.d(MRAID_LOG_TAG + "-JS callback", "setOrientationProperties " + parseBoolean + StringUtils.SPACE + str);
        this.orientationProperties.allowOrientationChange = parseBoolean;
        this.orientationProperties.forceOrientation = MRAIDOrientationProperties.forceOrientationFromString(str);
        if ((this instanceof MRAIDInterstitial) || this.state == 2) {
            applyOrientationProperties();
        }
    }

    public void setSkipOffset(Integer num) {
        this.mSkipTimeMillis = Integer.valueOf(num.intValue() * 1000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showAsInterstitial(Activity activity) {
        MRAIDLog.d("hz-m MRAIDVIEW - showAsInterstitial");
        this.showActivity = activity;
        expand(null);
    }

    public void stopAdSession() {
        HyBidViewabilityWebAdSession hyBidViewabilityWebAdSession = this.mViewabilityAdSession;
        if (hyBidViewabilityWebAdSession != null) {
            hyBidViewabilityWebAdSession.stopAdSession();
        }
    }
}
