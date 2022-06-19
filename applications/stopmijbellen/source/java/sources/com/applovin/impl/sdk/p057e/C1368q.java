package com.applovin.impl.sdk.p057e;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.webkit.WebView;
import com.applovin.impl.adview.C0984d;
import com.applovin.impl.adview.C0990e;
import com.applovin.impl.mediation.C1236h;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.C1281a;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.q */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/q.class */
public class C1368q extends AbstractRunnableC1331a implements C1236h.AbstractC1237a {

    /* renamed from: a */
    private final C1281a f5197a;

    /* renamed from: c */
    private AppLovinAdLoadListener f5198c;

    /* renamed from: d */
    private C0984d f5199d;

    /* renamed from: com.applovin.impl.sdk.e.q$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/q$a.class */
    public class C1370a extends C0990e {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C1370a(C1408l c1408l) {
            super(null, c1408l);
            C1368q.this = r5;
        }

        /* renamed from: a */
        private boolean m5635a(String str, C1314b<String> c1314b) {
            for (String str2 : C1368q.this.f5113b.m5480b(c1314b)) {
                if (str2.equalsIgnoreCase(str)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.applovin.impl.adview.C0990e
        /* renamed from: a */
        public boolean mo5636a(WebView webView, String str, boolean z) {
            C1368q c1368q = C1368q.this;
            c1368q.m5731b("Processing click on ad URL \"" + str + "\"");
            if (str == null || !(webView instanceof C0984d)) {
                return true;
            }
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            if (!m5635a(scheme, C1314b.f4850ca)) {
                return true;
            }
            if (m5635a(host, C1314b.f4851cb)) {
                C1368q.this.m5733a("Ad load succeeded");
                if (C1368q.this.f5198c == null) {
                    return true;
                }
                C1368q.this.f5198c.adReceived(C1368q.this.f5197a);
            } else if (!m5635a(host, C1314b.f4852cc)) {
                C1368q.this.m5728d("Unrecognized webview event");
                return true;
            } else {
                C1368q.this.m5733a("Ad load failed");
                if (C1368q.this.f5198c == null) {
                    return true;
                }
                C1368q.this.f5198c.failedToReceiveAd(204);
            }
            C1368q.this.f5198c = null;
            return true;
        }
    }

    public C1368q(JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        super("TaskProcessJavaScriptTagAd", c1408l);
        this.f5197a = new C1281a(jSONObject, jSONObject2, enumC1282b, c1408l);
        this.f5198c = appLovinAdLoadListener;
        c1408l.m5536G().m6107a(this);
    }

    @Override // com.applovin.impl.mediation.C1236h.AbstractC1237a
    /* renamed from: a */
    public void mo5642a(AbstractC1044a abstractC1044a) {
        if (abstractC1044a.m6711f().equalsIgnoreCase(this.f5197a.m5984I())) {
            this.f5113b.m5536G().m6106b(this);
            AppLovinAdLoadListener appLovinAdLoadListener = this.f5198c;
            if (appLovinAdLoadListener == null) {
                return;
            }
            appLovinAdLoadListener.adReceived(this.f5197a);
            this.f5198c = null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        StringBuilder m8752j = C0082b.m8752j("Rendering AppLovin ad #");
        m8752j.append(this.f5197a.getAdIdNumber());
        m5733a(m8752j.toString());
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e.q.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    C1368q c1368q = C1368q.this;
                    C1368q c1368q2 = C1368q.this;
                    C1370a c1370a = new C1370a(c1368q2.f5113b);
                    C1368q c1368q3 = C1368q.this;
                    c1368q.f5199d = new C0984d(c1370a, c1368q3.f5113b, c1368q3.m5726f());
                    C1368q.this.f5199d.loadDataWithBaseURL(C1368q.this.f5197a.m5932as(), C1368q.this.f5197a.m6023b(), "text/html", null, "");
                } catch (Throwable th) {
                    C1368q.this.f5113b.m5536G().m6106b(C1368q.this);
                    C1368q.this.m5732a("Failed to initialize WebView", th);
                    if (C1368q.this.f5198c == null) {
                        return;
                    }
                    C1368q.this.f5198c.failedToReceiveAd(-1);
                    C1368q.this.f5198c = null;
                }
            }
        });
    }
}
