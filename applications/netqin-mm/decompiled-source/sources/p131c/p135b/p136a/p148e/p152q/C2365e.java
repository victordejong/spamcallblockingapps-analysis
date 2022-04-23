package p131c.p135b.p136a.p148e.p152q;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* renamed from: c.b.a.e.q.e */
/* loaded from: classes-dex2jar.jar:c/b/a/e/q/e.class */
public class C2365e {

    /* renamed from: a */
    public String f9203a;

    /* renamed from: b */
    public String f9204b;

    /* renamed from: c */
    public String f9205c;

    /* renamed from: d */
    public Map<String, String> f9206d;

    /* renamed from: e */
    public Map<String, String> f9207e;

    /* renamed from: f */
    public Map<String, Object> f9208f;

    /* renamed from: g */
    public boolean f9209g;

    /* renamed from: h */
    public String f9210h;

    /* renamed from: i */
    public int f9211i;

    /* renamed from: c.b.a.e.q.e$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/q/e$b.class */
    public static class C2367b {

        /* renamed from: a */
        public String f9212a;

        /* renamed from: b */
        public String f9213b;

        /* renamed from: c */
        public Map<String, String> f9214c;

        /* renamed from: d */
        public Map<String, String> f9215d;

        /* renamed from: e */
        public Map<String, Object> f9216e;

        /* renamed from: f */
        public boolean f9217f;

        /* renamed from: g */
        public String f9218g;

        /* renamed from: a */
        public C2367b m30122a(String str) {
            this.f9212a = str;
            return this;
        }

        /* renamed from: a */
        public C2367b m30121a(Map<String, String> map) {
            this.f9214c = map;
            return this;
        }

        /* renamed from: a */
        public C2367b m30120a(boolean z) {
            this.f9217f = z;
            return this;
        }

        /* renamed from: a */
        public C2365e m30124a() {
            return new C2365e(this);
        }

        /* renamed from: b */
        public C2367b m30118b(String str) {
            this.f9213b = str;
            return this;
        }

        /* renamed from: b */
        public C2367b m30117b(Map<String, String> map) {
            this.f9215d = map;
            return this;
        }

        /* renamed from: c */
        public C2367b m30115c(String str) {
            this.f9218g = str;
            return this;
        }

        /* renamed from: c */
        public C2367b m30114c(Map<String, Object> map) {
            this.f9216e = map;
            return this;
        }
    }

    public C2365e(C2367b bVar) {
        this.f9203a = UUID.randomUUID().toString();
        this.f9204b = bVar.f9212a;
        this.f9205c = bVar.f9213b;
        this.f9206d = bVar.f9214c;
        this.f9207e = bVar.f9215d;
        this.f9208f = bVar.f9216e;
        this.f9209g = bVar.f9217f;
        this.f9210h = bVar.f9218g;
        this.f9211i = 0;
    }

    public C2365e(JSONObject jSONObject, C2341l lVar) throws Exception {
        String b = C2390i.m29913b(jSONObject, "uniqueId", UUID.randomUUID().toString(), lVar);
        String string = jSONObject.getString("targetUrl");
        String b2 = C2390i.m29913b(jSONObject, "backupUrl", "", lVar);
        int i = jSONObject.getInt("attemptNumber");
        Map<String, String> synchronizedMap = C2390i.m29932a(jSONObject, "parameters") ? Collections.synchronizedMap(C2390i.m29933a(jSONObject.getJSONObject("parameters"))) : Collections.emptyMap();
        Map<String, String> synchronizedMap2 = C2390i.m29932a(jSONObject, "httpHeaders") ? Collections.synchronizedMap(C2390i.m29933a(jSONObject.getJSONObject("httpHeaders"))) : Collections.emptyMap();
        Map<String, Object> synchronizedMap3 = C2390i.m29932a(jSONObject, "requestBody") ? Collections.synchronizedMap(C2390i.m29917b(jSONObject.getJSONObject("requestBody"))) : Collections.emptyMap();
        this.f9203a = b;
        this.f9204b = string;
        this.f9205c = b2;
        this.f9206d = synchronizedMap;
        this.f9207e = synchronizedMap2;
        this.f9208f = synchronizedMap3;
        this.f9209g = jSONObject.optBoolean("isEncodingEnabled", false);
        this.f9211i = i;
    }

    /* renamed from: l */
    public static C2367b m30125l() {
        return new C2367b();
    }

    /* renamed from: a */
    public String m30136a() {
        return this.f9204b;
    }

    /* renamed from: b */
    public String m30135b() {
        return this.f9205c;
    }

    /* renamed from: c */
    public Map<String, String> m30134c() {
        return this.f9206d;
    }

    /* renamed from: d */
    public Map<String, String> m30133d() {
        return this.f9207e;
    }

    /* renamed from: e */
    public Map<String, Object> m30132e() {
        return this.f9208f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2365e.class != obj.getClass()) {
            return false;
        }
        return this.f9203a.equals(((C2365e) obj).f9203a);
    }

    /* renamed from: f */
    public boolean m30131f() {
        return this.f9209g;
    }

    /* renamed from: g */
    public String m30130g() {
        return this.f9210h;
    }

    /* renamed from: h */
    public int m30129h() {
        return this.f9211i;
    }

    public int hashCode() {
        return this.f9203a.hashCode();
    }

    /* renamed from: i */
    public void m30128i() {
        this.f9211i++;
    }

    /* renamed from: j */
    public void m30127j() {
        HashMap hashMap = new HashMap();
        Map<String, String> map = this.f9206d;
        if (map != null) {
            hashMap.putAll(map);
        }
        hashMap.put("postback_ts", String.valueOf(System.currentTimeMillis()));
        this.f9206d = hashMap;
    }

    /* renamed from: k */
    public JSONObject m30126k() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("uniqueId", this.f9203a);
        jSONObject.put("targetUrl", this.f9204b);
        jSONObject.put("backupUrl", this.f9205c);
        jSONObject.put("isEncodingEnabled", this.f9209g);
        jSONObject.put("attemptNumber", this.f9211i);
        if (this.f9206d != null) {
            jSONObject.put("parameters", new JSONObject(this.f9206d));
        }
        if (this.f9207e != null) {
            jSONObject.put("httpHeaders", new JSONObject(this.f9207e));
        }
        if (this.f9208f != null) {
            jSONObject.put("requestBody", new JSONObject(this.f9208f));
        }
        return jSONObject;
    }

    public String toString() {
        return "PostbackRequest{uniqueId='" + this.f9203a + "', communicatorRequestId='" + this.f9210h + "', targetUrl='" + this.f9204b + "', backupUrl='" + this.f9205c + "', attemptNumber=" + this.f9211i + ", isEncodingEnabled=" + this.f9209g + '}';
    }
}
