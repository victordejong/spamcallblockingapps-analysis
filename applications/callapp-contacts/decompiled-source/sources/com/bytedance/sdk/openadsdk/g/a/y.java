package com.bytedance.sdk.openadsdk.g.a;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/y.class */
public class y extends a {
    static final /* synthetic */ boolean h = true;
    private String i;
    private WebView j;

    private void a(String str, final String str2) {
        if (!this.f && !TextUtils.isEmpty(str2)) {
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.g.a.y.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!y.this.f) {
                        if (Build.VERSION.SDK_INT >= 19) {
                            i.a("Invoking Jsb using evaluateJavascript: " + str2);
                            y.this.j.evaluateJavascript(str2, null);
                            return;
                        }
                        i.a("Invoking Jsb using loadUrl: " + str2);
                        y.this.j.loadUrl(str2);
                    }
                }
            };
            if (Looper.myLooper() != Looper.getMainLooper()) {
                i.a("Received call on sub-thread, posting to main thread: ".concat(String.valueOf(str2)));
                this.f9508d.post(runnable);
                return;
            }
            runnable.run();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.g.a.a
    protected Context a(j jVar) {
        if (jVar.e != null) {
            return jVar.e;
        }
        if (jVar.f9533a != null) {
            return jVar.f9533a.getContext();
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @Override // com.bytedance.sdk.openadsdk.g.a.a
    protected String a() {
        return this.j.getUrl();
    }

    @Override // com.bytedance.sdk.openadsdk.g.a.a
    protected void a(String str) {
        a(str, "javascript:" + this.i + "._handleMessageFromToutiao(" + str + ")");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.g.a.a
    public void a(String str, p pVar) {
        if (pVar == null || TextUtils.isEmpty(pVar.h)) {
            super.a(str, pVar);
            return;
        }
        String str2 = pVar.h;
        a(str, String.format("javascript:(function(){   const iframe = document.querySelector('iframe[src=\"%s\"');   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, '%s');   }})()", str2, str, str2));
    }

    @Override // com.bytedance.sdk.openadsdk.g.a.a
    protected void b(j jVar) {
        this.j = jVar.f9533a;
        this.i = jVar.f9535c;
        if (Build.VERSION.SDK_INT >= 17 && !jVar.n) {
            if (h || this.j != null) {
                this.j.addJavascriptInterface(this, this.i);
                return;
            }
            throw new AssertionError();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.g.a.a
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }
}
