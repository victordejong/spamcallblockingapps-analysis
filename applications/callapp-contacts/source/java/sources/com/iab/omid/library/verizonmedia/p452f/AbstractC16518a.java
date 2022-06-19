package com.iab.omid.library.verizonmedia.p452f;

import android.webkit.WebView;
import com.iab.omid.library.verizonmedia.adsession.C16479a;
import com.iab.omid.library.verizonmedia.adsession.C16484c;
import com.iab.omid.library.verizonmedia.adsession.C16491j;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.adsession.p447a.C16480a;
import com.iab.omid.library.verizonmedia.p448b.C16499d;
import com.iab.omid.library.verizonmedia.p448b.C16500e;
import com.iab.omid.library.verizonmedia.p450d.C16510a;
import com.iab.omid.library.verizonmedia.p450d.C16511b;
import com.iab.omid.library.verizonmedia.p451e.C16517b;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.f.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/f/a.class */
public abstract class AbstractC16518a {

    /* renamed from: a */
    public C16517b f58097a = new C16517b(null);

    /* renamed from: b */
    public C16479a f58098b;

    /* renamed from: c */
    public C16480a f58099c;

    /* renamed from: d */
    public int f58100d;

    /* renamed from: e */
    public long f58101e;

    /* renamed from: com.iab.omid.library.verizonmedia.f.a$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/f/a$a.class */
    public static final class EnumC16519a extends Enum<EnumC16519a> {

        /* renamed from: a */
        public static final int f58102a = 1;

        /* renamed from: b */
        public static final int f58103b = 2;

        /* renamed from: c */
        public static final int f58104c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f58105d = {1, 2, 3};

        private EnumC16519a(String str, int i) {
            super(str, i);
        }
    }

    public AbstractC16518a() {
        m7088d();
    }

    /* renamed from: a */
    public void mo7087a() {
    }

    /* renamed from: a */
    public final void m7094a(float f) {
        C16500e.m7136a().m7135a(m7089c(), f);
    }

    /* renamed from: a */
    public final void m7093a(WebView webView) {
        this.f58097a = new C16517b(webView);
    }

    /* renamed from: a */
    public void mo7086a(C16492k c16492k, C16484c c16484c) {
        m7092a(c16492k, c16484c, null);
    }

    /* renamed from: a */
    public final void m7092a(C16492k c16492k, C16484c c16484c, JSONObject jSONObject) {
        String str = c16492k.f58048f;
        JSONObject jSONObject2 = new JSONObject();
        C16511b.m7109a(jSONObject2, "environment", "app");
        C16511b.m7109a(jSONObject2, "adSessionType", c16484c.f58036h);
        C16511b.m7109a(jSONObject2, "deviceInfo", C16510a.m7116a());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        C16511b.m7109a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        C16511b.m7109a(jSONObject3, "partnerName", c16484c.f58029a.f58037a);
        C16511b.m7109a(jSONObject3, "partnerVersion", c16484c.f58029a.f58038b);
        C16511b.m7109a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        C16511b.m7109a(jSONObject4, "libraryVersion", "1.3.9-Verizonmedia");
        C16511b.m7109a(jSONObject4, "appId", C16499d.m7137a().f58069a.getApplicationContext().getPackageName());
        C16511b.m7109a(jSONObject2, "app", jSONObject4);
        if (c16484c.f58035g != null) {
            C16511b.m7109a(jSONObject2, GooglePlayServicesInterstitial.CONTENT_URL_KEY, c16484c.f58035g);
        }
        if (c16484c.f58034f != null) {
            C16511b.m7109a(jSONObject2, "customReferenceData", c16484c.f58034f);
        }
        JSONObject jSONObject5 = new JSONObject();
        for (C16491j c16491j : Collections.unmodifiableList(c16484c.f58031c)) {
            C16511b.m7109a(jSONObject5, c16491j.f58039a, c16491j.f58041c);
        }
        C16500e.m7136a().m7132a(m7089c(), str, jSONObject2, jSONObject5, jSONObject);
    }

    /* renamed from: a */
    public final void m7091a(String str) {
        C16500e.m7136a().m7133a(m7089c(), str, (JSONObject) null);
    }

    /* renamed from: a */
    public final void m7090a(String str, JSONObject jSONObject) {
        C16500e.m7136a().m7133a(m7089c(), str, jSONObject);
    }

    /* renamed from: b */
    public void mo7085b() {
        this.f58097a.clear();
    }

    /* renamed from: c */
    public final WebView m7089c() {
        return (WebView) this.f58097a.get();
    }

    /* renamed from: d */
    public final void m7088d() {
        this.f58101e = System.nanoTime();
        this.f58100d = EnumC16519a.f58102a;
    }
}
