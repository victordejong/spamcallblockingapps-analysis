package io.fabric.sdk.android.services.p072e;

import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.network.EnumC1587c;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import io.fabric.sdk.android.services.p068b.C1480i;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: io.fabric.sdk.android.services.e.l */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/e/l.class */
public class C1562l extends AbstractC1468a implements AbstractC1576x {
    public C1562l(AbstractC1459h abstractC1459h, String str, String str2, AbstractC1588d abstractC1588d) {
        this(abstractC1459h, str, str2, abstractC1588d, EnumC1587c.GET);
    }

    C1562l(AbstractC1459h abstractC1459h, String str, String str2, AbstractC1588d abstractC1588d, EnumC1587c enumC1587c) {
        super(abstractC1459h, str, str2, abstractC1588d, enumC1587c);
    }

    /* renamed from: a */
    private HttpRequest m3312a(HttpRequest httpRequest, C1575w c1575w) {
        m3311a(httpRequest, AbstractC1468a.HEADER_API_KEY, c1575w.f4290a);
        m3311a(httpRequest, AbstractC1468a.HEADER_CLIENT_TYPE, AbstractC1468a.ANDROID_CLIENT_TYPE);
        m3311a(httpRequest, AbstractC1468a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        m3311a(httpRequest, AbstractC1468a.HEADER_ACCEPT, AbstractC1468a.ACCEPT_JSON_VALUE);
        m3311a(httpRequest, "X-CRASHLYTICS-DEVICE-MODEL", c1575w.f4291b);
        m3311a(httpRequest, "X-CRASHLYTICS-OS-BUILD-VERSION", c1575w.f4292c);
        m3311a(httpRequest, "X-CRASHLYTICS-OS-DISPLAY-VERSION", c1575w.f4293d);
        m3311a(httpRequest, "X-CRASHLYTICS-INSTALLATION-ID", c1575w.f4294e);
        return httpRequest;
    }

    /* renamed from: a */
    private JSONObject m3310a(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3551a("Fabric", "Failed to parse settings JSON from " + getUrl(), e);
            AbstractC1462k m3572g2 = C1449c.m3572g();
            m3572g2.mo3552a("Fabric", "Settings response " + str);
            return null;
        }
    }

    /* renamed from: a */
    private void m3311a(HttpRequest httpRequest, String str, String str2) {
        if (str2 != null) {
            httpRequest.m3284a(str, str2);
        }
    }

    /* renamed from: b */
    private Map<String, String> m3309b(C1575w c1575w) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", c1575w.f4297h);
        hashMap.put("display_version", c1575w.f4296g);
        hashMap.put(FirebaseAnalytics.Param.SOURCE, Integer.toString(c1575w.f4298i));
        if (c1575w.f4299j != null) {
            hashMap.put("icon_hash", c1575w.f4299j);
        }
        String str = c1575w.f4295f;
        if (!C1480i.m3473d(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0131  */
    @Override // io.fabric.sdk.android.services.p072e.AbstractC1576x
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject mo3296a(io.fabric.sdk.android.services.p072e.C1575w r6) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.p072e.C1562l.mo3296a(io.fabric.sdk.android.services.e.w):org.json.JSONObject");
    }

    /* renamed from: a */
    JSONObject m3313a(HttpRequest httpRequest) {
        JSONObject jSONObject;
        int m3275b = httpRequest.m3275b();
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a("Fabric", "Settings result was: " + m3275b);
        if (m3314a(m3275b)) {
            jSONObject = m3310a(httpRequest.m3264d());
        } else {
            AbstractC1462k m3572g2 = C1449c.m3572g();
            m3572g2.mo3546e("Fabric", "Failed to retrieve settings from " + getUrl());
            jSONObject = null;
        }
        return jSONObject;
    }

    /* renamed from: a */
    boolean m3314a(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }
}
