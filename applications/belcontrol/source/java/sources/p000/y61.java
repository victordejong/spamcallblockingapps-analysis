package p000;

import android.text.TextUtils;
import org.json.JSONObject;
import p000.j91;
import p000.r71;
/* renamed from: y61 */
/* loaded from: classes3-dex2jar.jar:y61.class */
public class y61 implements u61 {

    /* renamed from: a */
    public v81 f8706a;

    public y61(v81 v81Var) {
        this.f8706a = v81Var;
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("product", this.f8706a.f8341f);
            jSONObject.put("transactionId", this.f8706a.f8340d);
            jSONObject.put("purchase_json", this.f8706a.f8342g);
            jSONObject.put("signature", this.f8706a.f8343h);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m99b(String str) {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"));
        if (!TextUtils.isEmpty(str)) {
            String str2 = "Server JSON: " + str;
            try {
                r71.EnumC1638a.f7941c1.m683m(Integer.valueOf(new JSONObject(str).optInt("credits")));
            } catch (Throwable th) {
                j91.m1504l(this, "Unable to parse response", th);
            }
        }
        j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
    }
}
