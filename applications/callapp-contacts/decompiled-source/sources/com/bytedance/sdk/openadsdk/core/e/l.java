package com.bytedance.sdk.openadsdk.core.e;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private String f8913a;

    /* renamed from: b  reason: collision with root package name */
    private String f8914b;

    /* renamed from: c  reason: collision with root package name */
    private String f8915c;

    /* renamed from: d  reason: collision with root package name */
    private List<a> f8916d;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/l$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f8917a;

        /* renamed from: b  reason: collision with root package name */
        private String f8918b;

        /* renamed from: c  reason: collision with root package name */
        private int f8919c;

        public String a() {
            return this.f8917a;
        }

        public void a(int i) {
            this.f8919c = i;
        }

        public void a(String str) {
            this.f8917a = str;
        }

        public String b() {
            return this.f8918b;
        }

        public void b(String str) {
            this.f8918b = str;
        }

        public int c() {
            return this.f8919c;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return super.equals(obj);
            }
            String str = this.f8917a;
            return str != null && str.equals(((a) obj).a());
        }

        public int hashCode() {
            int i = this.f8919c;
            String str = this.f8917a;
            int i2 = i;
            if (str != null) {
                i2 = (i * 31) + str.hashCode();
            }
            String str2 = this.f8918b;
            int i3 = i2;
            if (str2 != null) {
                i3 = (i2 * 31) + str2.hashCode();
            }
            return i3;
        }
    }

    public static l a(JSONObject jSONObject) {
        l lVar;
        l lVar2;
        if (jSONObject == null) {
            return null;
        }
        try {
            lVar2 = new l();
            try {
                lVar2.a(jSONObject.getString("name"));
                lVar2.b(jSONObject.getString("version"));
                lVar2.c(jSONObject.getString("main"));
                JSONArray jSONArray = jSONObject.getJSONArray("resources");
                ArrayList arrayList = new ArrayList();
                if (jSONArray != null && jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        a aVar = new a();
                        aVar.a(jSONObject2.getString("url"));
                        aVar.b(jSONObject2.getString("md5"));
                        aVar.a(jSONObject2.getInt("level"));
                        arrayList.add(aVar);
                    }
                }
                lVar2.a(arrayList);
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            lVar = null;
        }
        if (!lVar2.e()) {
            lVar = null;
            return lVar;
        }
        lVar = lVar2;
        return lVar;
    }

    public static l d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return a(new JSONObject(str));
        } catch (Exception e) {
            return null;
        }
    }

    public String a() {
        return this.f8913a;
    }

    public void a(String str) {
        this.f8913a = str;
    }

    public void a(List<a> list) {
        List<a> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        this.f8916d = list2;
    }

    public String b() {
        return this.f8914b;
    }

    public void b(String str) {
        this.f8914b = str;
    }

    public String c() {
        return this.f8915c;
    }

    public void c(String str) {
        this.f8915c = str;
    }

    public List<a> d() {
        if (this.f8916d == null) {
            this.f8916d = new ArrayList();
        }
        return this.f8916d;
    }

    public boolean e() {
        return (c() == null || b() == null || a() == null) ? false : true;
    }

    public String f() {
        if (!e()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", a());
            jSONObject.putOpt("version", b());
            jSONObject.putOpt("main", c());
            JSONArray jSONArray = new JSONArray();
            if (d() != null) {
                for (a aVar : d()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", aVar.a());
                    jSONObject2.putOpt("md5", aVar.b());
                    jSONObject2.putOpt("level", Integer.valueOf(aVar.c()));
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            return jSONObject.toString();
        } catch (Throwable th) {
            return null;
        }
    }
}
