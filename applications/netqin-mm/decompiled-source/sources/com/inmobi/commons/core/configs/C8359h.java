package com.inmobi.commons.core.configs;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.configs.h */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/h.class */
public final class C8359h extends AbstractC8346a {

    /* renamed from: i */
    public static final Object f32500i = new Object();

    /* renamed from: a */
    public int f32501a = 3;

    /* renamed from: b */
    public int f32502b = 60;

    /* renamed from: c */
    public int f32503c = 3;

    /* renamed from: d */
    public int f32504d = -1;

    /* renamed from: g */
    public boolean f32507g = false;

    /* renamed from: h */
    public List<C8360a> f32508h = new ArrayList();

    /* renamed from: e */
    public C8361b f32505e = new C8361b();

    /* renamed from: f */
    public JSONObject f32506f = new JSONObject();

    /* renamed from: com.inmobi.commons.core.configs.h$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/h$a.class */
    public static final class C8360a {

        /* renamed from: a */
        public String f32509a;

        /* renamed from: b */
        public long f32510b;

        /* renamed from: c */
        public String f32511c;

        /* renamed from: d */
        public String f32512d;

        /* renamed from: e */
        public String f32513e = "https://config.inmobi.cn/config-server/v1/config/secure.cfg";
    }

    /* renamed from: com.inmobi.commons.core.configs.h$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/h$b.class */
    public static final class C8361b {

        /* renamed from: a */
        public String f32514a = "7.3.0";

        /* renamed from: b */
        public String f32515b = "https://www.inmobi.com/products/sdk/#downloads";
    }

    /* renamed from: c */
    public static boolean m5817c(String str) {
        if (str == null || str.trim().length() == 0) {
            return true;
        }
        return !str.startsWith("http://") && !str.startsWith("https://");
    }

    /* renamed from: a */
    public final long m5819a(String str) {
        synchronized (f32500i) {
            for (int i = 0; i < this.f32508h.size(); i++) {
                try {
                    C8360a aVar = this.f32508h.get(i);
                    if (str.equals(aVar.f32509a)) {
                        return aVar.f32510b;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return 86400L;
        }
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final String mo5778a() {
        return "root";
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final void mo5777a(JSONObject jSONObject) throws JSONException {
        super.mo5777a(jSONObject);
        this.f32501a = jSONObject.getInt("maxRetries");
        this.f32502b = jSONObject.getInt("retryInterval");
        this.f32503c = jSONObject.getInt("waitTime");
        JSONObject jSONObject2 = jSONObject.getJSONObject("latestSdkInfo");
        this.f32505e.f32514a = jSONObject2.getString("version");
        this.f32505e.f32515b = jSONObject2.getString("url");
        JSONArray jSONArray = jSONObject.getJSONArray("components");
        synchronized (f32500i) {
            try {
                this.f32508h.clear();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    C8360a aVar = new C8360a();
                    aVar.f32509a = jSONObject3.getString("type");
                    aVar.f32510b = jSONObject3.getLong("expiry");
                    aVar.f32511c = jSONObject3.getString("protocol");
                    aVar.f32512d = jSONObject3.getString("url");
                    if ("root".equals(aVar.f32509a)) {
                        aVar.f32513e = jSONObject3.getString("fallbackUrl");
                    }
                    this.f32508h.add(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f32507g = jSONObject.getBoolean("monetizationDisabled");
        this.f32504d = jSONObject.getJSONObject("gdpr").getBoolean("transmitRequest") ? 1 : 0;
    }

    /* renamed from: b */
    public final String m5818b(String str) {
        synchronized (f32500i) {
            for (int i = 0; i < this.f32508h.size(); i++) {
                try {
                    C8360a aVar = this.f32508h.get(i);
                    if (str.equals(aVar.f32509a)) {
                        return aVar.f32512d;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return "";
        }
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: b */
    public final JSONObject mo5776b() throws JSONException {
        boolean z;
        JSONObject b = super.mo5776b();
        JSONArray jSONArray = new JSONArray();
        b.put("maxRetries", this.f32501a);
        b.put("retryInterval", this.f32502b);
        b.put("waitTime", this.f32503c);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", this.f32505e.f32514a);
        jSONObject.put("url", this.f32505e.f32515b);
        b.put("latestSdkInfo", jSONObject);
        synchronized (f32500i) {
            z = false;
            for (int i = 0; i < this.f32508h.size(); i++) {
                try {
                    C8360a aVar = this.f32508h.get(i);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("type", aVar.f32509a);
                    jSONObject2.put("expiry", aVar.f32510b);
                    jSONObject2.put("protocol", aVar.f32511c);
                    jSONObject2.put("url", aVar.f32512d);
                    if ("root".equals(aVar.f32509a)) {
                        jSONObject2.put("fallbackUrl", aVar.f32513e);
                    }
                    jSONArray.put(jSONObject2);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        b.put("components", jSONArray);
        b.put("monetizationDisabled", this.f32507g);
        JSONObject jSONObject3 = new JSONObject();
        if (this.f32504d == 1) {
            z = true;
        }
        jSONObject3.put("transmitRequest", z);
        b.put("gdpr", jSONObject3);
        return b;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: c */
    public final boolean mo5774c() {
        if (this.f32508h == null || this.f32501a < 0 || this.f32502b < 0 || this.f32503c < 0 || this.f32505e.f32514a.trim().length() == 0) {
            return false;
        }
        if (!(this.f32505e.f32515b.startsWith("http://") || this.f32505e.f32515b.startsWith("https://"))) {
            return false;
        }
        synchronized (f32500i) {
            for (int i = 0; i < this.f32508h.size(); i++) {
                C8360a aVar = this.f32508h.get(i);
                if (aVar.f32509a.trim().length() == 0) {
                    return false;
                }
                if (Long.valueOf(aVar.f32510b).longValue() >= 0 && Long.valueOf(aVar.f32510b).longValue() <= 864000) {
                    if (aVar.f32511c.trim().length() == 0) {
                        return false;
                    }
                    if (m5817c(aVar.f32512d)) {
                        return false;
                    }
                    if ("root".equals(aVar.f32509a) && m5817c(aVar.f32513e)) {
                        return false;
                    }
                }
                return false;
            }
            return this.f32504d != -1;
        }
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: d */
    public final AbstractC8346a mo5773d() {
        return new C8359h();
    }

    /* renamed from: e */
    public final String m5816e() {
        C8360a next;
        synchronized (f32500i) {
            try {
                Iterator<C8360a> it = this.f32508h.iterator();
                do {
                    if (!it.hasNext()) {
                        return "https://config.inmobi.cn/config-server/v1/config/secure.cfg";
                    }
                    next = it.next();
                } while (!"root".equals(next.f32509a));
                return next.f32513e;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
