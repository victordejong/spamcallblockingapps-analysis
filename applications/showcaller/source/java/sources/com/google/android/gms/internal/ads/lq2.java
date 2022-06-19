package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lq2.class */
public final class lq2 extends iq2 {

    /* renamed from: d */
    private WebView f26226d;

    /* renamed from: e */
    private Long f26227e = null;

    /* renamed from: f */
    private final Map<String, pp2> f26228f;

    public lq2(Map<String, pp2> map, String str) {
        this.f26228f = map;
    }

    @Override // com.google.android.gms.internal.ads.iq2
    /* renamed from: a */
    public final void mo13433a() {
        WebView webView = new WebView(yp2.m8744a().m8743b());
        this.f26226d = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        m14304c(this.f26226d);
        WebView webView2 = this.f26226d;
        if (webView2 != null && !TextUtils.isEmpty(null)) {
            webView2.loadUrl("javascript: null");
        }
        Iterator<String> it = this.f26228f.keySet().iterator();
        if (!it.hasNext()) {
            this.f26227e = Long.valueOf(System.nanoTime());
            return;
        }
        this.f26228f.get(it.next());
        throw null;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // com.google.android.gms.internal.ads.iq2
    /* renamed from: b */
    public final void mo13432b() {
        super.mo13432b();
        new Handler().postDelayed(new kq2(this), Math.max(4000 - (this.f26227e == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f26227e.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f26226d = null;
    }

    @Override // com.google.android.gms.internal.ads.iq2
    /* renamed from: h */
    public final void mo13431h(np2 np2Var, mp2 mp2Var) {
        JSONObject jSONObject = new JSONObject();
        Map<String, pp2> m13120e = mp2Var.m13120e();
        for (String str : m13120e.keySet()) {
            mq2.m13113c(jSONObject, str, m13120e.get(str));
        }
        m14299i(np2Var, mp2Var, jSONObject);
    }
}
