package com.iab.omid.library.mopub.p434f;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.mopub.adsession.C16352c;
import com.iab.omid.library.mopub.adsession.C16359j;
import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.p430b.C16367d;
import com.iab.omid.library.mopub.p430b.C16368e;
import com.iab.omid.library.mopub.p432d.C16379b;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.f.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/f/c.class */
public final class C16389c extends AbstractC16386a {

    /* renamed from: f */
    WebView f57845f;

    /* renamed from: g */
    private Long f57846g = null;

    /* renamed from: h */
    private Map<String, C16359j> f57847h;

    /* renamed from: i */
    private final String f57848i;

    public C16389c(Map<String, C16359j> map, String str) {
        this.f57847h = map;
        this.f57848i = str;
    }

    @Override // com.iab.omid.library.mopub.p434f.AbstractC16386a
    /* renamed from: a */
    public final void mo7309a() {
        super.mo7309a();
        WebView webView = new WebView(C16367d.m7359a().f57808a);
        this.f57845f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        m7315a(this.f57845f);
        C16368e.m7358a();
        C16368e.m7356a(this.f57845f, this.f57848i);
        for (String str : this.f57847h.keySet()) {
            String externalForm = this.f57847h.get(str).f57779b.toExternalForm();
            C16368e.m7358a();
            WebView webView2 = this.f57845f;
            if (externalForm != null && !TextUtils.isEmpty(str)) {
                C16368e.m7356a(webView2, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str));
            }
        }
        this.f57846g = Long.valueOf(System.nanoTime());
    }

    @Override // com.iab.omid.library.mopub.p434f.AbstractC16386a
    /* renamed from: a */
    public final void mo7308a(C16360k c16360k, C16352c c16352c) {
        JSONObject jSONObject = new JSONObject();
        Map unmodifiableMap = Collections.unmodifiableMap(c16352c.f57771d);
        for (String str : unmodifiableMap.keySet()) {
            C16379b.m7332a(jSONObject, str, (C16359j) unmodifiableMap.get(str));
        }
        m7314a(c16360k, c16352c, jSONObject);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // com.iab.omid.library.mopub.p434f.AbstractC16386a
    /* renamed from: b */
    public final void mo7307b() {
        super.mo7307b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.mopub.f.c.1

            /* renamed from: b */
            private WebView f57850b;

            {
                C16389c.this = this;
                this.f57850b = this.f57845f;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f57850b.destroy();
            }
        }, Math.max(4000 - (this.f57846g == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f57846g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f57845f = null;
    }
}
