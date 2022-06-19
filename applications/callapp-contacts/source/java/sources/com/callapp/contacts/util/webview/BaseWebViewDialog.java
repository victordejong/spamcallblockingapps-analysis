package com.callapp.contacts.util.webview;

import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/BaseWebViewDialog.class */
public abstract class BaseWebViewDialog extends DialogPopup {

    /* renamed from: a */
    protected WebView f28514a;

    /* renamed from: b */
    protected ImageView f28515b;

    /* renamed from: c */
    protected boolean f28516c = false;

    /* renamed from: d */
    private String f28517d;

    /* renamed from: e */
    private final String f28518e;

    /* renamed from: f */
    private DialogInterface.OnCancelListener f28519f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient.class */
    public static class SingleWindowWebChromeClient extends WebChromeClient {

        /* renamed from: b */
        final ProgressBar f28521b;

        public SingleWindowWebChromeClient(ProgressBar progressBar) {
            this.f28521b = progressBar;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            CLog.m27611a(BaseWebViewDialog.class, consoleMessage.lineNumber() + ": " + consoleMessage.message());
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            callback.invoke(str, true, false);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            ProgressBar progressBar = this.f28521b;
            if (progressBar != null) {
                progressBar.setVisibility(i == 100 ? 8 : 0);
            }
        }
    }

    public BaseWebViewDialog(String str, String str2, DialogInterface.OnCancelListener onCancelListener) {
        this.f28518e = str;
        this.f28517d = str2;
        this.f28519f = onCancelListener;
        shouldCanceledOnTouchOutside();
    }

    /* renamed from: a */
    private static void m26871a(WebSettings webSettings) {
        webSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        webSettings.setCacheMode(2);
        try {
            Method declaredMethod = CacheManager.class.getDeclaredMethod("setCacheDisabled", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, Boolean.TRUE);
        } catch (Throwable th) {
            CLog.m27603a("myapp", "Reflection failed", th);
        }
    }

    /* renamed from: a */
    public static void m26870a(WebView webView, String str, WebViewClient webViewClient, WebChromeClient webChromeClient) {
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        WebSettings settings = webView.getSettings();
        if (str != null) {
            settings.setUserAgentString(str);
        }
        m26871a(settings);
        settings.setDomStorageEnabled(true);
        settings.setAppCacheEnabled(true);
        if (webViewClient != null) {
            webView.setWebViewClient(webViewClient);
        }
        webView.setWebChromeClient(webChromeClient);
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        settings.setDatabaseEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setGeolocationEnabled(true);
        settings.setSavePassword(false);
        webView.setVisibility(0);
    }

    private int getLayoutId() {
        return 2131558633;
    }

    private void setupWebView(ProgressBar progressBar) {
        m26870a(this.f28514a, this.f28517d, getWebViewClient(), new SingleWindowWebChromeClient(progressBar));
        this.f28514a.loadUrl(this.f28518e);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    protected abstract WebViewClient getWebViewClient();

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public boolean onDialogBackPressed() {
        WebView webView = this.f28514a;
        if (webView == null || !webView.canGoBack()) {
            return false;
        }
        this.f28514a.goBack();
        return true;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogCancelled(DialogInterface dialogInterface) {
        super.onDialogCancelled(dialogInterface);
        this.f28516c = false;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogDismissed(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener;
        super.onDialogDismissed(dialogInterface);
        if (!this.f28516c && (onCancelListener = this.f28519f) != null) {
            onCancelListener.onCancel(dialogInterface);
        }
        WebView webView = this.f28514a;
        if (webView != null) {
            webView.destroy();
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutId(), (ViewGroup) null);
        this.f28514a = new WebView(CallAppApplication.get());
        ImageView imageView = (ImageView) inflate.findViewById(2131362509);
        this.f28515b = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.util.webview.BaseWebViewDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                BaseWebViewDialog.this.dismiss();
            }
        });
        GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder(this.f28515b, 2131231592, getActivity()).m27025a(ThemeUtils.m27386a(CallAppApplication.get(), 2131100108), PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131099686));
        GlideUtils.GlideRequestBuilder m27018b = m27025a.m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), ThemeUtils.m27386a(CallAppApplication.get(), 2131099784));
        m27018b.f28246l = true;
        m27018b.m27013d();
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(2131362322);
        WebView webView = this.f28514a;
        if (webView == null) {
            this.f28514a = new WebView(CallAppApplication.get());
        } else {
            ViewGroup viewGroup2 = (ViewGroup) webView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.f28514a);
                progressBar.setVisibility(8);
                ((ViewGroup) inflate.findViewById(2131364548)).addView(this.f28514a, 0);
                return inflate;
            }
        }
        setupWebView(progressBar);
        ((ViewGroup) inflate.findViewById(2131364548)).addView(this.f28514a, 0);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawableResource(17170445);
    }
}
