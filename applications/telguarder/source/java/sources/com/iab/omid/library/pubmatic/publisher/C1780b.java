package com.iab.omid.library.pubmatic.publisher;

import android.os.Handler;
import android.webkit.WebView;
import com.iab.omid.library.pubmatic.adsession.AdSessionContext;
import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.adsession.VerificationScriptResource;
import com.iab.omid.library.pubmatic.p012b.C1759d;
import com.iab.omid.library.pubmatic.p012b.C1760e;
import com.iab.omid.library.pubmatic.p014d.C1770b;
import com.iab.omid.library.pubmatic.p014d.C1773d;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.publisher.b */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/publisher/b.class */
public class C1780b extends AdSessionStatePublisher {

    /* renamed from: a */
    private WebView f279a;

    /* renamed from: b */
    private Long f280b = null;

    /* renamed from: c */
    private Map<String, VerificationScriptResource> f281c;

    /* renamed from: d */
    private final String f282d;

    public C1780b(Map<String, VerificationScriptResource> map, String str) {
        this.f281c = map;
        this.f282d = str;
    }

    @Override // com.iab.omid.library.pubmatic.publisher.AdSessionStatePublisher
    /* renamed from: a */
    public void mo1187a() {
        super.mo1187a();
        m1183j();
    }

    @Override // com.iab.omid.library.pubmatic.publisher.AdSessionStatePublisher
    /* renamed from: a */
    public void mo1186a(C1753a c1753a, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            C1770b.m1237a(jSONObject, str, injectedResourcesMap.get(str));
        }
        m1202a(c1753a, adSessionContext, jSONObject);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // com.iab.omid.library.pubmatic.publisher.AdSessionStatePublisher
    /* renamed from: b */
    public void mo1184b() {
        super.mo1184b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.pubmatic.publisher.b.1

            /* renamed from: b */
            private WebView f284b;

            {
                C1780b.this = this;
                this.f284b = this.f279a;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f284b.destroy();
            }
        }, Math.max(4000 - (this.f280b == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(C1773d.m1226a() - this.f280b.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f279a = null;
    }

    /* renamed from: j */
    void m1183j() {
        WebView webView = new WebView(C1759d.m1288a().m1286b());
        this.f279a = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        m1206a(this.f279a);
        C1760e.m1285a().m1281a(this.f279a, this.f282d);
        for (String str : this.f281c.keySet()) {
            C1760e.m1285a().m1280a(this.f279a, this.f281c.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f280b = Long.valueOf(C1773d.m1226a());
    }
}
