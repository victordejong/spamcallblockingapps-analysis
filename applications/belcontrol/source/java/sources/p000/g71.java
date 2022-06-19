package p000;

import org.json.JSONObject;
import p000.j91;
/* renamed from: g71 */
/* loaded from: classes3-dex2jar.jar:g71.class */
public class g71 implements u61 {

    /* renamed from: a */
    public String f6689a = null;

    /* renamed from: b */
    public JSONObject f6690b = null;

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", this.f6689a);
            JSONObject jSONObject2 = this.f6690b;
            if (jSONObject2 != null) {
                jSONObject.put("params", jSONObject2);
            }
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }
}
