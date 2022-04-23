package com.callapp.contacts.util.webview;

import android.app.Activity;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Message;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.callapp.contacts.api.helper.backup.DropBoxHelper;
import com.callapp.contacts.api.helper.common.LoginListener;
import com.callapp.contacts.api.helper.gmail.GmailManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.webview.BaseWebViewDialog;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/AuthWebViewDialog.class */
public class AuthWebViewDialog extends BaseWebViewDialog {

    /* renamed from: d  reason: collision with root package name */
    private Activity f16367d;
    private final LoginListener e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient.class */
    class MultiWindowWebChromeClient extends BaseWebViewDialog.SingleWindowWebChromeClient {
        public MultiWindowWebChromeClient(ProgressBar progressBar) {
            super(progressBar);
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            ((ViewGroup) AuthWebViewDialog.this.getActivity().findViewById(2131364548)).removeViewAt(((ViewGroup) AuthWebViewDialog.this.getActivity().findViewById(2131364548)).getChildCount() - 1);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(AuthWebViewDialog.this.f16367d);
            webView2.getSettings().setJavaScriptEnabled(true);
            webView2.setWebChromeClient(this);
            webView2.setWebViewClient(AuthWebViewDialog.this.getWebViewClient());
            ((ViewGroup) AuthWebViewDialog.this.getActivity().findViewById(2131364548)).addView(webView2);
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient.class */
    public class OAuthWebViewClient extends WebViewClient {
        private OAuthWebViewClient() {
        }

        private void a(final LoginListener loginListener, final String str) {
            new Task() { // from class: com.callapp.contacts.util.webview.AuthWebViewDialog.OAuthWebViewClient.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    loginListener.b(str);
                }
            }.execute();
            AuthWebViewDialog.this.f16375c = true;
            AuthWebViewDialog.this.dismiss();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            int a2 = AuthWebViewDialog.a(str);
            String str2 = "";
            String str3 = a2 != 6 ? a2 != 9 ? "" : "id" : "username";
            if (StringUtils.a((CharSequence) "")) {
                str2 = GmailManager.get().getGmailAccount();
            }
            if (StringUtils.b((CharSequence) str2)) {
                AuthWebViewDialog.a(webView, str3, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return false;
            }
            super.onRenderProcessGone(webView, renderProcessGoneDetail);
            if (webView == null) {
                return true;
            }
            ((ViewGroup) webView.getParent()).removeView(webView);
            webView.destroy();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Pair<LoginListener, String> b2 = AuthWebViewDialog.b(str);
            LoginListener loginListener = (LoginListener) b2.first;
            String str2 = (String) b2.second;
            if (StringUtils.a((CharSequence) str2) || loginListener == null) {
                if (loginListener == null) {
                    return false;
                }
                a(loginListener, str2);
                return false;
            } else if (StringUtils.b((CharSequence) str2)) {
                a(loginListener, str2);
                return false;
            } else {
                webView.loadUrl(str);
                return true;
            }
        }
    }

    public AuthWebViewDialog(Activity activity, String str, DialogInterface.OnCancelListener onCancelListener, LoginListener loginListener) {
        super(str, null, onCancelListener);
        this.f16367d = activity;
        this.e = loginListener;
    }

    public static int a(String str) {
        return str.contains("https://api.twitter.com/oauth/authorize?") ? 4 : -1;
    }

    public static void a(WebView webView, String str, String str2) {
        if (StringUtils.b((CharSequence) str) && StringUtils.b((CharSequence) str2)) {
            WebViewUtils.a(webView, String.format("try { var elem=document.getElementById('%s'); if (!elem){elem=document.getElementsByName('%s')[0];} if (elem){elem.value = '%s';} } catch(err) { }", str, str, str2));
        }
    }

    public static Pair<LoginListener, String> b(String str) {
        Object obj = null;
        if (str.contains("twitterauth.callapp.com")) {
            str = Uri.parse(str).getQueryParameter("oauth_verifier");
            obj = Singletons.get().getTwitterHelper();
        } else if (str.startsWith("https://oauth.vk.com/blank.html")) {
            obj = Singletons.get().getVKHelper();
        } else if (str.startsWith(DropBoxHelper.f14111c.getOAUTH_CALLBACK_URL())) {
            obj = Singletons.get().getDropBoxHelper();
            str = Uri.parse(str).getQueryParameter("oauth_token_secret");
        } else {
            str = null;
        }
        return new Pair<>(obj, str);
    }

    @Override // com.callapp.contacts.util.webview.BaseWebViewDialog
    protected WebViewClient getWebViewClient() {
        return new OAuthWebViewClient();
    }

    @Override // com.callapp.contacts.util.webview.BaseWebViewDialog, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        this.f16373a.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.f16373a.getSettings().setSupportMultipleWindows(true);
        this.f16373a.setWebChromeClient(new MultiWindowWebChromeClient((ProgressBar) ovViewCreated.findViewById(2131362322)));
        return ovViewCreated;
    }
}
