package p000;

import android.text.TextUtils;
import com.mopub.network.ImpressionData;
import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import p000.fa1;
import p000.j91;
import p000.r71;
import p000.u81;
/* renamed from: d71 */
/* loaded from: classes3-dex2jar.jar:d71.class */
public class d71 implements u61 {

    /* renamed from: a */
    public HashMap<String, C1280b> f5783a = new HashMap<>();

    /* renamed from: b */
    public JSONArray f5784b = new JSONArray();

    /* renamed from: d71$b */
    /* loaded from: classes3-dex2jar.jar:d71$b.class */
    public static final class C1280b implements Serializable {

        /* renamed from: a */
        public String f5785a;

        /* renamed from: b */
        public int f5786b;

        /* renamed from: c */
        public String f5787c;

        /* renamed from: d */
        public String f5788d;

        /* renamed from: f */
        public String f5789f;

        /* renamed from: g */
        public int f5790g;

        public C1280b(JSONObject jSONObject, boolean z) {
            String str;
            this.f5785a = jSONObject.isNull("phone_number") ? "" : jSONObject.optString("phone_number");
            this.f5786b = jSONObject.optInt("spam_level");
            if (z) {
                u81 u81Var = new u81();
                u81Var.m413F(fa1.C1420e.m1800o(this.f5785a), jSONObject.optString("caller_name"));
                str = u81Var.f8288d;
            } else {
                str = jSONObject.optString("caller_name");
            }
            this.f5787c = str;
            this.f5788d = jSONObject.isNull("caller_type") ? "" : jSONObject.optString("caller_type");
            this.f5790g = jSONObject.optInt("caller_type_id", -1);
            this.f5789f = jSONObject.optString("location");
        }

        /* renamed from: a */
        public static C1280b m2786a() {
            return new C1280b(new JSONObject(), false);
        }
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("phone_number", this.f5784b);
            jSONObject.put("instant", false);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m2788b(i91 i91Var, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("phone_number", i91Var.toString());
            jSONObject.put(ImpressionData.COUNTRY, i91Var.m1612b());
            jSONObject.put("called", z ? 1 : 0);
            this.f5784b.put(jSONObject);
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to add number", th);
        }
    }

    /* renamed from: c */
    public void m2787c(String str) {
        JSONObject jSONObject;
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"));
        if (TextUtils.isEmpty(str)) {
            j91.m1505k(this, "Empty response");
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            return;
        }
        String str2 = "Server JSON: " + str;
        try {
            jSONObject = new JSONObject(str);
        } catch (Throwable th) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("results", new JSONArray(str));
                jSONObject = jSONObject2;
            } catch (Throwable th2) {
                j91.m1504l(this, "Unable to parse response", th2);
                j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
                return;
            }
        }
        r71.EnumC1638a.f7941c1.m683m(Integer.valueOf(jSONObject.optInt("credits")));
        this.f5783a.clear();
        JSONArray optJSONArray = jSONObject.optJSONArray("results");
        if (optJSONArray == null) {
            j91.m1505k(this, "Unable to get results. Seems like returned no 'results'");
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            return;
        }
        u81 u81Var = new u81();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            C1280b c1280b = new C1280b(optJSONArray.optJSONObject(i), mo385d());
            i91 m1800o = fa1.C1420e.m1800o(c1280b.f5785a);
            u81Var.m413F(m1800o, null);
            if (!TextUtils.isEmpty(c1280b.f5787c)) {
                u81.EnumC1675a enumC1675a = u81Var.f8289f;
                u81.EnumC1675a enumC1675a2 = u81.EnumC1675a.OVERRIDE_AUTO;
                if (enumC1675a == enumC1675a2) {
                    u81Var.m412G(m1800o, c1280b.f5787c, enumC1675a2);
                    u81Var.mo148z();
                    z91.m41r(m1800o, c1280b.f5787c);
                }
            }
            u81Var.m414E();
            this.f5783a.put(c1280b.f5785a, c1280b);
        }
        j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), true);
    }

    /* renamed from: d */
    public boolean mo385d() {
        return false;
    }
}
