package p000;

import org.json.JSONObject;
import p000.j91;
import p000.r71;
/* renamed from: o61 */
/* loaded from: classes3-dex2jar.jar:o61.class */
public class o61 implements u61 {
    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", b91.m5726h(true));
            jSONObject2.put("imei", r71.EnumC1638a.f7891D0.m687i());
            jSONObject.put("device", jSONObject2);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m1159b(String str) {
    }
}
