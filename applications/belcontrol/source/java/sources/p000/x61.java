package p000;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import p000.j91;
/* renamed from: x61 */
/* loaded from: classes3-dex2jar.jar:x61.class */
public class x61 implements u61 {

    /* renamed from: a */
    public ArrayList<C1719a> f8606a = new ArrayList<>();

    /* renamed from: b */
    public String f8607b = null;

    /* renamed from: x61$a */
    /* loaded from: classes3-dex2jar.jar:x61$a.class */
    public static final class C1719a implements Serializable {

        /* renamed from: a */
        public String f8608a;

        /* renamed from: b */
        public String f8609b;

        /* renamed from: c */
        public long f8610c;

        public C1719a(JSONObject jSONObject) {
            this.f8608a = jSONObject.optString("name");
            this.f8609b = jSONObject.optString("id");
            this.f8610c = jSONObject.optLong("last_date");
        }
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            String str = this.f8607b;
            if (str != null) {
                jSONObject.put("device_id", str);
            }
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m171b(String str) {
        this.f8606a.clear();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray optJSONArray = new JSONObject(str).optJSONArray("devices");
            if (optJSONArray == null) {
                return;
            }
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                this.f8606a.add(new C1719a(optJSONArray.optJSONObject(i)));
            }
        } catch (Throwable th) {
            j91.m1505k(this, "Unable to get devices.");
        }
    }
}
