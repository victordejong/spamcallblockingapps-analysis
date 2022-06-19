package com.bytedance.sdk.openadsdk.core.p154e;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.e.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/l.class */
public class C4561l {

    /* renamed from: a */
    private String f16606a;

    /* renamed from: b */
    private String f16607b;

    /* renamed from: c */
    private String f16608c;

    /* renamed from: d */
    private List<C4562a> f16609d;

    /* renamed from: com.bytedance.sdk.openadsdk.core.e.l$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/l$a.class */
    public static class C4562a {

        /* renamed from: a */
        private String f16610a;

        /* renamed from: b */
        private String f16611b;

        /* renamed from: c */
        private int f16612c;

        /* renamed from: a */
        public String m35089a() {
            return this.f16610a;
        }

        /* renamed from: a */
        public void m35088a(int i) {
            this.f16612c = i;
        }

        /* renamed from: a */
        public void m35087a(String str) {
            this.f16610a = str;
        }

        /* renamed from: b */
        public String m35086b() {
            return this.f16611b;
        }

        /* renamed from: b */
        public void m35085b(String str) {
            this.f16611b = str;
        }

        /* renamed from: c */
        public int m35084c() {
            return this.f16612c;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C4562a)) {
                return super.equals(obj);
            }
            String str = this.f16610a;
            return str != null && str.equals(((C4562a) obj).m35089a());
        }

        public int hashCode() {
            int i = this.f16612c;
            String str = this.f16610a;
            int i2 = i;
            if (str != null) {
                i2 = (i * 31) + str.hashCode();
            }
            String str2 = this.f16611b;
            int i3 = i2;
            if (str2 != null) {
                i3 = (i2 * 31) + str2.hashCode();
            }
            return i3;
        }
    }

    /* renamed from: a */
    public static C4561l m35098a(JSONObject jSONObject) {
        C4561l c4561l;
        C4561l c4561l2;
        if (jSONObject == null) {
            return null;
        }
        try {
            c4561l2 = new C4561l();
            try {
                c4561l2.m35100a(jSONObject.getString("name"));
                c4561l2.m35096b(jSONObject.getString("version"));
                c4561l2.m35094c(jSONObject.getString("main"));
                JSONArray jSONArray = jSONObject.getJSONArray("resources");
                ArrayList arrayList = new ArrayList();
                if (jSONArray != null && jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        C4562a c4562a = new C4562a();
                        c4562a.m35087a(jSONObject2.getString("url"));
                        c4562a.m35085b(jSONObject2.getString("md5"));
                        c4562a.m35088a(jSONObject2.getInt("level"));
                        arrayList.add(c4562a);
                    }
                }
                c4561l2.m35099a(arrayList);
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            c4561l = null;
        }
        if (!c4561l2.m35091e()) {
            c4561l = null;
            return c4561l;
        }
        c4561l = c4561l2;
        return c4561l;
    }

    /* renamed from: d */
    public static C4561l m35092d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return m35098a(new JSONObject(str));
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public String m35101a() {
        return this.f16606a;
    }

    /* renamed from: a */
    public void m35100a(String str) {
        this.f16606a = str;
    }

    /* renamed from: a */
    public void m35099a(List<C4562a> list) {
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        this.f16609d = arrayList;
    }

    /* renamed from: b */
    public String m35097b() {
        return this.f16607b;
    }

    /* renamed from: b */
    public void m35096b(String str) {
        this.f16607b = str;
    }

    /* renamed from: c */
    public String m35095c() {
        return this.f16608c;
    }

    /* renamed from: c */
    public void m35094c(String str) {
        this.f16608c = str;
    }

    /* renamed from: d */
    public List<C4562a> m35093d() {
        if (this.f16609d == null) {
            this.f16609d = new ArrayList();
        }
        return this.f16609d;
    }

    /* renamed from: e */
    public boolean m35091e() {
        return (m35095c() == null || m35097b() == null || m35101a() == null) ? false : true;
    }

    /* renamed from: f */
    public String m35090f() {
        if (m35091e()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("name", m35101a());
                jSONObject.putOpt("version", m35097b());
                jSONObject.putOpt("main", m35095c());
                JSONArray jSONArray = new JSONArray();
                if (m35093d() != null) {
                    for (C4562a c4562a : m35093d()) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("url", c4562a.m35089a());
                        jSONObject2.putOpt("md5", c4562a.m35086b());
                        jSONObject2.putOpt("level", Integer.valueOf(c4562a.m35084c()));
                        jSONArray.put(jSONObject2);
                    }
                }
                jSONObject.putOpt("resources", jSONArray);
                return jSONObject.toString();
            } catch (Throwable th) {
                return null;
            }
        }
        return null;
    }
}
