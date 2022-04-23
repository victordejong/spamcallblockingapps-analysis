package p131c.p161d.p282e.p352w.p353o;

import java.util.Date;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.d.e.w.o.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/f.class */
public class C6087f {

    /* renamed from: f */
    public static final Date f19552f = new Date(0);

    /* renamed from: a */
    public JSONObject f19553a;

    /* renamed from: b */
    public JSONObject f19554b;

    /* renamed from: c */
    public Date f19555c;

    /* renamed from: d */
    public JSONArray f19556d;

    /* renamed from: e */
    public JSONObject f19557e;

    /* renamed from: c.d.e.w.o.f$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/w/o/f$b.class */
    public static class C6089b {

        /* renamed from: a */
        public JSONObject f19558a;

        /* renamed from: b */
        public Date f19559b;

        /* renamed from: c */
        public JSONArray f19560c;

        /* renamed from: d */
        public JSONObject f19561d;

        public C6089b() {
            this.f19558a = new JSONObject();
            this.f19559b = C6087f.f19552f;
            this.f19560c = new JSONArray();
            this.f19561d = new JSONObject();
        }

        /* renamed from: a */
        public C6089b m22085a(Date date) {
            this.f19559b = date;
            return this;
        }

        /* renamed from: a */
        public C6089b m22084a(Map<String, String> map) {
            this.f19558a = new JSONObject(map);
            return this;
        }

        /* renamed from: a */
        public C6089b m22083a(JSONArray jSONArray) {
            try {
                this.f19560c = new JSONArray(jSONArray.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        /* renamed from: a */
        public C6089b m22082a(JSONObject jSONObject) {
            try {
                this.f19558a = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }

        /* renamed from: a */
        public C6087f m22086a() throws JSONException {
            return new C6087f(this.f19558a, this.f19559b, this.f19560c, this.f19561d);
        }

        /* renamed from: b */
        public C6089b m22081b(JSONObject jSONObject) {
            try {
                this.f19561d = new JSONObject(jSONObject.toString());
            } catch (JSONException e) {
            }
            return this;
        }
    }

    public C6087f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.f19554b = jSONObject;
        this.f19555c = date;
        this.f19556d = jSONArray;
        this.f19557e = jSONObject2;
        this.f19553a = jSONObject3;
    }

    /* renamed from: a */
    public static C6087f m22092a(JSONObject jSONObject) throws JSONException {
        return new C6087f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject.getJSONObject("personalization_metadata_key"));
    }

    /* renamed from: f */
    public static C6089b m22087f() {
        return new C6089b();
    }

    /* renamed from: a */
    public JSONArray m22093a() {
        return this.f19556d;
    }

    /* renamed from: b */
    public JSONObject m22091b() {
        return this.f19554b;
    }

    /* renamed from: c */
    public Date m22090c() {
        return this.f19555c;
    }

    /* renamed from: d */
    public JSONObject m22089d() {
        return this.f19557e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6087f)) {
            return false;
        }
        return this.f19553a.toString().equals(((C6087f) obj).toString());
    }

    public int hashCode() {
        return this.f19553a.hashCode();
    }

    public String toString() {
        return this.f19553a.toString();
    }
}
