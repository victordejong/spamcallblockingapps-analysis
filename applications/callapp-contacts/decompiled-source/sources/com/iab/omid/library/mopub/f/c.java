package com.iab.omid.library.mopub.f;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.mopub.adsession.j;
import com.iab.omid.library.mopub.adsession.k;
import com.iab.omid.library.mopub.b.d;
import com.iab.omid.library.mopub.b.e;
import com.iab.omid.library.mopub.d.b;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/f/c.class */
public final class c extends a {
    WebView f;
    private Long g = null;
    private Map<String, j> h;
    private final String i;

    public c(Map<String, j> map, String str) {
        this.h = map;
        this.i = str;
    }

    @Override // com.iab.omid.library.mopub.f.a
    public final void a() {
        super.a();
        WebView webView = new WebView(d.a().f33272a);
        this.f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.f);
        e.a();
        e.a(this.f, this.i);
        for (String str : this.h.keySet()) {
            String externalForm = this.h.get(str).f33252b.toExternalForm();
            e.a();
            WebView webView2 = this.f;
            if (externalForm != null && !TextUtils.isEmpty(str)) {
                e.a(webView2, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str));
            }
        }
        this.g = Long.valueOf(System.nanoTime());
    }

    @Override // com.iab.omid.library.mopub.f.a
    public final void a(k kVar, com.iab.omid.library.mopub.adsession.c cVar) {
        JSONObject jSONObject = new JSONObject();
        Map unmodifiableMap = Collections.unmodifiableMap(cVar.f33248d);
        for (String str : unmodifiableMap.keySet()) {
            b.a(jSONObject, str, (j) unmodifiableMap.get(str));
        }
        a(kVar, cVar, jSONObject);
    }

    @Override // com.iab.omid.library.mopub.f.a
    public final void b() {
        super.b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.mopub.f.c.1

            /* renamed from: b  reason: collision with root package name */
            private WebView f33304b;

            {
                this.f33304b = c.this.f;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f33304b.destroy();
            }
        }, Math.max(4000 - (this.g == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f = null;
    }
}
