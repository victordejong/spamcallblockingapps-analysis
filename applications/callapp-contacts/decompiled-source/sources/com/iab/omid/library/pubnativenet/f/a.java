package com.iab.omid.library.pubnativenet.f;

import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.adsession.a.b;
import com.iab.omid.library.pubnativenet.adsession.c;
import com.iab.omid.library.pubnativenet.adsession.j;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.b.d;
import com.iab.omid.library.pubnativenet.b.e;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/f/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public com.iab.omid.library.pubnativenet.adsession.a f33390a;

    /* renamed from: b  reason: collision with root package name */
    public b f33391b;

    /* renamed from: c  reason: collision with root package name */
    public int f33392c;

    /* renamed from: d  reason: collision with root package name */
    public long f33393d;
    private com.iab.omid.library.pubnativenet.e.b e = new com.iab.omid.library.pubnativenet.e.b(null);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.iab.omid.library.pubnativenet.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/f/a$a.class */
    public static final class EnumC0535a extends Enum<EnumC0535a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f33394a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f33395b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f33396c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f33397d = {1, 2, 3};

        private EnumC0535a(String str, int i) {
        }
    }

    public a() {
        d();
    }

    private boolean e() {
        return this.e.get() != null;
    }

    public void a() {
    }

    public final void a(float f) {
        e.a().a(c(), f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(WebView webView) {
        this.e = new com.iab.omid.library.pubnativenet.e.b(webView);
    }

    public void a(k kVar, c cVar) {
        a(kVar, cVar, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(k kVar, c cVar, JSONObject jSONObject) {
        String str = kVar.f;
        JSONObject jSONObject2 = new JSONObject();
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject2, "environment", "app");
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject2, "adSessionType", cVar.h);
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject2, "deviceInfo", com.iab.omid.library.pubnativenet.d.a.a());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject3, "partnerName", cVar.f33341a.f33345a);
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject3, "partnerVersion", cVar.f33341a.f33346b);
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject4, "libraryVersion", "1.3.17-Pubnativenet");
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject4, "appId", d.a().f33367a.getApplicationContext().getPackageName());
        com.iab.omid.library.pubnativenet.d.b.a(jSONObject2, "app", jSONObject4);
        if (cVar.g != null) {
            com.iab.omid.library.pubnativenet.d.b.a(jSONObject2, GooglePlayServicesInterstitial.CONTENT_URL_KEY, cVar.g);
        }
        if (cVar.f != null) {
            com.iab.omid.library.pubnativenet.d.b.a(jSONObject2, "customReferenceData", cVar.f);
        }
        JSONObject jSONObject5 = new JSONObject();
        for (j jVar : Collections.unmodifiableList(cVar.f33343c)) {
            com.iab.omid.library.pubnativenet.d.b.a(jSONObject5, jVar.f33347a, jVar.f33349c);
        }
        e.a().a(c(), str, jSONObject2, jSONObject5, jSONObject);
    }

    public final void a(String str) {
        e.a().a(c(), str, (JSONObject) null);
    }

    public final void a(String str, JSONObject jSONObject) {
        e.a().a(c(), str, jSONObject);
    }

    public final void a(boolean z) {
        if (e()) {
            e.a().c(c(), z ? "foregrounded" : "backgrounded");
        }
    }

    public void b() {
        this.e.clear();
    }

    public final WebView c() {
        return (WebView) this.e.get();
    }

    public final void d() {
        this.f33393d = System.nanoTime();
        this.f33392c = EnumC0535a.f33394a;
    }
}
