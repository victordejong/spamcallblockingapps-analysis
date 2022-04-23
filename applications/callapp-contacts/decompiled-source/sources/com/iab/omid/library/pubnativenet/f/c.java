package com.iab.omid.library.pubnativenet.f;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.adsession.j;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.b.d;
import com.iab.omid.library.pubnativenet.b.e;
import com.iab.omid.library.pubnativenet.d.b;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/f/c.class */
public final class c extends a {
    WebView e;
    private Long f = null;
    private final Map<String, j> g;
    private final String h;

    public c(Map<String, j> map, String str) {
        this.g = map;
        this.h = str;
    }

    @Override // com.iab.omid.library.pubnativenet.f.a
    public final void a() {
        super.a();
        WebView webView = new WebView(d.a().f33367a);
        this.e = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.e);
        e.a();
        e.a(this.e, this.h);
        for (String str : this.g.keySet()) {
            String externalForm = this.g.get(str).f33348b.toExternalForm();
            e.a();
            WebView webView2 = this.e;
            if (externalForm != null && !TextUtils.isEmpty(str)) {
                e.a(webView2, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str));
            }
        }
        this.f = Long.valueOf(System.nanoTime());
    }

    @Override // com.iab.omid.library.pubnativenet.f.a
    public final void a(k kVar, com.iab.omid.library.pubnativenet.adsession.c cVar) {
        JSONObject jSONObject = new JSONObject();
        Map unmodifiableMap = Collections.unmodifiableMap(cVar.f33344d);
        for (String str : unmodifiableMap.keySet()) {
            b.a(jSONObject, str, (j) unmodifiableMap.get(str));
        }
        a(kVar, cVar, jSONObject);
    }

    @Override // com.iab.omid.library.pubnativenet.f.a
    public final void b() {
        super.b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.pubnativenet.f.c.1

            /* renamed from: b  reason: collision with root package name */
            private final WebView f33399b;

            {
                this.f33399b = c.this.e;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f33399b.destroy();
            }
        }, Math.max(4000 - (this.f == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.e = null;
    }
}
