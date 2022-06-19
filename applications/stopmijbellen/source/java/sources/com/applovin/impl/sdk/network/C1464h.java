package com.applovin.impl.sdk.network;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.sdk.network.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/h.class */
public class C1464h {

    /* renamed from: a */
    private String f5513a;

    /* renamed from: b */
    private String f5514b;

    /* renamed from: c */
    private String f5515c;

    /* renamed from: d */
    private String f5516d;

    /* renamed from: e */
    private Map<String, String> f5517e;

    /* renamed from: f */
    private Map<String, String> f5518f;

    /* renamed from: g */
    private Map<String, Object> f5519g;

    /* renamed from: h */
    private boolean f5520h;

    /* renamed from: i */
    private boolean f5521i;

    /* renamed from: j */
    private boolean f5522j;

    /* renamed from: k */
    private String f5523k;

    /* renamed from: l */
    private int f5524l;

    /* renamed from: com.applovin.impl.sdk.network.h$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/h$a.class */
    public static class C1466a {

        /* renamed from: a */
        private String f5525a;

        /* renamed from: b */
        private String f5526b;

        /* renamed from: c */
        private String f5527c;

        /* renamed from: d */
        private String f5528d;

        /* renamed from: e */
        private Map<String, String> f5529e;

        /* renamed from: f */
        private Map<String, String> f5530f;

        /* renamed from: g */
        private Map<String, Object> f5531g;

        /* renamed from: h */
        private boolean f5532h;

        /* renamed from: i */
        private boolean f5533i;

        /* renamed from: j */
        private boolean f5534j;

        /* renamed from: a */
        public C1466a m5219a(String str) {
            this.f5525a = str;
            return this;
        }

        /* renamed from: a */
        public C1466a m5218a(Map<String, String> map) {
            this.f5529e = map;
            return this;
        }

        /* renamed from: a */
        public C1466a m5217a(boolean z) {
            this.f5532h = z;
            return this;
        }

        /* renamed from: a */
        public C1464h m5221a() {
            return new C1464h(this);
        }

        /* renamed from: b */
        public C1466a m5215b(String str) {
            this.f5526b = str;
            return this;
        }

        /* renamed from: b */
        public C1466a m5214b(Map<String, String> map) {
            this.f5530f = map;
            return this;
        }

        /* renamed from: b */
        public C1466a m5213b(boolean z) {
            this.f5533i = z;
            return this;
        }

        /* renamed from: c */
        public C1466a m5211c(String str) {
            this.f5527c = str;
            return this;
        }

        /* renamed from: c */
        public C1466a m5210c(Map<String, Object> map) {
            this.f5531g = map;
            return this;
        }

        /* renamed from: c */
        public C1466a m5209c(boolean z) {
            this.f5534j = z;
            return this;
        }

        /* renamed from: d */
        public C1466a m5207d(String str) {
            this.f5528d = str;
            return this;
        }
    }

    private C1464h(C1466a c1466a) {
        this.f5513a = UUID.randomUUID().toString();
        this.f5514b = c1466a.f5526b;
        this.f5515c = c1466a.f5527c;
        this.f5516d = c1466a.f5528d;
        this.f5517e = c1466a.f5529e;
        this.f5518f = c1466a.f5530f;
        this.f5519g = c1466a.f5531g;
        this.f5520h = c1466a.f5532h;
        this.f5521i = c1466a.f5533i;
        this.f5522j = c1466a.f5534j;
        this.f5523k = c1466a.f5525a;
        this.f5524l = 0;
    }

