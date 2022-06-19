package com.verizon.ads.webview;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.verizon.ads.ErrorInfo;
/* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebViewClient.class */
public class VASAdsWebViewClient extends WebViewClient {

    /* renamed from: a */
    private static final String f62208a = "VASAdsWebViewClient";

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        if (webView instanceof VASAdsWebView) {
            ((VASAdsWebView) webView).f62195b.onError(new ErrorInfo(f62208a, String.format("WebView error code: %d, description: %s, failing url: %s", Integer.valueOf(i), str, str2), -1));
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        super.onRenderProcessGone(webView, renderProcessGoneDetail);
        if (webView != null) {
            ViewParent parent = webView.getParent();
            if (!(parent instanceof ViewGroup)) {
                return true;
            }
            ((ViewGroup) parent).removeView(webView);
            webView.destroy();
            return true;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0072, code lost:
        if (r5.startsWith(r0.f62196c + "#") != false) goto L10;
     */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldOverrideUrlLoading(android.webkit.WebView r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof com.verizon.ads.webview.VASAdsWebView
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L98
            r0 = r4
            com.verizon.ads.webview.VASAdsWebView r0 = (com.verizon.ads.webview.VASAdsWebView) r0
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r8
            java.lang.String r0 = r0.f62196c
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L78
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            r1 = r8
            java.lang.String r1 = r1.f62196c
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = "?"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r10
            java.lang.String r1 = r1.toString()
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L75
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            r1 = r8
            java.lang.String r1 = r1.f62196c
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = "#"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r9 = r0
            r0 = r5
            r1 = r10
            java.lang.String r1 = r1.toString()
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L78
        L75:
            r0 = 1
            r9 = r0
        L78:
            r0 = r9
            if (r0 == 0) goto L7f
            r0 = 1
            return r0
        L7f:
            r0 = r4
            android.content.Context r0 = r0.getContext()
            r1 = r5
            boolean r0 = com.verizon.ads.support.utils.ActivityUtils.startActivityFromUrl(r0, r1)
            if (r0 == 0) goto L96
            r0 = r8
            com.verizon.ads.webview.VASAdsWebView$VASAdsWebViewListener r0 = r0.f62195b
            r1 = r8
            r0.onAdLeftApplication(r1)
        L96:
            r0 = 1
            return r0
        L98:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.webview.VASAdsWebViewClient.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
    }
}
