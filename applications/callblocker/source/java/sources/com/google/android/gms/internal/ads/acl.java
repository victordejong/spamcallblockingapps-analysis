package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C2301c;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.BinderC2316c;
import com.google.android.gms.common.util.C2716m;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acl.class */
public final class acl extends WebChromeClient {

    /* renamed from: a */
    private final act f7827a;

    public acl(act actVar) {
        this.f7827a = actVar;
    }

    /* renamed from: a */
    private static Context m13624a(WebView webView) {
        Activity activity;
        if (!(webView instanceof act)) {
            activity = webView.getContext();
        } else {
            act actVar = (act) webView;
            Activity mo13444f = actVar.mo13444f();
            activity = mo13444f;
            if (mo13444f == null) {
                activity = actVar.getContext();
            }
        }
        return activity;
    }

    /* renamed from: a */
    private final boolean m13625a(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        boolean z2;
        C2301c mo13536a;
        try {
            if (this.f7827a == null || this.f7827a.mo13426v() == null || this.f7827a.mo13426v().mo13536a() == null || (mo13536a = this.f7827a.mo13426v().mo13536a()) == null || mo13536a.m14800b()) {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle(str2);
                if (z) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    TextView textView = new TextView(context);
                    textView.setText(str3);
                    EditText editText = new EditText(context);
                    editText.setText(str4);
                    linearLayout.addView(textView);
                    linearLayout.addView(editText);
                    builder.setView(linearLayout).setPositiveButton(17039370, new acr(jsPromptResult, editText)).setNegativeButton(17039360, new aco(jsPromptResult)).setOnCancelListener(new acp(jsPromptResult)).create().show();
                    z2 = true;
                } else {
                    builder.setMessage(str3).setPositiveButton(17039370, new acm(jsResult)).setNegativeButton(17039360, new acn(jsResult)).setOnCancelListener(new ack(jsResult)).create().show();
                    z2 = true;
                }
            } else {
                mo13536a.m14801a(new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(str3).length()).append("window.").append(str).append("('").append(str3).append("')").toString());
                z2 = false;
            }
        } catch (WindowManager.BadTokenException e) {
            C3556uu.m6746d("Fail to display Dialog.", e);
            z2 = true;
        }
        return z2;
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof act)) {
            C3556uu.m6745e("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        BinderC2316c mo13430r = ((act) webView).mo13430r();
        if (mo13430r == null) {
            C3556uu.m6745e("Tried to close an AdWebView not associated with an overlay.");
        } else {
            mo13430r.m14767a();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        boolean onConsoleMessage;
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        String sb = new StringBuilder(String.valueOf(message).length() + 19 + String.valueOf(sourceId).length()).append("JS: ").append(message).append(" (").append(sourceId).append(":").append(consoleMessage.lineNumber()).append(")").toString();
        if (sb.contains("Application Cache")) {
            onConsoleMessage = super.onConsoleMessage(consoleMessage);
        } else {
            switch (acq.f7832a[consoleMessage.messageLevel().ordinal()]) {
                case 1:
                    C3556uu.m6749c(sb);
                    break;
                case 2:
                    C3556uu.m6745e(sb);
                    break;
                case 3:
                case 4:
                    C3556uu.m6747d(sb);
                    break;
                case 5:
                    C3556uu.m6751b(sb);
                    break;
                default:
                    C3556uu.m6747d(sb);
                    break;
            }
            onConsoleMessage = super.onConsoleMessage(consoleMessage);
        }
        return onConsoleMessage;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.f7827a.mo13425w() != null) {
            webView2.setWebViewClient(this.f7827a.mo13425w());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        if (r0 <= 0) goto L12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r16v0, types: [android.webkit.WebStorage$QuotaUpdater] */
    /* JADX WARN: Type inference failed for: r1v11, types: [long] */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onExceededDatabaseQuota(java.lang.String r8, java.lang.String r9, long r10, long r12, long r14, android.webkit.WebStorage.QuotaUpdater r16) {
        /*
            r7 = this;
            r0 = 5242880(0x500000, double:2.590327E-317)
            r1 = r14
            long r0 = r0 - r1
            r17 = r0
            r0 = r17
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L18
            r0 = r16
            r1 = r10
            r0.updateQuota(r1)
        L17:
            return
        L18:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L41
            r0 = r12
            r1 = r17
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L3b
            r0 = r12
            r1 = 1048576(0x100000, double:5.180654E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L3b
        L2f:
            r0 = r16
            r1 = r12
            r0.updateQuota(r1)
            goto L17
        L3b:
            r0 = 0
            r12 = r0
            goto L2f
        L41:
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L61
            r0 = 131072(0x20000, double:6.47582E-319)
            r1 = r17
            long r0 = java.lang.Math.min(r0, r1)
            r1 = r10
            long r0 = r0 + r1
            r1 = 1048576(0x100000, double:5.180654E-318)
            long r0 = java.lang.Math.min(r0, r1)
            r14 = r0
        L5a:
            r0 = r14
            r12 = r0
            goto L2f
        L61:
            r0 = r10
            r14 = r0
            r0 = r12
            r1 = 1048576(0x100000, double:5.180654E-318)
            r2 = r10
            long r1 = r1 - r2
            r2 = r17
            long r1 = java.lang.Math.min(r1, r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L5a
            r0 = r10
            r1 = r12
            long r0 = r0 + r1
            r14 = r0
            goto L5a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.acl.onExceededDatabaseQuota(java.lang.String, java.lang.String, long, long, long, android.webkit.WebStorage$QuotaUpdater):void");
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            C2341q.m14744c();
            if (!C3567ve.m7005a(this.f7827a.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                C2341q.m14744c();
                if (!C3567ve.m7005a(this.f7827a.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        BinderC2316c mo13430r = this.f7827a.mo13430r();
        if (mo13430r == null) {
            C3556uu.m6745e("Could not get ad overlay when hiding custom view.");
        } else {
            mo13430r.m14760b();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return m13625a(m13624a(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return m13625a(m13624a(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return m13625a(m13624a(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return m13625a(m13624a(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    @TargetApi(21)
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        if (!C2716m.m13835h() || C2826bc.f10915a.mo13599a().booleanValue()) {
            super.onPermissionRequest(permissionRequest);
        } else if (this.f7827a == null || this.f7827a.mo13426v() == null || this.f7827a.mo13426v().mo13503l() == null) {
            super.onPermissionRequest(permissionRequest);
        } else {
            String[] mo7178a = this.f7827a.mo13426v().mo13503l().mo7178a(permissionRequest.getResources());
            if (mo7178a.length > 0) {
                permissionRequest.grant(mo7178a);
            } else {
                permissionRequest.deny();
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        long j3 = 131072 + j;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        BinderC2316c mo13430r = this.f7827a.mo13430r();
        if (mo13430r == null) {
            C3556uu.m6745e("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        mo13430r.m14764a(view, customViewCallback);
        mo13430r.m14766a(i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
