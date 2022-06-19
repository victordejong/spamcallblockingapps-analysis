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
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.webview.BaseWebViewDialog;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/AuthWebViewDialog.class */
public class AuthWebViewDialog extends BaseWebViewDialog {

    /* renamed from: d */
    private Activity f28507d;

    /* renamed from: e */
    private final LoginListener f28508e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient.class */
    class MultiWindowWebChromeClient extends BaseWebViewDialog.SingleWindowWebChromeClient {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MultiWindowWebChromeClient(ProgressBar progressBar) {
            super(progressBar);
            AuthWebViewDialog.this = r4;
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            ((ViewGroup) AuthWebViewDialog.this.getActivity().findViewById(2131364548)).removeViewAt(((ViewGroup) AuthWebViewDialog.this.getActivity().findViewById(2131364548)).getChildCount() - 1);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(AuthWebViewDialog.this.f28507d);
            webView2.getSettings().setJavaScriptEnabled(true);
            webView2.setWebChromeClient(this);
            webView2.setWebViewClient(AuthWebViewDialog.this.getWebViewClient());
            ((ViewGroup) AuthWebViewDialog.this.getActivity().findViewById(2131364548)).addView(webView2);
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient.class */
    public class OAuthWebViewClient extends WebViewClient {
        private OAuthWebViewClient() {
            AuthWebViewDialog.this = r4;
        }

        /* renamed from: a */
        private void m26872a(final LoginListener loginListener, final String str) {
            new Task() { // from class: com.callapp.contacts.util.webview.AuthWebViewDialog.OAuthWebViewClient.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    loginListener.mo26204b(str);
                }
            }.execute();
            AuthWebViewDialog.this.f28516c = true;
            AuthWebViewDialog.this.dismiss();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            int m26874a = AuthWebViewDialog.m26874a(str);
            String str2 = "";
            String str3 = m26874a != 6 ? m26874a != 9 ? "" : "id" : "username";
            if (StringUtils.m26059a((CharSequence) "")) {
                str2 = GmailManager.get().getGmailAccount();
            }
            if (StringUtils.m26045b((CharSequence) str2)) {
                AuthWebViewDialog.m26876a(webView, str3, str2);
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
            Pair<LoginListener, String> m26873b = AuthWebViewDialog.m26873b(str);
            LoginListener loginListener = (LoginListener) m26873b.first;
            String str2 = (String) m26873b.second;
            if (StringUtils.m26059a((CharSequence) str2) || loginListener == null) {
                if (loginListener == null) {
                    return false;
                }
                m26872a(loginListener, str2);
                return false;
            } else if (StringUtils.m26045b((CharSequence) str2)) {
                m26872a(loginListener, str2);
                return false;
            } else {
                webView.loadUrl(str);
                return true;
            }
        }
    }

    public AuthWebViewDialog(Activity activity, String str, DialogInterface.OnCancelListener onCancelListener, LoginListener loginListener) {
        super(str, null, onCancelListener);
        this.f28507d = activity;
        this.f28508e = loginListener;
    }

    /* renamed from: a */
    public static int m26874a(String str) {
        return str.contains("https://api.twitter.com/oauth/authorize?") ? 4 : -1;
    }

    /* renamed from: a */
    public static void m26876a(WebView webView, String str, String str2) {
        if (!StringUtils.m26045b((CharSequence) str) || !StringUtils.m26045b((CharSequence) str2)) {
            return;
        }
        WebViewUtils.m26868a(webView, String.format("try { var elem=document.getElementById('%s'); if (!elem){elem=document.getElementsByName('%s')[0];} if (elem){elem.value = '%s';} } catch(err) { }", str, str, str2));
    }

    /* renamed from: b */
    public static Pair<LoginListener, String> m26873b(String str) {
        TwitterHelper twitterHelper = null;
        if (str.contains("twitterauth.callapp.com")) {
            str = Uri.parse(str).getQueryParameter("oauth_verifier");
            twitterHelper = Singletons.get().getTwitterHelper();
        } else if (str.startsWith("https://oauth.vk.com/blank.html")) {
            twitterHelper = Singletons.get().getVKHelper();
        } else if (str.startsWith(DropBoxHelper.f24761c.getOAUTH_CALLBACK_URL())) {
            twitterHelper = Singletons.get().getDropBoxHelper();
            str = Uri.parse(str).getQueryParameter("oauth_token_secret");
        } else {
            str = null;
        }
        return new Pair<>(twitterHelper, str);
    }

    @Override // com.callapp.contacts.util.webview.BaseWebViewDialog
    protected WebViewClient getWebViewClient() {
        return new OAuthWebViewClient();
    }

    @Override // com.callapp.contacts.util.webview.BaseWebViewDialog, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        this.f28514a.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.f28514a.getSettings().setSupportMultipleWindows(true);
        this.f28514a.setWebChromeClient(new MultiWindowWebChromeClient((ProgressBar) ovViewCreated.findViewById(2131362322)));
        return ovViewCreated;
    }
}
