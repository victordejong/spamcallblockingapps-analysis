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
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C1379b;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.overlay.n;
import com.google.android.gms.ads.internal.util.C1433l1;
@TargetApi(11)
/* renamed from: com.google.android.gms.internal.ads.it */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/it.class */
public final class C1789it extends WebChromeClient {

    /* renamed from: a */
    private final jt f6858a;

    public C1789it(jt jtVar) {
        this.f6858a = jtVar;
    }

    /* renamed from: b */
    private static final Context m7078b(WebView webView) {
        if (!(webView instanceof jt)) {
            return webView.getContext();
        }
        jt jtVar = (jt) webView;
        Activity h = jtVar.h();
        return h != null ? h : jtVar.getContext();
    }

    /* renamed from: a */
    protected final boolean m7079a(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        AlertDialog create;
        C1379b b;
        try {
            jt jtVar = this.f6858a;
            if (jtVar != null && jtVar.b1() != null && this.f6858a.b1().b() != null && (b = this.f6858a.b1().b()) != null && !b.m8955b()) {
                StringBuilder sb = new StringBuilder(str.length() + 11 + String.valueOf(str3).length());
                sb.append("window.");
                sb.append(str);
                sb.append("('");
                sb.append(str3);
                sb.append("')");
                b.m8954c(sb.toString());
                return false;
            }
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
                create = builder.setView(linearLayout).setPositiveButton(17039370, new DialogInterface$OnClickListenerC1761gt(jsPromptResult, editText)).setNegativeButton(17039360, new DialogInterface$OnClickListenerC1738ft(jsPromptResult)).setOnCancelListener(new DialogInterface$OnCancelListenerC1724et(jsPromptResult)).create();
            } else {
                create = builder.setMessage(str3).setPositiveButton(17039370, new DialogInterface$OnClickListenerC1694ct(jsResult)).setNegativeButton(17039360, new DialogInterface$OnClickListenerC1672bt(jsResult)).setOnCancelListener(new DialogInterface$OnCancelListenerC1655at(jsResult)).create();
            }
            create.show();
            return true;
        } catch (WindowManager.BadTokenException e) {
            C1894po.m6179g("Fail to display Dialog.", e);
            return true;
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        String str;
        if (!(webView instanceof jt)) {
            str = "Tried to close a WebView that wasn't an AdWebView.";
        } else {
            n Q = ((jt) webView).Q();
            if (Q != null) {
                Q.b();
                return;
            }
            str = "Tried to close an AdWebView not associated with an overlay.";
        }
        C1894po.m6180f(str);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        int lineNumber = consoleMessage.lineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 19 + String.valueOf(sourceId).length());
        sb.append("JS: ");
        sb.append(message);
        sb.append(" (");
        sb.append(sourceId);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        String sb2 = sb.toString();
        if (sb2.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = C1776ht.f6778a[consoleMessage.messageLevel().ordinal()];
        if (i == 1) {
            C1894po.m6183c(sb2);
        } else if (i == 2) {
            C1894po.m6180f(sb2);
        } else if (i == 3 || i == 4 || i != 5) {
            C1894po.m6181e(sb2);
        } else {
            C1894po.m6185a(sb2);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.f6858a.Y() != null) {
            webView2.setWebViewClient(this.f6858a.Y());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        if (r0 <= 0) goto L20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r16v0, types: [android.webkit.WebStorage$QuotaUpdater] */
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
            return
        L18:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L38
            r0 = r12
            r1 = r17
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L32
            r0 = r12
            r1 = 1048576(0x100000, double:5.180654E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L32
            goto L71
        L32:
            r0 = 0
            r12 = r0
            goto L71
        L38:
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L54
            r0 = r10
            r1 = 131072(0x20000, double:6.47582E-319)
            r2 = r17
            long r1 = java.lang.Math.min(r1, r2)
            long r0 = r0 + r1
            r1 = 1048576(0x100000, double:5.180654E-318)
            long r0 = java.lang.Math.min(r0, r1)
            r12 = r0
            goto L71
        L54:
            r0 = r10
            r14 = r0
            r0 = r12
            r1 = 1048576(0x100000, double:5.180654E-318)
            r2 = r10
            long r1 = r1 - r2
            r2 = r17
            long r1 = java.lang.Math.min(r1, r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6d
            r0 = r10
            r1 = r12
            long r0 = r0 + r1
            r14 = r0
        L6d:
            r0 = r14
            r12 = r0
        L71:
            r0 = r16
            r1 = r12
            r0.updateQuota(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1789it.onExceededDatabaseQuota(java.lang.String, java.lang.String, long, long, long, android.webkit.WebStorage$QuotaUpdater):void");
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            C1407r.m8920d();
            if (!C1433l1.m8765d(this.f6858a.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                C1407r.m8920d();
                if (!C1433l1.m8765d(this.f6858a.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
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
        n Q = this.f6858a.Q();
        if (Q == null) {
            C1894po.m6180f("Could not get ad overlay when hiding custom view.");
        } else {
            Q.c();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return m7079a(m7078b(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return m7079a(m7078b(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return m7079a(m7078b(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return m7079a(m7078b(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        long j3 = j + 131072;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        n Q = this.f6858a.Q();
        if (Q == null) {
            C1894po.m6180f("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        Q.J6(view, customViewCallback);
        Q.I6(i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
