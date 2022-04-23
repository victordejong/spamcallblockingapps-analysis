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

    /* renamed from: a  reason: collision with root package name */
    protected WebView f16373a;

    /* renamed from: b  reason: collision with root package name */
    protected ImageView f16374b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f16375c = false;

    /* renamed from: d  reason: collision with root package name */
    private String f16376d;
    private final String e;
    private DialogInterface.OnCancelListener f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient.class */
    public static class SingleWindowWebChromeClient extends WebChromeClient {

        /* renamed from: b  reason: collision with root package name */
        final ProgressBar f16378b;

        public SingleWindowWebChromeClient(ProgressBar progressBar) {
            this.f16378b = progressBar;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            CLog.a(BaseWebViewDialog.class, consoleMessage.lineNumber() + ": " + consoleMessage.message());
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            callback.invoke(str, true, false);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            ProgressBar progressBar = this.f16378b;
            if (progressBar != null) {
                progressBar.setVisibility(i == 100 ? 8 : 0);
            }
        }
    }

    public BaseWebViewDialog(String str, String str2, DialogInterface.OnCancelListener onCancelListener) {
        this.e = str;
        this.f16376d = str2;
        this.f = onCancelListener;
        shouldCanceledOnTouchOutside();
    }

    private static void a(WebSettings webSettings) {
        webSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        webSettings.setCacheMode(2);
        try {
            Method declaredMethod = CacheManager.class.getDeclaredMethod("setCacheDisabled", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, Boolean.TRUE);
        } catch (Throwable th) {
            CLog.a("myapp", "Reflection failed", th);
        }
    }

    public static void a(WebView webView, String str, WebViewClient webViewClient, WebChromeClient webChromeClient) {
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        WebSettings settings = webView.getSettings();
        if (str != null) {
            settings.setUserAgentString(str);
        }
        a(settings);
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
        a(this.f16373a, this.f16376d, getWebViewClient(), new SingleWindowWebChromeClient(progressBar));
        this.f16373a.loadUrl(this.e);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    protected abstract WebViewClient getWebViewClient();

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public boolean onDialogBackPressed() {
        WebView webView = this.f16373a;
        if (webView == null || !webView.canGoBack()) {
            return false;
        }
        this.f16373a.goBack();
        return true;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogCancelled(DialogInterface dialogInterface) {
        super.onDialogCancelled(dialogInterface);
        this.f16375c = false;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogDismissed(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener;
        super.onDialogDismissed(dialogInterface);
        if (!this.f16375c && (onCancelListener = this.f) != null) {
            onCancelListener.onCancel(dialogInterface);
        }
        WebView webView = this.f16373a;
        if (webView != null) {
            webView.destroy();
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutId(), (ViewGroup) null);
        this.f16373a = new WebView(CallAppApplication.get());
        ImageView imageView = (ImageView) inflate.findViewById(2131362509);
        this.f16374b = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.util.webview.BaseWebViewDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                BaseWebViewDialog.this.dismiss();
            }
        });
        GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(this.f16374b, 2131231592, getActivity()).a(ThemeUtils.a(CallAppApplication.get(), 2131100108), PorterDuff.Mode.SRC_IN);
        a2.g = Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099686));
        GlideUtils.GlideRequestBuilder b2 = a2.b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), ThemeUtils.a(CallAppApplication.get(), 2131099784));
        b2.l = true;
        b2.d();
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(2131362322);
        WebView webView = this.f16373a;
        if (webView == null) {
            this.f16373a = new WebView(CallAppApplication.get());
        } else {
            ViewGroup viewGroup2 = (ViewGroup) webView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.f16373a);
                progressBar.setVisibility(8);
                ((ViewGroup) inflate.findViewById(2131364548)).addView(this.f16373a, 0);
                return inflate;
            }
        }
        setupWebView(progressBar);
        ((ViewGroup) inflate.findViewById(2131364548)).addView(this.f16373a, 0);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawableResource(17170445);
    }
}
