package p068d2;

import android.support.p012v4.media.C0082b;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.recyclerview.widget.C0608b;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import p068d2.C2441x3;
/* renamed from: d2.z3 */
/* loaded from: classes-dex2jar.jar:d2/z3.class */
public class C2466z3 extends C2441x3.C2455j {

    /* renamed from: b */
    public final /* synthetic */ C2441x3 f8698b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2466z3(C2441x3 c2441x3) {
        super(null);
        this.f8698b = c2441x3;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest.getUrl().toString().endsWith("mraid.js")) {
            try {
                return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(this.f8698b.f8649f.getBytes("UTF-8")));
            } catch (UnsupportedEncodingException e) {
                C0082b.m8750l(0, 0, C0608b.m7626i("UTF-8 not supported."), true);
                return null;
            }
        }
        return null;
    }
}
