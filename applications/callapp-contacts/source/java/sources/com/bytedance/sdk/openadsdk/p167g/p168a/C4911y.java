package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.y */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/y.class */
public class C4911y extends AbstractC4870a {

    /* renamed from: h */
    static final /* synthetic */ boolean f17919h = true;

    /* renamed from: i */
    private String f17920i;

    /* renamed from: j */
    private WebView f17921j;

    /* renamed from: a */
    private void m33582a(String str, final String str2) {
        if (!this.f17815f && !TextUtils.isEmpty(str2)) {
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.g.a.y.1
                @Override // java.lang.Runnable
                public void run() {
                    if (C4911y.this.f17815f) {
                        return;
                    }
                    if (Build.VERSION.SDK_INT >= 19) {
                        C4884i.m33657a("Invoking Jsb using evaluateJavascript: " + str2);
                        C4911y.this.f17921j.evaluateJavascript(str2, null);
                        return;
                    }
                    C4884i.m33657a("Invoking Jsb using loadUrl: " + str2);
                    C4911y.this.f17921j.loadUrl(str2);
                }
            };
            if (Looper.myLooper() == Looper.getMainLooper()) {
                runnable.run();
                return;
            }
            C4884i.m33657a("Received call on sub-thread, posting to main thread: ".concat(String.valueOf(str2)));
            this.f17813d.post(runnable);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4870a
    /* renamed from: a */
    protected Context mo33586a(C4885j c4885j) {
        if (c4885j.f17852e != null) {
            return c4885j.f17852e;
        }
        if (c4885j.f17848a == null) {
            throw new IllegalStateException("WebView cannot be null!");
        }
        return c4885j.f17848a.getContext();
    }

    @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4870a
    /* renamed from: a */
    protected String mo33587a() {
        return this.f17921j.getUrl();
    }

    @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4870a
    /* renamed from: a */
    protected void mo33584a(String str) {
        m33582a(str, "javascript:" + this.f17920i + "._handleMessageFromToutiao(" + str + ")");
    }

    @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4870a
    /* renamed from: a */
    public void mo33583a(String str, C4894p c4894p) {
        if (c4894p == null || TextUtils.isEmpty(c4894p.f17871h)) {
            super.mo33583a(str, c4894p);
            return;
        }
        String str2 = c4894p.f17871h;
        m33582a(str, String.format("javascript:(function(){   const iframe = document.querySelector('iframe[src=\"%s\"');   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, '%s');   }})()", str2, str, str2));
    }

    @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4870a
    /* renamed from: b */
    protected void mo33581b(C4885j c4885j) {
        this.f17921j = c4885j.f17848a;
        this.f17920i = c4885j.f17850c;
        if (Build.VERSION.SDK_INT < 17 || c4885j.f17861n) {
            return;
        }
        if (!f17919h && this.f17921j == null) {
            throw new AssertionError();
        }
        this.f17921j.addJavascriptInterface(this, this.f17920i);
    }

    @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4870a
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }
}
