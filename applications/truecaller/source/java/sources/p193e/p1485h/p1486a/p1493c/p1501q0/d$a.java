package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tenor.android.core.constant.StringConstant;
import java.net.URLDecoder;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.h.a.c.q0.d$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/d$a.class */
public class d$a extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ d f63195a;

    public d$a(d dVar) {
        this.f63195a = dVar;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            Bundle m2396X = C26232y.m2396X(str, false);
            String str2 = str;
            if (m2396X.containsKey("wzrk_c2a")) {
                String string = m2396X.getString("wzrk_c2a");
                str2 = str;
                if (string != null) {
                    String[] split = string.split("__dl__");
                    str2 = str;
                    if (split.length == 2) {
                        m2396X.putString("wzrk_c2a", URLDecoder.decode(split[0], StringConstant.UTF8));
                        str2 = split[1];
                    }
                }
            }
            d dVar = this.f63195a;
            AbstractC22798c0 SA = dVar.SA();
            if (SA != null) {
                SA.mo7755P7(((a) dVar).e, m2396X, null);
            }
            this.f63195a.QA(str2, m2396X);
            return true;
        } catch (Throwable th) {
            return true;
        }
    }
}
