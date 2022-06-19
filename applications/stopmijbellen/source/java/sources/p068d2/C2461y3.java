package p068d2;

import android.content.Intent;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import p068d2.C2441x3;
/* renamed from: d2.y3 */
/* loaded from: classes-dex2jar.jar:d2/y3.class */
public class C2461y3 extends C2441x3.C2455j {

    /* renamed from: b */
    public final /* synthetic */ C2441x3 f8692b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2461y3(C2441x3 c2441x3) {
        super(null);
        this.f8692b = c2441x3;
    }

    @Override // p068d2.C2441x3.C2455j, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        C2441x3 c2441x3 = this.f8692b;
        if (c2441x3.f8642O == null) {
            WebMessagePort[] createWebMessageChannel = c2441x3.createWebMessageChannel();
            c2441x3.f8642O = new C2441x3.C2456k(createWebMessageChannel);
            createWebMessageChannel[0].setWebMessageCallback(new C2167a4(c2441x3));
            c2441x3.postWebMessage(new WebMessage("", new WebMessagePort[]{(WebMessagePort) c2441x3.f8642O.f8689a[1]}), Uri.parse(str));
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        C2441x3.m3549k(this.f8692b, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest.getUrl().toString().endsWith("mraid.js")) {
            try {
                return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(this.f8692b.f8649f.getBytes("UTF-8")));
            } catch (UnsupportedEncodingException e) {
                C0082b.m8750l(0, 0, C0608b.m7626i("UTF-8 not supported."), true);
                return null;
            }
        }
        return null;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (!this.f8692b.f8629B || webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return false;
        }
        String m3536x = this.f8692b.m3536x();
        Uri url = m3536x == null ? webResourceRequest.getUrl() : Uri.parse(m3536x);
        if (url == null) {
            StringBuilder sb = new StringBuilder();
            StringBuilder m8752j = C0082b.m8752j("shouldOverrideUrlLoading called with null request url, with ad id: ");
            m8752j.append(this.f8692b.m3538v());
            sb.append(m8752j.toString());
            C0082b.m8750l(0, 0, sb.toString(), true);
            return true;
        }
        C2315i3.m3664g(new Intent("android.intent.action.VIEW", url));
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, ImagesContract.URL, url.toString());
        C2227e4.m3744i(c2267f4, "ad_session_id", this.f8692b.f8648e);
        new C2410t0("WebView.redirect_detected", this.f8692b.f8639L.f8301k, c2267f4).m3586b();
        C2210e3 m3731c = C2408t.m3591d().m3731c();
        m3731c.m3757b(this.f8692b.f8648e);
        m3731c.m3755d(this.f8692b.f8648e);
        return true;
    }
}
