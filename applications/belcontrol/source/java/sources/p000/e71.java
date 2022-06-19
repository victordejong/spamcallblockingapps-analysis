package p000;

import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000.j91;
import p000.r71;
/* renamed from: e71 */
/* loaded from: classes3-dex2jar.jar:e71.class */
public class e71 implements u61 {

    /* renamed from: a */
    public JSONObject f6308a;

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        return new JSONObject();
    }

    /* renamed from: b */
    public void m2206b(String str) {
        try {
            this.f6308a = new JSONObject(str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        y81 y81Var = new y81();
        y81Var.m382c();
        y81Var.m380f();
        y81 y81Var2 = new y81();
        JSONArray optJSONArray = this.f6308a.optJSONArray("spam_list");
        if (optJSONArray == null) {
            y81Var.m378h(true);
            return;
        }
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                String string = optJSONArray.getString(i);
                if (!TextUtils.isEmpty(string)) {
                    y81Var2.m96E();
                    y81Var2.m95F(string);
                    if (y81Var2.f8724d <= 0) {
                        y81Var2.f8725f = string;
                        y81Var2.mo148z();
                    }
                }
            } catch (Throwable th) {
                j91.m1504l(this, "Unable to parse server response", th);
                j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            }
        }
        y81Var.m378h(true);
        r71.EnumC1638a.f7939b1.m682n(Long.valueOf(System.currentTimeMillis()));
    }
}