    public C1464h(JSONObject jSONObject, C1408l c1408l) throws Exception {
        String string = JsonUtils.getString(jSONObject, "uniqueId", UUID.randomUUID().toString());
        String string2 = JsonUtils.getString(jSONObject, "communicatorRequestId", "");
        JsonUtils.getString(jSONObject, "httpMethod", "");
        String string3 = jSONObject.getString("targetUrl");
        String string4 = JsonUtils.getString(jSONObject, "backupUrl", "");
        int i = jSONObject.getInt("attemptNumber");
        HashMap synchronizedMap = JsonUtils.valueExists(jSONObject, "parameters") ? Collections.synchronizedMap(JsonUtils.toStringMap(jSONObject.getJSONObject("parameters"))) : new HashMap(0);
        HashMap synchronizedMap2 = JsonUtils.valueExists(jSONObject, "httpHeaders") ? Collections.synchronizedMap(JsonUtils.toStringMap(jSONObject.getJSONObject("httpHeaders"))) : new HashMap(0);
        HashMap synchronizedMap3 = JsonUtils.valueExists(jSONObject, "requestBody") ? Collections.synchronizedMap(JsonUtils.toStringObjectMap(jSONObject.getJSONObject("requestBody"))) : new HashMap(0);
        this.f5513a = string;
        this.f5523k = string2;
        this.f5515c = string3;
        this.f5516d = string4;
        this.f5517e = synchronizedMap;
        this.f5518f = synchronizedMap2;
        this.f5519g = synchronizedMap3;
        this.f5520h = jSONObject.optBoolean("isEncodingEnabled", false);
        this.f5521i = jSONObject.optBoolean("gzipBodyEncoding", false);
        this.f5522j = jSONObject.optBoolean("shouldFireInWebView", false);
        this.f5524l = i;
    }

    /* renamed from: o */
    public static C1466a m5222o() {
        return new C1466a();
    }

    /* renamed from: a */
    public String m5236a() {
        return this.f5514b;
    }

    /* renamed from: b */
    public String m5235b() {
        return this.f5515c;
    }

    /* renamed from: c */
    public String m5234c() {
        return this.f5516d;
    }

    /* renamed from: d */
    public Map<String, String> m5233d() {
        return this.f5517e;
    }

    /* renamed from: e */
    public Map<String, String> m5232e() {
        return this.f5518f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f5513a.equals(((C1464h) obj).f5513a);
        }
        return false;
    }

    /* renamed from: f */
    public Map<String, Object> m5231f() {
        return this.f5519g;
    }

    /* renamed from: g */
    public boolean m5230g() {
        return this.f5520h;
    }

    /* renamed from: h */
    public boolean m5229h() {
        return this.f5521i;
    }

    public int hashCode() {
        return this.f5513a.hashCode();
    }

    /* renamed from: i */
    public boolean m5228i() {
        return this.f5522j;
    }

    /* renamed from: j */
    public String m5227j() {
        return this.f5523k;
    }

    /* renamed from: k */
    public int m5226k() {
        return this.f5524l;
    }

    /* renamed from: l */
    public void m5225l() {
        this.f5524l++;
    }

    /* renamed from: m */
    public void m5224m() {
        HashMap hashMap = new HashMap();
        Map<String, String> map = this.f5517e;
        if (map != null) {
            hashMap.putAll(map);
        }
        hashMap.put("postback_ts", String.valueOf(System.currentTimeMillis()));
        this.f5517e = hashMap;
    }

    /* renamed from: n */
    public JSONObject m5223n() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("uniqueId", this.f5513a);
        jSONObject.put("communicatorRequestId", this.f5523k);
        jSONObject.put("httpMethod", this.f5514b);
        jSONObject.put("targetUrl", this.f5515c);
        jSONObject.put("backupUrl", this.f5516d);
        jSONObject.put("isEncodingEnabled", this.f5520h);
        jSONObject.put("gzipBodyEncoding", this.f5521i);
        jSONObject.put("attemptNumber", this.f5524l);
        if (this.f5517e != null) {
            jSONObject.put("parameters", new JSONObject(this.f5517e));
        }
        if (this.f5518f != null) {
            jSONObject.put("httpHeaders", new JSONObject(this.f5518f));
        }
        if (this.f5519g != null) {
            jSONObject.put("requestBody", new JSONObject(this.f5519g));
        }
        return jSONObject;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("PostbackRequest{uniqueId='");
        C0033h.m8882o(m8752j, this.f5513a, '\'', ", communicatorRequestId='");
        C0033h.m8882o(m8752j, this.f5523k, '\'', ", httpMethod='");
        C0033h.m8882o(m8752j, this.f5514b, '\'', ", targetUrl='");
        C0033h.m8882o(m8752j, this.f5515c, '\'', ", backupUrl='");
        C0033h.m8882o(m8752j, this.f5516d, '\'', ", attemptNumber=");
        m8752j.append(this.f5524l);
        m8752j.append(", isEncodingEnabled=");
        m8752j.append(this.f5520h);
        m8752j.append(", isGzipBodyEncoding=");
        m8752j.append(this.f5521i);
        m8752j.append('}');
        return m8752j.toString();
    }
}
