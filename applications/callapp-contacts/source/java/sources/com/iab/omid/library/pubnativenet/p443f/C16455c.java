package com.iab.omid.library.pubnativenet.p443f;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.adsession.C16419c;
import com.iab.omid.library.pubnativenet.adsession.C16426j;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.p439b.C16433d;
import com.iab.omid.library.pubnativenet.p439b.C16434e;
import com.iab.omid.library.pubnativenet.p441d.C16445b;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.f.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/f/c.class */
public final class C16455c extends AbstractC16452a {

    /* renamed from: e */
    WebView f57974e;

    /* renamed from: f */
    private Long f57975f = null;

    /* renamed from: g */
    private final Map<String, C16426j> f57976g;

    /* renamed from: h */
    private final String f57977h;

    public C16455c(Map<String, C16426j> map, String str) {
        this.f57976g = map;
        this.f57977h = str;
    }

    @Override // com.iab.omid.library.pubnativenet.p443f.AbstractC16452a
    /* renamed from: a */
    public final void mo7205a() {
        super.mo7205a();
        WebView webView = new WebView(C16433d.m7258a().f57937a);
        this.f57974e = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        m7213a(this.f57974e);
        C16434e.m7257a();
        C16434e.m7255a(this.f57974e, this.f57977h);
        for (String str : this.f57976g.keySet()) {
            String externalForm = this.f57976g.get(str).f57911b.toExternalForm();
            C16434e.m7257a();
            WebView webView2 = this.f57974e;
            if (externalForm != null && !TextUtils.isEmpty(str)) {
                C16434e.m7255a(webView2, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str));
            }
        }
        this.f57975f = Long.valueOf(System.nanoTime());
    }

    @Override // com.iab.omid.library.pubnativenet.p443f.AbstractC16452a
    /* renamed from: a */
    public final void mo7204a(C16427k c16427k, C16419c c16419c) {
        JSONObject jSONObject = new JSONObject();
        Map unmodifiableMap = Collections.unmodifiableMap(c16419c.f57903d);
        for (String str : unmodifiableMap.keySet()) {
            C16445b.m7230a(jSONObject, str, (C16426j) unmodifiableMap.get(str));
        }
        m7212a(c16427k, c16419c, jSONObject);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // com.iab.omid.library.pubnativenet.p443f.AbstractC16452a
    /* renamed from: b */
    public final void mo7203b() {
        super.mo7203b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.pubnativenet.f.c.1

            /* renamed from: b */
            private final WebView f57979b;

            {
                C16455c.this = this;
                this.f57979b = this.f57974e;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f57979b.destroy();
            }
        }, Math.max(4000 - (this.f57975f == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f57975f.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f57974e = null;
    }
}
