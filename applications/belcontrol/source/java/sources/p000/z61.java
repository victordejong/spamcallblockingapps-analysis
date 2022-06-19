package p000;

import android.net.Uri;
import com.google.android.gms.common.internal.ImagesContract;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000.fa1;
import p000.j91;
import p000.w81;
/* renamed from: z61 */
/* loaded from: classes3-dex2jar.jar:z61.class */
public class z61 implements u61 {

    /* renamed from: a */
    public JSONObject f8743a;

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("amount", 20);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m72b(String str) {
        try {
            this.f8743a = new JSONObject(str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        w81 w81Var = new w81();
        w81Var.m382c();
        w81Var.m380f();
        m71c("community_activity", w81.EnumC1706a.COMMUNITY_ACTIVITY);
        m71c("recent_reports", w81.EnumC1706a.RECENT_REPORTS);
        m71c("user_activity", w81.EnumC1706a.USER_ACTIVITY);
        w81Var.m378h(true);
    }

    /* renamed from: c */
    public final void m71c(String str, w81.EnumC1706a enumC1706a) {
        w81 w81Var = new w81();
        JSONArray optJSONArray = this.f8743a.optJSONArray(str);
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                JSONObject jSONObject = optJSONArray.getJSONObject(i);
                w81Var.m281E();
                w81Var.f8459p = jSONObject.optLong("created");
                w81Var.f8453j = jSONObject.optString("type");
                w81Var.f8460q = enumC1706a;
                w81Var.f8451g = jSONObject.optString("reporter");
                w81Var.f8452h = w81.EnumC1707b.values()[jSONObject.optInt("reporter_type")];
                w81Var.f8454k = jSONObject.optString("caller");
                w81Var.f8455l = jSONObject.optString("call_type");
                w81Var.f8450f = fa1.C1420e.m1800o(jSONObject.optString("phone_number"));
                w81Var.f8456m = jSONObject.getInt("spam_level");
                w81Var.f8457n = Uri.parse(jSONObject.optString("avatar"));
                w81Var.f8458o = Uri.parse(jSONObject.optString(ImagesContract.URL));
                w81Var.mo148z();
            } catch (Throwable th) {
                j91.m1504l(this, "Unable to parse server response", th);
                j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            }
        }
    }
}
