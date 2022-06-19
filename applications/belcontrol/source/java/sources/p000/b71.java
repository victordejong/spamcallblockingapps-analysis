package p000;

import android.text.TextUtils;
import com.mopub.network.ImpressionData;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000.j91;
import p000.u81;
/* renamed from: b71 */
/* loaded from: classes3-dex2jar.jar:b71.class */
public class b71 implements u61 {

    /* renamed from: b */
    public i91 f1815b;

    /* renamed from: c */
    public String f1816c;

    /* renamed from: d */
    public String f1817d;

    /* renamed from: e */
    public String f1818e;

    /* renamed from: g */
    public boolean f1820g;

    /* renamed from: a */
    public JSONArray f1814a = new JSONArray();

    /* renamed from: f */
    public int f1819f = -1;

    public b71(i91 i91Var) {
        this.f1815b = i91Var;
    }

    public b71(i91 i91Var, String str, String str2, String str3) {
        this.f1815b = i91Var;
        this.f1816c = str;
        this.f1817d = str2;
        this.f1818e = str3;
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        m5761c();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("phone_number", this.f1814a);
            if (!TextUtils.isEmpty(this.f1816c)) {
                jSONObject.put("text", ka1.m1407q(this.f1816c, 65535));
            }
            if (!TextUtils.isEmpty(this.f1817d)) {
                jSONObject.put("call_type", this.f1817d);
            }
            if (!TextUtils.isEmpty(this.f1818e)) {
                jSONObject.put("caller", ka1.m1407q(this.f1818e, 255));
            }
            int i = this.f1819f;
            if (i > -1) {
                jSONObject.put("spam", i);
            }
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m5762b(String str) {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"));
        String str2 = "Server JSON: " + str;
        if (TextUtils.isEmpty(str)) {
            this.f1820g = true;
        }
        if (!TextUtils.isEmpty(this.f1818e)) {
            u81 u81Var = new u81();
            u81Var.m413F(this.f1815b, null);
            u81Var.m412G(this.f1815b, this.f1818e, u81.EnumC1675a.OVERRIDE_USER);
            u81Var.mo148z();
        }
        j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
    }

    /* renamed from: c */
    public final void m5761c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("phone_number", this.f1815b.toString());
            jSONObject.put(ImpressionData.COUNTRY, this.f1815b.m1612b());
            this.f1814a.put(jSONObject);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
        }
    }
}
