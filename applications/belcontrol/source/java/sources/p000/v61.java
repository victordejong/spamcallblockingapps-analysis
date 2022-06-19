package p000;

import org.json.JSONObject;
import p000.j91;
/* renamed from: v61 */
/* loaded from: classes3-dex2jar.jar:v61.class */
public class v61 extends d71 {
    @Override // p000.d71, p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("phone_number", this.f5784b);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    @Override // p000.d71
    /* renamed from: d */
    public boolean mo385d() {
        return true;
    }
}
