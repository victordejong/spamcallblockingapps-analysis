package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.p266y.C5862b;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7016u;
import com.google.android.gms.internal.ads.ei0;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/a.class */
final class C5805a {

    /* renamed from: a */
    private final Context f18690a;

    /* renamed from: b */
    private final WebView f18691b;

    /* renamed from: c */
    private final C7016u f18692c;

    public C5805a(WebView webView, C7016u c7016u) {
        this.f18691b = webView;
        this.f18690a = webView.getContext();
        this.f18692c = c7016u;
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getClickSignals(String str) {
        C6679kw.m13770a(this.f18690a);
        try {
            return this.f18692c.m10450b().mo11750b(this.f18690a, str, this.f18691b);
        } catch (RuntimeException e) {
            ei0.m15466d("Exception getting click signals. ", e);
            C5667s.m18156h().m12235k(e, "TaggingLibraryJsInterface.getClickSignals");
            return "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getQueryInfo() {
        C5667s.m18160d();
        String uuid = UUID.randomUUID().toString();
        Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        Context context = this.f18690a;
        AdFormat adFormat = AdFormat.BANNER;
        C5603e.C5604a c5604a = new C5603e.C5604a();
        c5604a.m18283b(AdMobAdapter.class, bundle);
        C5862b.m17735a(context, adFormat, c5604a.m18282c(), new C5823j(this, uuid));
        return uuid;
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getViewSignals() {
        C6679kw.m13770a(this.f18690a);
        try {
            return this.f18692c.m10450b().mo11749d(this.f18690a, this.f18691b, null);
        } catch (RuntimeException e) {
            ei0.m15466d("Exception getting view signals. ", e);
            C5667s.m18156h().m12235k(e, "TaggingLibraryJsInterface.getViewSignals");
            return "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public void reportTouchEvent(String str) {
        C6679kw.m13770a(this.f18690a);
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt("x");
            int i2 = jSONObject.getInt("y");
            int i3 = jSONObject.getInt("duration_ms");
            float f = (float) jSONObject.getDouble("force");
            int i4 = jSONObject.getInt("type");
            this.f18692c.m10448d(MotionEvent.obtain(0L, i3, i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? -1 : 3 : 2 : 1 : 0, i, i2, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
        } catch (RuntimeException | JSONException e) {
            ei0.m15466d("Failed to parse the touch string. ", e);
            C5667s.m18156h().m12235k(e, "TaggingLibraryJsInterface.reportTouchEvent");
        }
    }
}
