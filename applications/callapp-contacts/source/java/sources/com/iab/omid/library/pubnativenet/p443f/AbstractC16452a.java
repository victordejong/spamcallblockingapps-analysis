package com.iab.omid.library.pubnativenet.p443f;

import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.adsession.C16413a;
import com.iab.omid.library.pubnativenet.adsession.C16419c;
import com.iab.omid.library.pubnativenet.adsession.C16426j;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.adsession.p438a.C16415b;
import com.iab.omid.library.pubnativenet.p439b.C16433d;
import com.iab.omid.library.pubnativenet.p439b.C16434e;
import com.iab.omid.library.pubnativenet.p441d.C16444a;
import com.iab.omid.library.pubnativenet.p441d.C16445b;
import com.iab.omid.library.pubnativenet.p442e.C16451b;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.f.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/f/a.class */
public abstract class AbstractC16452a {

    /* renamed from: a */
    public C16413a f57965a;

    /* renamed from: b */
    public C16415b f57966b;

    /* renamed from: c */
    public int f57967c;

    /* renamed from: d */
    public long f57968d;

    /* renamed from: e */
    private C16451b f57969e = new C16451b(null);

    /* renamed from: com.iab.omid.library.pubnativenet.f.a$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/f/a$a.class */
    public static final class EnumC16453a extends Enum<EnumC16453a> {

        /* renamed from: a */
        public static final int f57970a = 1;

        /* renamed from: b */
        public static final int f57971b = 2;

        /* renamed from: c */
        public static final int f57972c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f57973d = {1, 2, 3};

        private EnumC16453a(String str, int i) {
            super(str, i);
        }
    }

    public AbstractC16452a() {
        m7207d();
    }

    /* renamed from: e */
    private boolean m7206e() {
        return this.f57969e.get() != null;
    }

    /* renamed from: a */
    public void mo7205a() {
    }

    /* renamed from: a */
    public final void m7214a(float f) {
        C16434e.m7257a().m7256a(m7208c(), f);
    }

    /* renamed from: a */
    public final void m7213a(WebView webView) {
        this.f57969e = new C16451b(webView);
    }

    /* renamed from: a */
    public void mo7204a(C16427k c16427k, C16419c c16419c) {
        m7212a(c16427k, c16419c, null);
    }

    /* renamed from: a */
    public final void m7212a(C16427k c16427k, C16419c c16419c, JSONObject jSONObject) {
        String str = c16427k.f57919f;
        JSONObject jSONObject2 = new JSONObject();
        C16445b.m7230a(jSONObject2, "environment", "app");
        C16445b.m7230a(jSONObject2, "adSessionType", c16419c.f57907h);
        C16445b.m7230a(jSONObject2, "deviceInfo", C16444a.m7237a());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        C16445b.m7230a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        C16445b.m7230a(jSONObject3, "partnerName", c16419c.f57900a.f57908a);
        C16445b.m7230a(jSONObject3, "partnerVersion", c16419c.f57900a.f57909b);
        C16445b.m7230a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        C16445b.m7230a(jSONObject4, "libraryVersion", "1.3.17-Pubnativenet");
        C16445b.m7230a(jSONObject4, "appId", C16433d.m7258a().f57937a.getApplicationContext().getPackageName());
        C16445b.m7230a(jSONObject2, "app", jSONObject4);
        if (c16419c.f57906g != null) {
            C16445b.m7230a(jSONObject2, GooglePlayServicesInterstitial.CONTENT_URL_KEY, c16419c.f57906g);
        }
        if (c16419c.f57905f != null) {
            C16445b.m7230a(jSONObject2, "customReferenceData", c16419c.f57905f);
        }
        JSONObject jSONObject5 = new JSONObject();
        for (C16426j c16426j : Collections.unmodifiableList(c16419c.f57902c)) {
            C16445b.m7230a(jSONObject5, c16426j.f57910a, c16426j.f57912c);
        }
        C16434e.m7257a().m7253a(m7208c(), str, jSONObject2, jSONObject5, jSONObject);
    }

    /* renamed from: a */
    public final void m7211a(String str) {
        C16434e.m7257a().m7254a(m7208c(), str, (JSONObject) null);
    }

    /* renamed from: a */
    public final void m7210a(String str, JSONObject jSONObject) {
        C16434e.m7257a().m7254a(m7208c(), str, jSONObject);
    }

    /* renamed from: a */
    public final void m7209a(boolean z) {
        if (m7206e()) {
            C16434e.m7257a().m7248c(m7208c(), z ? "foregrounded" : "backgrounded");
        }
    }

    /* renamed from: b */
    public void mo7203b() {
        this.f57969e.clear();
    }

    /* renamed from: c */
    public final WebView m7208c() {
        return (WebView) this.f57969e.get();
    }

    /* renamed from: d */
    public final void m7207d() {
        this.f57968d = System.nanoTime();
        this.f57967c = EnumC16453a.f57970a;
    }
}
