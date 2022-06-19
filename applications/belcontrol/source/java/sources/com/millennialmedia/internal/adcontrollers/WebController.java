package com.millennialmedia.internal.adcontrollers;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.ViewUtils;
import java.lang.ref.WeakReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/WebController.class */
public class WebController extends AdController {
    private static final String TAG = "WebController";
    private volatile MMWebView mmWebView;
    private volatile SizableStateManager sizableStateManager;
    private volatile MMWebView twoPartWebView;
    private WebControllerListener webControllerListener;
    private static final Pattern patternHtml = Pattern.compile("<HTML", 2);
    private static final Pattern patternHeadOrBody = Pattern.compile("<HEAD|<BODY", 2);
    private static final Pattern patternOtherHtmlTags = Pattern.compile("<SCRIPT|<IMG|<A|<DIV|<SPAN|<P|<H1|<H2|<H3|<H4|<H5|<H6|<IFRAME", 2);

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/WebController$WebControllerListener.class */
    public interface WebControllerListener {
        void attachFailed();

        void attachSucceeded();

        void initFailed();

        void initSucceeded();

        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onExpanded();

        void onResize(int i, int i2);

        void onResized(int i, int i2, boolean z);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions.class */
    public static class WebControllerOptions {
        public final boolean enableEnhancedAdControl;
        public final boolean enableMoat;
        public final boolean immersive;
        public final boolean interstitial;
        public final boolean twoPart;

        public WebControllerOptions(boolean z, boolean z2, boolean z3) {
            this(z, z2, z3, false);
        }

        public WebControllerOptions(boolean z, boolean z2, boolean z3, boolean z4) {
            this(z, z2, z3, z4, true);
        }

        public WebControllerOptions(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            this.interstitial = z;
            this.enableMoat = z2;
            this.enableEnhancedAdControl = z3;
            this.twoPart = z4;
            this.immersive = z5;
        }
    }

    public WebController() {
    }

    public WebController(WebControllerListener webControllerListener) {
        this.webControllerListener = webControllerListener;
    }

    public MMWebView getWebView() {
        if (this.mmWebView == null) {
            if (!MMLog.isDebugEnabled()) {
                return null;
            }
            MMLog.m4068e(TAG, "MMWebView has not been created or has been released.");
            return null;
        }
        return this.mmWebView;
    }

