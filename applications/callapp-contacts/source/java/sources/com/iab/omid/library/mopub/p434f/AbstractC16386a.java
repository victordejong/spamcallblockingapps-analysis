package com.iab.omid.library.mopub.p434f;

import android.webkit.WebView;
import com.iab.omid.library.mopub.adsession.C16345a;
import com.iab.omid.library.mopub.adsession.C16352c;
import com.iab.omid.library.mopub.adsession.C16359j;
import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.adsession.p429a.C16347b;
import com.iab.omid.library.mopub.p430b.C16367d;
import com.iab.omid.library.mopub.p430b.C16368e;
import com.iab.omid.library.mopub.p432d.C16378a;
import com.iab.omid.library.mopub.p432d.C16379b;
import com.iab.omid.library.mopub.p433e.C16385b;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.f.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/f/a.class */
public abstract class AbstractC16386a {

    /* renamed from: a */
    public C16385b f57836a = new C16385b(null);

    /* renamed from: b */
    public C16345a f57837b;

    /* renamed from: c */
    public C16347b f57838c;

    /* renamed from: d */
    public int f57839d;

    /* renamed from: e */
    public long f57840e;

    /* renamed from: com.iab.omid.library.mopub.f.a$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/f/a$a.class */
    public static final class EnumC16387a extends Enum<EnumC16387a> {

        /* renamed from: a */
        public static final int f57841a = 1;

        /* renamed from: b */
        public static final int f57842b = 2;

        /* renamed from: c */
        public static final int f57843c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f57844d = {1, 2, 3};

        private EnumC16387a(String str, int i) {
            super(str, i);
        }
    }

    public AbstractC16386a() {
        m7310d();
    }

    /* renamed from: a */
    public void mo7309a() {
    }

    /* renamed from: a */
    public final void m7316a(float f) {
        C16368e.m7358a().m7357a(m7311c(), f);
    }

    /* renamed from: a */
    public final void m7315a(WebView webView) {
        this.f57836a = new C16385b(webView);
    }

    /* renamed from: a */
    public void mo7308a(C16360k c16360k, C16352c c16352c) {
        m7314a(c16360k, c16352c, null);
    }

    /* renamed from: a */
    public final void m7314a(C16360k c16360k, C16352c c16352c, JSONObject jSONObject) {
        String str = c16360k.f57787f;
        JSONObject jSONObject2 = new JSONObject();
        C16379b.m7332a(jSONObject2, "environment", "app");
        C16379b.m7332a(jSONObject2, "adSessionType", c16352c.f57775h);
        C16379b.m7332a(jSONObject2, "deviceInfo", C16378a.m7339a());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        C16379b.m7332a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        C16379b.m7332a(jSONObject3, "partnerName", c16352c.f57768a.f57776a);
        C16379b.m7332a(jSONObject3, "partnerVersion", c16352c.f57768a.f57777b);
        C16379b.m7332a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        C16379b.m7332a(jSONObject4, "libraryVersion", "1.3.4-Mopub");
        C16379b.m7332a(jSONObject4, "appId", C16367d.m7359a().f57808a.getApplicationContext().getPackageName());
        C16379b.m7332a(jSONObject2, "app", jSONObject4);
        if (c16352c.f57774g != null) {
            C16379b.m7332a(jSONObject2, GooglePlayServicesInterstitial.CONTENT_URL_KEY, c16352c.f57774g);
        }
        if (c16352c.f57773f != null) {
            C16379b.m7332a(jSONObject2, "customReferenceData", c16352c.f57773f);
        }
        JSONObject jSONObject5 = new JSONObject();
        for (C16359j c16359j : Collections.unmodifiableList(c16352c.f57770c)) {
            C16379b.m7332a(jSONObject5, c16359j.f57778a, c16359j.f57780c);
        }
        C16368e.m7358a().m7354a(m7311c(), str, jSONObject2, jSONObject5, jSONObject);
    }

    /* renamed from: a */
    public final void m7313a(String str) {
        C16368e.m7358a().m7355a(m7311c(), str, (JSONObject) null);
    }

    /* renamed from: a */
    public final void m7312a(String str, JSONObject jSONObject) {
        C16368e.m7358a().m7355a(m7311c(), str, jSONObject);
    }

    /* renamed from: b */
    public void mo7307b() {
        this.f57836a.clear();
    }

    /* renamed from: c */
    public final WebView m7311c() {
        return (WebView) this.f57836a.get();
    }

    /* renamed from: d */
    public final void m7310d() {
        this.f57840e = System.nanoTime();
        this.f57839d = EnumC16387a.f57841a;
    }
}
