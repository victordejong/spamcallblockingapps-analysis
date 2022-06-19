package com.google.android.gms.internal.ads;

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
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzt;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmk.class */
public final class zzcmk extends WebChromeClient {
    private final zzcml zza;

    public zzcmk(zzcml zzcmlVar) {
        this.zza = zzcmlVar;
    }

    private static final Context zzb(WebView webView) {
        if (!(webView instanceof zzcml)) {
            return webView.getContext();
        }
        zzcml zzcmlVar = (zzcml) webView;
        Activity zzj = zzcmlVar.zzj();
        return zzj != null ? zzj : zzcmlVar.getContext();
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof zzcml)) {
            zzcgt.zzi("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        zzl zzN = ((zzcml) webView).zzN();
        if (zzN == null) {
            zzcgt.zzi("Tried to close an AdWebView not associated with an overlay.");
        } else {
            zzN.zzb();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        int lineNumber = consoleMessage.lineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 19 + String.valueOf(sourceId).length());
        C22128a.m8666T0(sb, "JS: ", message, " (", sourceId);
        sb.append(StringConstant.COLON);
        sb.append(lineNumber);
        sb.append(")");
        String sb2 = sb.toString();
        if (sb2.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = zzcmj.zza[consoleMessage.messageLevel().ordinal()];
        if (i == 1) {
            zzcgt.zzf(sb2);
        } else if (i == 2) {
            zzcgt.zzi(sb2);
        } else if (i == 3 || i == 4) {
            zzcgt.zzh(sb2);
        } else if (i != 5) {
            zzcgt.zzh(sb2);
        } else {
            zzcgt.zzd(sb2);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.zza.zzS() != null) {
            webView2.setWebViewClient(this.zza.zzS());
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
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
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
            r0 = 131072(0x20000, double:6.47582E-319)
            r1 = r17
            long r0 = java.lang.Math.min(r0, r1)
            r1 = r10
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcmk.onExceededDatabaseQuota(java.lang.String, java.lang.String, long, long, long, android.webkit.WebStorage$QuotaUpdater):void");
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            zzt.zzc();
            if (!zzs.zzE(this.zza.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                zzt.zzc();
                if (!zzs.zzE(this.zza.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
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
        zzl zzN = this.zza.zzN();
        if (zzN == null) {
            zzcgt.zzi("Could not get ad overlay when hiding custom view.");
        } else {
            zzN.zzc();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zzb(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zzb(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
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
        zzl zzN = this.zza.zzN();
        if (zzN == null) {
            zzcgt.zzi("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        zzN.zzx(view, customViewCallback);
        zzN.zzw(i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }

    public final boolean zza(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        zzb zzc;
        try {
            zzcml zzcmlVar = this.zza;
            if (zzcmlVar != null && zzcmlVar.zzR() != null && this.zza.zzR().zzc() != null && (zzc = this.zza.zzR().zzc()) != null && !zzc.zzb()) {
                StringBuilder sb = new StringBuilder(str.length() + 11 + String.valueOf(str3).length());
                sb.append("window.");
                sb.append(str);
                sb.append("('");
                sb.append(str3);
                sb.append("')");
                zzc.zzc(sb.toString());
                return false;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle(str2);
            if (!z) {
                builder.setMessage(str3).setPositiveButton(17039370, new zzcmf(jsResult)).setNegativeButton(17039360, new zzcme(jsResult)).setOnCancelListener(new zzcmd(jsResult)).create().show();
                return true;
            }
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            textView.setText(str3);
            EditText editText = new EditText(context);
            editText.setText(str4);
            linearLayout.addView(textView);
            linearLayout.addView(editText);
            builder.setView(linearLayout).setPositiveButton(17039370, new zzcmi(jsPromptResult, editText)).setNegativeButton(17039360, new zzcmh(jsPromptResult)).setOnCancelListener(new zzcmg(jsPromptResult)).create().show();
            return true;
        } catch (WindowManager.BadTokenException e) {
            zzcgt.zzj("Fail to display Dialog.", e);
            return true;
        }
    }
}
