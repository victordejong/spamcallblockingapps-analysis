package com.iab.omid.library.verizonmedia.f;

import android.webkit.WebView;
import com.iab.omid.library.verizonmedia.adsession.c;
import com.iab.omid.library.verizonmedia.adsession.j;
import com.iab.omid.library.verizonmedia.adsession.k;
import com.iab.omid.library.verizonmedia.b.d;
import com.iab.omid.library.verizonmedia.b.e;
import com.iab.omid.library.verizonmedia.e.b;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/f/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public b f33486a = new b(null);

    /* renamed from: b  reason: collision with root package name */
    public com.iab.omid.library.verizonmedia.adsession.a f33487b;

    /* renamed from: c  reason: collision with root package name */
    public com.iab.omid.library.verizonmedia.adsession.a.a f33488c;

    /* renamed from: d  reason: collision with root package name */
    public int f33489d;
    public long e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.iab.omid.library.verizonmedia.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/f/a$a.class */
    public static final class EnumC0538a extends Enum<EnumC0538a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f33490a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f33491b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f33492c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f33493d = {1, 2, 3};

        private EnumC0538a(String str, int i) {
        }
    }

    public a() {
        d();
    }

    public void a() {
    }

    public final void a(float f) {
        e.a().a(c(), f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(WebView webView) {
        this.f33486a = new b(webView);
    }

    public void a(k kVar, c cVar) {
        a(kVar, cVar, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(k kVar, c cVar, JSONObject jSONObject) {
        String str = kVar.f;
        JSONObject jSONObject2 = new JSONObject();
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject2, "environment", "app");
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject2, "adSessionType", cVar.h);
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject2, "deviceInfo", com.iab.omid.library.verizonmedia.d.a.a());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject3, "partnerName", cVar.f33436a.f33440a);
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject3, "partnerVersion", cVar.f33436a.f33441b);
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject4, "libraryVersion", "1.3.9-Verizonmedia");
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject4, "appId", d.a().f33463a.getApplicationContext().getPackageName());
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject2, "app", jSONObject4);
        if (cVar.g != null) {
            com.iab.omid.library.verizonmedia.d.b.a(jSONObject2, GooglePlayServicesInterstitial.CONTENT_URL_KEY, cVar.g);
        }
        if (cVar.f != null) {
            com.iab.omid.library.verizonmedia.d.b.a(jSONObject2, "customReferenceData", cVar.f);
        }
        JSONObject jSONObject5 = new JSONObject();
        for (j jVar : Collections.unmodifiableList(cVar.f33438c)) {
            com.iab.omid.library.verizonmedia.d.b.a(jSONObject5, jVar.f33442a, jVar.f33444c);
        }
        e.a().a(c(), str, jSONObject2, jSONObject5, jSONObject);
    }

    public final void a(String str) {
        e.a().a(c(), str, (JSONObject) null);
    }

    public final void a(String str, JSONObject jSONObject) {
        e.a().a(c(), str, jSONObject);
    }

    public void b() {
        this.f33486a.clear();
    }

    public final WebView c() {
        return (WebView) this.f33486a.get();
    }

    public final void d() {
        this.e = System.nanoTime();
        this.f33489d = EnumC0538a.f33490a;
    }
}
