package net.pubnative.lite.sdk.views;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.WindowManager;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.amazonaws.services.p101s3.util.Mimetypes;
import net.pubnative.lite.sdk.utils.ViewUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/PNWebView.class */
public class PNWebView extends WebView {
    private static boolean sDeadlockCleared = false;

    public PNWebView(Context context) {
        this(context.getApplicationContext(), null);
    }

    public PNWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
        enableWebDebugging();
        enablePlugins(false);
        setWebChromeClient(new WebChromeClient() { // from class: net.pubnative.lite.sdk.views.PNWebView.1
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                jsPromptResult.confirm();
                return true;
            }
        });
        if (!sDeadlockCleared) {
            fixWebViewDeadlock(getContext());
            sDeadlockCleared = true;
        }
    }

    private void fixWebViewDeadlock(Context context) {
        if (Build.VERSION.SDK_INT != 19) {
            return;
        }
        WebView webView = new WebView(context.getApplicationContext());
        webView.setBackgroundColor(0);
        webView.loadDataWithBaseURL(null, "", Mimetypes.MIMETYPE_HTML, "UTF-8", null);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = 1;
        layoutParams.height = 1;
        layoutParams.type = 2005;
        layoutParams.flags = 16777240;
        layoutParams.format = -2;
        layoutParams.gravity = 8388659;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return;
        }
        windowManager.addView(webView, layoutParams);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        ViewUtils.removeFromParent(this);
        removeAllViews();
        super.destroy();
    }

    public void enablePlugins(boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            return;
        }
        getSettings().setPluginState(z ? WebSettings.PluginState.ON : WebSettings.PluginState.OFF);
    }

    public void enableWebDebugging() {
        if (Build.VERSION.SDK_INT < 19 || (getContext().getApplicationInfo().flags & 2) == 0) {
            return;
        }
        setWebContentsDebuggingEnabled(true);
    }
}
