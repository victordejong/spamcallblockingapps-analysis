package com.iab.omid.library.applovin.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.WebView;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.p060b.C1935d;
import com.iab.omid.library.applovin.p060b.C1936e;
import com.iab.omid.library.applovin.p062d.C1946b;
import com.iab.omid.library.applovin.p062d.C1949d;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.publisher.b */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/publisher/b.class */
public class C1956b extends AdSessionStatePublisher {

    /* renamed from: a */
    private WebView f7210a;

    /* renamed from: b */
    private Long f7211b = null;

    /* renamed from: c */
    private final Map<String, VerificationScriptResource> f7212c;

    /* renamed from: d */
    private final String f7213d;

    public C1956b(Map<String, VerificationScriptResource> map, String str) {
        this.f7212c = map;
        this.f7213d = str;
    }

    @Override // com.iab.omid.library.applovin.publisher.AdSessionStatePublisher
    /* renamed from: a */
    public void mo4048a() {
        super.mo4048a();
        m4044j();
    }

    @Override // com.iab.omid.library.applovin.publisher.AdSessionStatePublisher
    /* renamed from: a */
    public void mo4047a(C1929a c1929a, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            C1946b.m4099a(jSONObject, str, injectedResourcesMap.get(str));
        }
        m4063a(c1929a, adSessionContext, jSONObject);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // com.iab.omid.library.applovin.publisher.AdSessionStatePublisher
    /* renamed from: b */
    public void mo4045b() {
        super.mo4045b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.applovin.publisher.b.1

            /* renamed from: b */
            private final WebView f7215b;

            {
                C1956b.this = this;
                this.f7215b = this.f7210a;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f7215b.destroy();
            }
        }, Math.max(4000 - (this.f7211b == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(C1949d.m4087a() - this.f7211b.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f7210a = null;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: j */
    public void m4044j() {
        WebView webView = new WebView(C1935d.m4152a().m4150b());
        this.f7210a = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        m4067a(this.f7210a);
        C1936e.m4149a().m4145a(this.f7210a, this.f7213d);
        for (String str : this.f7212c.keySet()) {
            C1936e.m4149a().m4144a(this.f7210a, this.f7212c.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f7211b = Long.valueOf(C1949d.m4087a());
    }
}
