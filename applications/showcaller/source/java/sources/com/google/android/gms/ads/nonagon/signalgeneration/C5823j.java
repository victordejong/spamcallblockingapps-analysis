package com.google.android.gms.ads.nonagon.signalgeneration;

import android.webkit.WebView;
import com.google.android.gms.ads.p266y.AbstractC5863c;
import com.google.android.gms.ads.p266y.C5862b;
import com.google.android.gms.internal.ads.ei0;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/j.class */
final class C5823j extends AbstractC5863c {

    /* renamed from: a */
    final /* synthetic */ String f18755a;

    /* renamed from: b */
    final /* synthetic */ C5805a f18756b;

    public C5823j(C5805a c5805a, String str) {
        this.f18756b = c5805a;
        this.f18755a = str;
    }

    @Override // com.google.android.gms.ads.p266y.AbstractC5863c
    /* renamed from: a */
    public final void mo17733a(String str) {
        WebView webView;
        String valueOf = String.valueOf(str);
        ei0.m15464f(valueOf.length() != 0 ? "Failed to generate query info for the tagging library, error: ".concat(valueOf) : new String("Failed to generate query info for the tagging library, error: "));
        String format = String.format("window.postMessage({'paw_id': '%1$s', 'error': '%2$s'}, '*');", this.f18755a, str);
        webView = this.f18756b.f18691b;
        webView.evaluateJavascript(format, null);
    }

    @Override // com.google.android.gms.ads.p266y.AbstractC5863c
    /* renamed from: b */
    public final void mo17732b(C5862b c5862b) {
        String str;
        WebView webView;
        String m17734b = c5862b.m17734b();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", this.f18755a);
            jSONObject.put("signal", m17734b);
            str = String.format("window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException e) {
            str = String.format("window.postMessage({'paw_id': '%1$s', 'signal': '%2$s'}, '*');", this.f18755a, c5862b.m17734b());
        }
        webView = this.f18756b.f18691b;
        webView.evaluateJavascript(str, null);
    }
}
