package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.c;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTWebsiteActivity.class */
public class TTWebsiteActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private String f8527a = null;

    public static void a(Context context, i iVar, String str) {
        if (context != null) {
            e.a(context, iVar, str, "open_policy");
            if (!TextUtils.isEmpty(n.h().o())) {
                c.a(context, new Intent(context, TTWebsiteActivity.class), null);
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(x.f(this, "tt_activity_website"));
        WebView webView = (WebView) findViewById(x.e(this, "tt_ad_website"));
        ((ImageView) findViewById(x.e(this, "tt_ad_close"))).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTWebsiteActivity.this.finish();
            }
        });
        if (n.h() != null) {
            this.f8527a = n.h().o();
        }
        q.e("TTWebsiteActivity", "mWebsiteUrl=" + this.f8527a);
        if (this.f8527a != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                webView.getSettings().setMixedContentMode(0);
            }
            try {
                webView.getSettings().setJavaScriptEnabled(true);
                webView.getSettings().setDomStorageEnabled(true);
            } catch (Throwable th) {
            }
            webView.loadUrl(this.f8527a);
            webView.setWebViewClient(new WebViewClient() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.2
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView2, String str) {
                    super.onPageFinished(webView2, str);
                    q.e("TTWebsiteActivity", "onPageFinished invoke....url=".concat(String.valueOf(str)));
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView2, int i, String str, String str2) {
                    super.onReceivedError(webView2, i, str, str2);
                    q.e("TTWebsiteActivity", "onReceivedError invoke....description=" + str + ",failingUrl=" + str2);
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    super.onReceivedError(webView2, webResourceRequest, webResourceError);
                    q.e("TTWebsiteActivity", "onReceivedError invoke....onReceivedError=" + webResourceError.getErrorCode());
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedHttpError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    super.onReceivedHttpError(webView2, webResourceRequest, webResourceResponse);
                    q.e("TTWebsiteActivity", "onReceivedHttpError invoke....errorResponse=".concat(String.valueOf(webResourceResponse)));
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                    q.e("TTWebsiteActivity", "shouldOverrideUrlLoading invoke....view=" + webView2 + ",request=" + webResourceRequest);
                    if (webView2 == null || webResourceRequest == null) {
                        return false;
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        webView2.loadUrl(webResourceRequest.getUrl().toString());
                        q.e("TTWebsiteActivity", "shouldOverrideUrlLoading invoke....url1=" + webResourceRequest.getUrl().toString());
                        return true;
                    }
                    webView2.loadUrl(webResourceRequest.toString());
                    q.e("TTWebsiteActivity", "shouldOverrideUrlLoading invoke....url2=" + webResourceRequest.toString());
                    return true;
                }
            });
            return;
        }
        finish();
    }
}
