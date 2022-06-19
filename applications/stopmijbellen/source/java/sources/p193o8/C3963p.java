package p193o8;

import android.annotation.TargetApi;
import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import p095f8.C2780h;
/* renamed from: o8.p */
/* loaded from: classes2-dex2jar.jar:o8/p.class */
public class C3963p extends WebViewClient {

    /* renamed from: a */
    public ProgressDialog f12463a;

    /* renamed from: b */
    public boolean f12464b = false;

    /* renamed from: c */
    public final /* synthetic */ C3964q f12465c;

    public C3963p(C3964q c3964q) {
        this.f12465c = c3964q;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (!this.f12464b) {
            try {
                this.f12463a.cancel();
                this.f12463a = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        try {
            if (!this.f12464b && this.f12463a == null) {
                ProgressDialog progressDialog = new ProgressDialog(this.f12465c.getActivity(), C2780h.m3081H(this.f12465c.getContext()) ? 2131886382 : 2131886090);
                this.f12463a = progressDialog;
                progressDialog.setMessage(this.f12465c.getString(2131820781));
                this.f12463a.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f12464b = false;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        webResourceError.toString();
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        this.f12464b = true;
        webView.loadUrl(webResourceRequest.getUrl().toString());
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        this.f12464b = true;
        webView.loadUrl(str);
        return true;
    }
}
