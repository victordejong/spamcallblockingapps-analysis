package p222r6;

import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r6.e */
/* loaded from: classes-dex2jar.jar:r6/e.class */
public class C4221e {

    /* renamed from: f */
    public static final Date f13217f = new Date(0);

    /* renamed from: a */
    public JSONObject f13218a;

    /* renamed from: b */
    public JSONObject f13219b;

    /* renamed from: c */
    public Date f13220c;

    /* renamed from: d */
    public JSONArray f13221d;

    /* renamed from: e */
    public JSONObject f13222e;

    public C4221e(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.f13219b = jSONObject;
        this.f13220c = date;
        this.f13221d = jSONArray;
        this.f13222e = jSONObject2;
        this.f13218a = jSONObject3;
    }

    /* renamed from: a */
    public static C4221e m1282a(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        JSONObject jSONObject2 = optJSONObject;
        if (optJSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        return new C4221e(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4221e) {
            return this.f13218a.toString().equals(((C4221e) obj).toString());
        }
        return false;
    }

    public int hashCode() {
        return this.f13218a.hashCode();
    }

    public String toString() {
        return this.f13218a.toString();
    }
}
