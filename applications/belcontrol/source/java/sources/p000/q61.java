package p000;

import android.text.TextUtils;
import java.io.Serializable;
import org.json.JSONObject;
import p000.j91;
import p000.r71;
/* renamed from: q61 */
/* loaded from: classes3-dex2jar.jar:q61.class */
public class q61 implements u61 {

    /* renamed from: a */
    public C1613b f7704a = null;

    /* renamed from: q61$b */
    /* loaded from: classes3-dex2jar.jar:q61$b.class */
    public static final class C1613b implements Serializable {

        /* renamed from: a */
        public String f7705a;

        /* renamed from: b */
        public String f7706b;

        /* renamed from: c */
        public Long f7707c;

        /* renamed from: d */
        public String f7708d;

        /* renamed from: f */
        public String f7709f;

        public C1613b(JSONObject jSONObject) {
            JSONObject optJSONObject = jSONObject.optJSONObject("results");
            optJSONObject.optInt("max_values_of_callers");
            this.f7705a = optJSONObject.optString("callers_blocked");
            optJSONObject.optString("callers_could_be_blocked");
            this.f7706b = optJSONObject.optString("calltype_blocked");
            this.f7709f = optJSONObject.optString("calltype_category_blocked");
            this.f7707c = Long.valueOf(optJSONObject.optLong("reports"));
            this.f7708d = optJSONObject.optString("minutes");
        }
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m916b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String obj = jSONObject.get("results").toString();
            this.f7704a = new C1613b(jSONObject);
            if (TextUtils.isEmpty(obj)) {
                return;
            }
            r71.EnumC1638a.f7929W0.m681o(obj);
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to parse server response", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
        }
    }
}
