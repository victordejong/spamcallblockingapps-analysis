package com.google.firebase.crashlytics.internal.settings.p305i;

import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.common.C9107k;
import com.google.firebase.crashlytics.internal.settings.p304h.C9145f;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p299i.C9053a;
import com.google.firebase.crashlytics.p293d.p299i.C9054b;
import com.google.firebase.crashlytics.p293d.p299i.C9055c;
import com.yanzhenjie.nohttp.Headers;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.google.firebase.crashlytics.internal.settings.i.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/i/a.class */
public class C9146a implements AbstractC9147b {

    /* renamed from: a */
    private final String f39454a;

    /* renamed from: b */
    private final C9054b f39455b;

    /* renamed from: c */
    private final C8898b f39456c;

    public C9146a(String str, C9054b c9054b) {
        this(str, c9054b, C8898b.m2397f());
    }

    C9146a(String str, C9054b c9054b, C8898b c8898b) {
        if (str != null) {
            this.f39456c = c8898b;
            this.f39455b = c9054b;
            this.f39454a = str;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }

    /* renamed from: b */
    private C9053a m1722b(C9053a c9053a, C9145f c9145f) {
        m1721c(c9053a, "X-CRASHLYTICS-GOOGLE-APP-ID", c9145f.f39445a);
        m1721c(c9053a, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        m1721c(c9053a, "X-CRASHLYTICS-API-CLIENT-VERSION", C9107k.m1837i());
        m1721c(c9053a, Headers.HEAD_KEY_ACCEPT, Headers.HEAD_VALUE_CONTENT_TYPE_JSON);
        m1721c(c9053a, "X-CRASHLYTICS-DEVICE-MODEL", c9145f.f39446b);
        m1721c(c9053a, "X-CRASHLYTICS-OS-BUILD-VERSION", c9145f.f39447c);
        m1721c(c9053a, "X-CRASHLYTICS-OS-DISPLAY-VERSION", c9145f.f39448d);
        m1721c(c9053a, "X-CRASHLYTICS-INSTALLATION-ID", c9145f.f39449e.mo1772a());
        return c9053a;
    }

    /* renamed from: c */
    private void m1721c(C9053a c9053a, String str, String str2) {
        if (str2 != null) {
            c9053a.m2042d(str, str2);
        }
    }

    /* renamed from: e */
    private JSONObject m1719e(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            C8898b c8898b = this.f39456c;
            c8898b.m2391l("Failed to parse settings JSON from " + this.f39454a, e);
            C8898b c8898b2 = this.f39456c;
            c8898b2.m2392k("Settings response " + str);
            return null;
        }
    }

    /* renamed from: f */
    private Map<String, String> m1718f(C9145f c9145f) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", c9145f.f39452h);
        hashMap.put("display_version", c9145f.f39451g);
        hashMap.put("source", Integer.toString(c9145f.f39453i));
        String str = c9145f.f39450f;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.p305i.AbstractC9147b
    /* renamed from: a */
    public JSONObject mo1715a(C9145f c9145f, boolean z) {
        JSONObject jSONObject;
        if (z) {
            try {
                Map<String, String> m1718f = m1718f(c9145f);
                C9053a m1722b = m1722b(m1720d(m1718f), c9145f);
                this.f39456c.m2401b("Requesting settings from " + this.f39454a);
                this.f39456c.m2394i("Settings query params were: " + m1718f);
                jSONObject = m1717g(m1722b.m2043c());
            } catch (IOException e) {
                this.f39456c.m2398e("Settings request failed.", e);
                jSONObject = null;
            }
            return jSONObject;
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    /* renamed from: d */
    protected C9053a m1720d(Map<String, String> map) {
        C9053a m2040a = this.f39455b.m2040a(this.f39454a, map);
        return m2040a.m2042d(Headers.HEAD_KEY_USER_AGENT, "Crashlytics Android SDK/" + C9107k.m1837i()).m2042d("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    /* renamed from: g */
    JSONObject m1717g(C9055c c9055c) {
        JSONObject jSONObject;
        int m2038b = c9055c.m2038b();
        C8898b c8898b = this.f39456c;
        c8898b.m2394i("Settings response code was: " + m2038b);
        if (m1716h(m2038b)) {
            jSONObject = m1719e(c9055c.m2039a());
        } else {
            C8898b c8898b2 = this.f39456c;
            c8898b2.m2399d("Settings request failed; (status: " + m2038b + ") from " + this.f39454a);
            jSONObject = null;
        }
        return jSONObject;
    }

    /* renamed from: h */
    boolean m1716h(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }
}
