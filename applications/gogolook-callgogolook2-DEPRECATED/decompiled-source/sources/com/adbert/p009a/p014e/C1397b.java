package com.adbert.p009a.p014e;

import android.content.Context;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1409j;
import com.adbert.p009a.p011b.C1378c;
import com.adbert.p009a.p012c.EnumC1389i;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.appsflyer.share.Constants;
import org.json.JSONObject;
/* renamed from: com.adbert.a.e.b */
/* loaded from: classes-dex2jar.jar:com/adbert/a/e/b.class */
public class C1397b {

    /* renamed from: a */
    public Context f648a;

    /* renamed from: b */
    public C1378c f649b = new C1378c();

    public C1397b(Context context, String str, String str2) {
        this.f648a = context;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f649b.f432a = jSONObject.getString("returnUrl");
            this.f649b.f434c = jSONObject.getString("shareReturnUrl");
            if (jSONObject.has("gaUrl")) {
                this.f649b.f436e = jSONObject.getString("gaUrl");
            }
            if (jSONObject.has("exposureUrl")) {
                this.f649b.f436e = jSONObject.getString("exposureUrl");
            }
            this.f649b.f437f = jSONObject.getString("appId");
            this.f649b.f438g = jSONObject.getString("appKey");
            this.f649b.f440i = jSONObject.getString(Constants.URL_MEDIA_SOURCE);
            this.f649b.f440i = jSONObject.getString(Constants.URL_MEDIA_SOURCE);
            this.f649b.f442k = jSONObject.getString("url_open").equals("browser");
            if (str2.equals("native_normal")) {
                m37163a(jSONObject);
            } else if (str2.equals("native_video")) {
                m37162b(jSONObject);
            }
        } catch (Exception e) {
            C1402g.m37141a(e);
        }
    }

    /* renamed from: a */
    private void m37163a(JSONObject jSONObject) {
        try {
            if (jSONObject.getBoolean("enable_download") && !jSONObject.getString("downloadUrl").isEmpty()) {
                this.f649b.f443l = EnumC1389i.download;
                this.f649b.f444m = jSONObject.getString("downloadUrl");
            } else if (jSONObject.getBoolean("enable_url") && !jSONObject.getString("linkUrl").isEmpty()) {
                this.f649b.f443l = EnumC1389i.url;
                this.f649b.f444m = jSONObject.getString("linkUrl");
            } else if (jSONObject.getBoolean("enable_phone") && !jSONObject.getString("phone").isEmpty() && C1402g.m37128d(this.f648a) == 5) {
                this.f649b.f443l = EnumC1389i.phone;
                this.f649b.f444m = jSONObject.getString("phone");
            } else if (jSONObject.getBoolean("enable_fb") && !jSONObject.getString("fbUrl").isEmpty()) {
                this.f649b.f443l = EnumC1389i.fb;
                this.f649b.f444m = jSONObject.getString("fbUrl");
                if (jSONObject.has("fbPageId")) {
                    this.f649b.f451t = jSONObject.getString("fbPageId");
                }
            } else if (jSONObject.getBoolean("enable_line") && !jSONObject.getString("lineTxt").isEmpty() && C1409j.m37105b(this.f648a)) {
                this.f649b.f443l = EnumC1389i.line;
                this.f649b.f444m = jSONObject.getString("lineTxt");
            }
            int a = this.f649b.f443l.m37182a();
            if (a >= 0) {
                this.f649b.f449r[a] = true;
                this.f649b.f450s[a] = this.f649b.f444m;
            }
            this.f649b.f445n = jSONObject.getJSONObject(CatWalkWebPayload.CATWALK_AD_KEY);
        } catch (Exception e) {
            throw e;
        }
    }

    /* renamed from: b */
    private void m37162b(JSONObject jSONObject) {
        try {
            boolean z = true;
            if (jSONObject.getBoolean("enable_download") && !jSONObject.getString("downloadUrl").isEmpty()) {
                int a = EnumC1389i.download.m37182a();
                this.f649b.f449r[a] = true;
                this.f649b.f450s[a] = jSONObject.getString("downloadUrl");
            }
            if (jSONObject.getBoolean("enable_url") && !jSONObject.getString("linkUrl").isEmpty()) {
                int a2 = EnumC1389i.url.m37182a();
                this.f649b.f449r[a2] = true;
                this.f649b.f450s[a2] = jSONObject.getString("linkUrl");
            }
            if (jSONObject.getBoolean("enable_phone") && !jSONObject.getString("phone").isEmpty() && C1402g.m37128d(this.f648a) == 5) {
                int a3 = EnumC1389i.phone.m37182a();
                this.f649b.f449r[a3] = true;
                this.f649b.f450s[a3] = jSONObject.getString("phone");
            }
            if (jSONObject.getBoolean("enable_fb") && !jSONObject.getString("fbUrl").isEmpty()) {
                int a4 = EnumC1389i.fb.m37182a();
                this.f649b.f449r[a4] = true;
                this.f649b.f450s[a4] = jSONObject.getString("fbUrl");
            }
            if (jSONObject.getBoolean("enable_line") && !jSONObject.getString("lineTxt").isEmpty() && C1409j.m37105b(this.f648a)) {
                int a5 = EnumC1389i.line.m37182a();
                this.f649b.f449r[a5] = true;
                this.f649b.f450s[a5] = jSONObject.getString("lineTxt");
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject(CatWalkWebPayload.CATWALK_AD_KEY);
            if (jSONObject2.has("durationReturnUrl")) {
                this.f649b.f435d = jSONObject2.getString("durationReturnUrl");
            }
            this.f649b.f446o = jSONObject2.getString("mediaSrc");
            String string = jSONObject2.getString("defaultValid");
            if (!string.isEmpty()) {
                this.f649b.f448q = Integer.parseInt(string) * 1000;
            }
            C1378c cVar = this.f649b;
            if (!jSONObject2.getString("absolute").equals("Y")) {
                z = false;
            }
            cVar.f447p = z;
        } catch (Exception e) {
            throw e;
        }
    }

    /* renamed from: a */
    public C1378c m37164a() {
        return this.f649b;
    }
}
