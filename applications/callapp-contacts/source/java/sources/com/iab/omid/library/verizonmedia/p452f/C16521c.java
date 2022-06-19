package com.iab.omid.library.verizonmedia.p452f;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.verizonmedia.adsession.C16484c;
import com.iab.omid.library.verizonmedia.adsession.C16491j;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.p448b.C16499d;
import com.iab.omid.library.verizonmedia.p448b.C16500e;
import com.iab.omid.library.verizonmedia.p450d.C16511b;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.f.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/f/c.class */
public final class C16521c extends AbstractC16518a {

    /* renamed from: f */
    WebView f58106f;

    /* renamed from: g */
    private Long f58107g = null;

    /* renamed from: h */
    private Map<String, C16491j> f58108h;

    /* renamed from: i */
    private final String f58109i;

    public C16521c(Map<String, C16491j> map, String str) {
        this.f58108h = map;
        this.f58109i = str;
    }

    @Override // com.iab.omid.library.verizonmedia.p452f.AbstractC16518a
    /* renamed from: a */
    public final void mo7087a() {
        super.mo7087a();
        WebView webView = new WebView(C16499d.m7137a().f58069a);
        this.f58106f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        m7093a(this.f58106f);
        C16500e.m7136a();
        C16500e.m7134a(this.f58106f, this.f58109i);
        for (String str : this.f58108h.keySet()) {
            String externalForm = this.f58108h.get(str).f58040b.toExternalForm();
            C16500e.m7136a();
            WebView webView2 = this.f58106f;
            if (externalForm != null && !TextUtils.isEmpty(str)) {
                C16500e.m7134a(webView2, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str));
            }
        }
        this.f58107g = Long.valueOf(System.nanoTime());
    }

    @Override // com.iab.omid.library.verizonmedia.p452f.AbstractC16518a
    /* renamed from: a */
    public final void mo7086a(C16492k c16492k, C16484c c16484c) {
        JSONObject jSONObject = new JSONObject();
        Map unmodifiableMap = Collections.unmodifiableMap(c16484c.f58032d);
        for (String str : unmodifiableMap.keySet()) {
            C16511b.m7109a(jSONObject, str, (C16491j) unmodifiableMap.get(str));
        }
        m7092a(c16492k, c16484c, jSONObject);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // com.iab.omid.library.verizonmedia.p452f.AbstractC16518a
    /* renamed from: b */
    public final void mo7085b() {
        super.mo7085b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.verizonmedia.f.c.1

            /* renamed from: b */
            private WebView f58111b;

            {
                C16521c.this = this;
                this.f58111b = this.f58106f;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f58111b.destroy();
            }
        }, Math.max(4000 - (this.f58107g == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f58107g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f58106f = null;
    }
}
