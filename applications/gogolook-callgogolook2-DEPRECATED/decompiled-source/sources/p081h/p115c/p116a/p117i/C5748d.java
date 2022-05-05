package p081h.p115c.p116a.p117i;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import p081h.p115c.p116a.EnumC5731e;
/* renamed from: h.c.a.i.d */
/* loaded from: classes-dex2jar.jar:h/c/a/i/d.class */
public class C5748d extends WebViewClient {

    /* renamed from: a */
    public AbstractC5749a f14381a;

    /* renamed from: b */
    public C5745b f14382b;

    /* renamed from: c */
    public boolean f14383c = true;

    /* renamed from: d */
    public boolean f14384d = false;

    /* renamed from: h.c.a.i.d$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/i/d$a.class */
    public interface AbstractC5749a {
        /* renamed from: a */
        void mo24566a(EnumC5731e eVar, String str);

        /* renamed from: a */
        void mo24565a(C5745b bVar);
    }

    public C5748d(AbstractC5749a aVar, C5745b bVar) {
        this.f14381a = aVar;
        this.f14382b = bVar;
    }

    /* renamed from: a */
    public boolean m24567a(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(268435456);
        if (intent.resolveActivity(context.getPackageManager()) == null) {
            return false;
        }
        context.startActivity(intent);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (!this.f14384d) {
            this.f14383c = true;
            this.f14381a.mo24565a(this.f14382b);
            return;
        }
        this.f14384d = false;
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.f14383c = false;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        this.f14381a.mo24566a(EnumC5731e.WEBVIEW_ERROR, str2);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        super.shouldOverrideUrlLoading(webView, str);
        if (!this.f14383c) {
            this.f14384d = true;
        }
        this.f14383c = false;
        if (str == null) {
            return false;
        }
        if (!URLUtil.isHttpsUrl(str) && !URLUtil.isHttpUrl(str)) {
            return false;
        }
        if (m24567a(webView.getContext(), str)) {
            return true;
        }
        this.f14381a.mo24566a(EnumC5731e.NO_AVAILABLE_ACTIVITY_FOR_INTENT, str);
        return true;
    }
}
