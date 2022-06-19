package p000;

import android.text.TextUtils;
import com.mopub.network.ImpressionData;
import java.io.Serializable;
import org.json.JSONObject;
import p000.fa1;
import p000.j91;
import p000.u81;
/* renamed from: n61 */
/* loaded from: classes3-dex2jar.jar:n61.class */
public class n61 implements u61 {

    /* renamed from: a */
    public JSONObject f7041a = new JSONObject();

    /* renamed from: b */
    public C1483b f7042b;

    /* renamed from: n61$b */
    /* loaded from: classes3-dex2jar.jar:n61$b.class */
    public static final class C1483b implements Serializable {

        /* renamed from: a */
        public String f7043a;

        /* renamed from: b */
        public String f7044b;

        /* renamed from: c */
        public String f7045c;

        /* renamed from: d */
        public int f7046d;

        /* renamed from: f */
        public int f7047f;

        /* renamed from: g */
        public int f7048g;

        public C1483b(JSONObject jSONObject) {
            this.f7043a = jSONObject.optString("phone_number");
            u81 u81Var = new u81();
            u81Var.m413F(fa1.C1420e.m1800o(this.f7043a), jSONObject.optString("caller_name"));
            this.f7044b = u81Var.f8288d;
            this.f7045c = jSONObject.optString("location");
            this.f7046d = jSONObject.optInt("spam_level");
            this.f7047f = jSONObject.optInt("spam_likely");
            this.f7048g = jSONObject.optInt("caller_type_id");
        }
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("phone_number", this.f7041a);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m1228b(i91 i91Var) {
        try {
            this.f7041a.put("phone_number", i91Var.toString());
            this.f7041a.put(ImpressionData.COUNTRY, i91Var.m1612b());
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to add number", th);
        }
    }

    /* renamed from: c */
    public void m1227c(String str) {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"));
        if (TextUtils.isEmpty(str)) {
            j91.m1505k(this, "Empty response");
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            return;
        }
        String str2 = "Server JSON: " + str;
        try {
            this.f7042b = new C1483b(new JSONObject(str));
            u81 u81Var = new u81();
            i91 m1800o = fa1.C1420e.m1800o(this.f7042b.f7043a);
            u81Var.m413F(m1800o, null);
            if (u81Var.f8288d == null && !TextUtils.isEmpty(this.f7042b.f7044b)) {
                u81Var.m412G(m1800o, this.f7042b.f7044b, u81.EnumC1675a.OVERRIDE_AUTO);
                u81Var.mo148z();
            }
            u81Var.m414E();
            if (this.f7042b.f7046d > 0) {
                o81 o81Var = new o81();
                o81Var.m1140I(m1800o.toString(), false);
                if (o81Var.m1139K() == null) {
                    o81Var.m1136N(m1800o);
                    o81Var.f7166d = this.f7042b.f7048g;
                    o81Var.mo148z();
                }
            }
            new m81().m1288E(m1800o);
            m81 m81Var = new m81();
            m81Var.m1285H(m1800o);
            m81Var.m1282K(m1800o);
            C1483b c1483b = this.f7042b;
            m81Var.f6967f = c1483b.f7044b;
            m81Var.f6968g = c1483b.f7045c;
            m81Var.f6970j = c1483b.f7047f;
            m81Var.f6969h = c1483b.f7046d;
            m81Var.f6971k = c1483b.f7048g;
            m81Var.mo148z();
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), true);
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to parse response", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
        }
    }

    /* renamed from: d */
    public C1483b m1226d() {
        return this.f7042b;
    }
}