    public void releaseFromSizableState() {
        if (this.twoPartWebView != null) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.8
                @Override // java.lang.Runnable
                public void run() {
                    WebController.this.twoPartWebView.release();
                    WebController.this.twoPartWebView = null;
                }
            });
        }
        this.sizableStateManager = null;
    }

    public void attach(final RelativeLayout relativeLayout, final RelativeLayout.LayoutParams layoutParams) {
        if (relativeLayout == null) {
            this.webControllerListener.attachFailed();
            return;
        }
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.adcontrollers.WebController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WebController.this.webControllerListener.onClicked();
            }
        });
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.3
            @Override // java.lang.Runnable
            public void run() {
                MMWebView webView = WebController.this.getWebView();
                if (webView == null) {
                    MMLog.m4068e(WebController.TAG, "MMWebView instance is null, unable to attach");
                    WebController.this.webControllerListener.attachFailed();
                    return;
                }
                ViewUtils.attachView(relativeLayout, webView, layoutParams);
                WebController.this.webControllerListener.attachSucceeded();
            }
        });
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public boolean canHandleContent(String str) {
        if (str == null) {
            return false;
        }
        try {
            new JSONObject(str);
            return false;
        } catch (JSONException e) {
            Matcher matcher = patternHeadOrBody.matcher(str);
            if (matcher.find()) {
                return true;
            }
            matcher.usePattern(patternHtml);
            if (matcher.find()) {
                return false;
            }
            matcher.usePattern(patternOtherHtmlTags);
            return matcher.find();
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public void close() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.10
            @Override // java.lang.Runnable
            public void run() {
                if (WebController.this.sizableStateManager != null) {
                    WebController.this.sizableStateManager.close();
                }
                MMWebView webView = WebController.this.getWebView();
                if (webView != null) {
                    webView.setBackgroundColor(-1);
                }
            }
        });
    }

    public MMWebView createWebView(Context context, final WebControllerOptions webControllerOptions, final AdMetadata adMetadata, final WebControllerListener webControllerListener) {
        boolean z = adMetadata != null && adMetadata.isTransparent() && webControllerOptions.interstitial;
        final WeakReference weakReference = new WeakReference(context);
        return new MMWebView(context, new MMWebView.MMWebViewOptions(webControllerOptions.interstitial, z, webControllerOptions.enableMoat, webControllerOptions.enableEnhancedAdControl), new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.adcontrollers.WebController.6
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
                WebController.this.close();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                boolean z2;
                String str;
                String str2;
                MMWebView webView = WebController.this.getWebView();
                if (webView != null) {
                    SizableStateManager sizableStateManager = WebController.this.getSizableStateManager();
                    expandParams.immersive = webControllerOptions.immersive;
                    if (TextUtils.isEmpty(expandParams.url)) {
                        z2 = !webControllerOptions.interstitial;
                    } else {
                        Context context2 = (Context) weakReference.get();
                        if (context2 == null) {
                            str = WebController.TAG;
                            str2 = "Context is no longer valid, unable to expand";
                        } else {
                            WebControllerOptions webControllerOptions2 = webControllerOptions;
                            WebControllerOptions webControllerOptions3 = new WebControllerOptions(false, webControllerOptions2.enableMoat, webControllerOptions2.enableEnhancedAdControl, true);
                            WebController webController = WebController.this;
                            webController.twoPartWebView = webController.createWebView(context2, webControllerOptions3, adMetadata, webControllerListener);
                            WebController.this.twoPartWebView.setTwoPartExpand();
                            WebController.this.twoPartWebView.setVisibility(4);
                            WebController webController2 = WebController.this;
                            webController2.loadTwoPartContentAsync(webController2.twoPartWebView, expandParams);
                            webView = WebController.this.twoPartWebView;
                            z2 = false;
                        }
                    }
                    AdMetadata adMetadata2 = adMetadata;
                    if (adMetadata2 != null && adMetadata2.isTransparent()) {
                        webView.setBackgroundColor(0);
                        expandParams.transparent = true;
                    }
                    return sizableStateManager.expand(webView, expandParams, z2);
                }
                str = WebController.TAG;
                str2 = "MMWebView instance is null, unable to expand";
                MMLog.m4068e(str, str2);
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                webControllerListener.onAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                webControllerListener.onClicked();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
                if (!webControllerOptions.twoPart) {
                    webControllerListener.initFailed();
                }
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
                if (!webControllerOptions.twoPart) {
                    webControllerListener.initSucceeded();
                }
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                MMWebView webView = WebController.this.getWebView();
                if (webView == null) {
                    MMLog.m4068e(WebController.TAG, "MMWebView instance is null, unable to resize");
                    return false;
                }
                return WebController.this.getSizableStateManager().resize(webView, resizeParams);
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
                if (WebController.this.sizableStateManager != null) {
                    WebController.this.sizableStateManager.setOrientation(i);
                }
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z2) {
                if (WebController.this.sizableStateManager != null) {
                    WebController.this.sizableStateManager.showCloseIndicator(z2);
                }
            }
        });
    }

    public SizableStateManager getSizableStateManager() {
        if (this.sizableStateManager == null) {
            this.sizableStateManager = new SizableStateManager(new SizableStateManager.SizableListener() { // from class: com.millennialmedia.internal.adcontrollers.WebController.5
                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onCollapsed() {
                    MMWebView webView = WebController.this.getWebView();
                    if (webView != null) {
                        webView.setStateCollapsed();
                        WebController.this.webControllerListener.onCollapsed();
                        WebController.this.releaseFromSizableState();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onCollapsing() {
                    MMWebView webView = WebController.this.getWebView();
                    if (webView != null) {
                        webView.setStateResizing();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onExpandFailed() {
                    WebController.this.webControllerListener.attachFailed();
                    WebController.this.releaseFromSizableState();
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onExpanded() {
                    MMWebView webView = WebController.this.getWebView();
                    if (webView != null) {
                        webView.setStateExpanded();
                        WebController.this.webControllerListener.onExpanded();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onExpanding() {
                    MMWebView webView = WebController.this.getWebView();
                    if (webView != null) {
                        webView.setStateResizing();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onResized(int i, int i2) {
                    MMWebView webView = WebController.this.getWebView();
                    if (webView != null) {
                        webView.setStateResized();
                        WebController.this.webControllerListener.onResized(i, i2, false);
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onResizing(int i, int i2) {
                    MMWebView webView = WebController.this.getWebView();
                    if (webView != null) {
                        webView.setStateResizing();
                        WebController.this.webControllerListener.onResize(i, i2);
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onUnresized(int i, int i2) {
                    MMWebView webView = WebController.this.getWebView();
                    if (webView != null) {
                        webView.setStateUnresized();
                        WebController.this.webControllerListener.onResized(i, i2, true);
                        WebController.this.releaseFromSizableState();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onUnresizing(int i, int i2) {
                    MMWebView webView = WebController.this.getWebView();
                    if (webView != null) {
                        webView.setStateResizing();
                    }
                }
            });
        }
        return this.sizableStateManager;
    }

    public void init(final Context context, final String str, final AdMetadata adMetadata, final WebControllerOptions webControllerOptions) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.1
            @Override // java.lang.Runnable
            public void run() {
                WebController webController = WebController.this;
                webController.mmWebView = webController.createWebView(context, webControllerOptions, adMetadata, webController.webControllerListener);
                WebController.this.mmWebView.setContent(str);
            }
        });
    }

    public void loadTwoPartContentAsync(MMWebView mMWebView, final SizableStateManager.ExpandParams expandParams) {
        final WeakReference weakReference = new WeakReference(this.sizableStateManager);
        final WeakReference weakReference2 = new WeakReference(mMWebView);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.7
            @Override // java.lang.Runnable
            public void run() {
                WebController.this.sizableStateManager.showLoadingSpinner(expandParams);
                final HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(expandParams.url);
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String str;
                        MMWebView mMWebView2 = (MMWebView) weakReference2.get();
                        if (mMWebView2 == null) {
                            if (!MMLog.isDebugEnabled()) {
                                return;
                            }
                            MMLog.m4070d(WebController.TAG, "Expanded web view is no longer valid");
                            return;
                        }
                        SizableStateManager sizableStateManager = (SizableStateManager) weakReference.get();
                        if (sizableStateManager == null) {
                            if (!MMLog.isDebugEnabled()) {
                                return;
                            }
                            MMLog.m4070d(WebController.TAG, "Sizing container is no longer valid");
                        } else if (!sizableStateManager.isExpanded()) {
                            if (!MMLog.isDebugEnabled()) {
                                return;
                            }
                            MMLog.m4070d(WebController.TAG, "Sizing container has been collapsed");
                        } else {
                            sizableStateManager.hideLoadingSpinner(expandParams);
                            HttpUtils.Response response = contentFromGetRequest;
                            if (response == null || response.code != 200 || (str = response.content) == null) {
                                MMLog.m4068e(WebController.TAG, "Unable to retrieve expanded content");
                                sizableStateManager.showCloseIndicator(true);
                            } else {
                                mMWebView2.setContent(str);
                            }
                            mMWebView2.setVisibility(0);
                        }
                    }
                });
            }
        });
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public void release() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.9
            @Override // java.lang.Runnable
            public void run() {
                if (WebController.this.mmWebView != null) {
                    WebController.this.mmWebView.release();
                    WebController.this.mmWebView = null;
                }
            }
        });
    }

    public void showExpanded(final MMActivity.MMActivityConfig mMActivityConfig) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.4
            @Override // java.lang.Runnable
            public void run() {
                MMWebView webView = WebController.this.getWebView();
                if (webView == null) {
                    MMLog.m4068e(WebController.TAG, "MMWebView instance is null, unable to expand");
                    WebController.this.webControllerListener.attachFailed();
                    return;
                }
                SizableStateManager sizableStateManager = WebController.this.getSizableStateManager();
                SizableStateManager.ExpandParams expandParams = new SizableStateManager.ExpandParams();
                expandParams.width = -1;
                expandParams.height = -1;
                expandParams.showCloseIndicator = true;
                expandParams.orientation = -1;
                if (sizableStateManager.expand(webView, expandParams, mMActivityConfig)) {
                    return;
                }
                WebController.this.webControllerListener.attachFailed();
            }
        });
    }
}
