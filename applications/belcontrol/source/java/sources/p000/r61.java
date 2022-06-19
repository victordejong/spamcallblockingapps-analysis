package p000;

import android.text.TextUtils;
import com.google.android.gms.common.Scopes;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;
import p000.j91;
/* renamed from: r61 */
/* loaded from: classes3-dex2jar.jar:r61.class */
public class r61 implements u61 {

    /* renamed from: a */
    public JSONObject f7865a = new JSONObject();

    /* renamed from: b */
    public C1637c f7866b = null;

    /* renamed from: r61$b */
    /* loaded from: classes3-dex2jar.jar:r61$b.class */
    public enum EnumC1636b {
        LOGIN(1),
        REGISTER(2),
        PASSWORD_RECOVERY(3),
        REASSIGN(4);
        

        /* renamed from: a */
        public int f7872a;

        EnumC1636b(int i) {
            this.f7872a = i;
        }

        /* renamed from: a */
        public int m736a() {
            return this.f7872a;
        }
    }

    /* renamed from: r61$c */
    /* loaded from: classes3-dex2jar.jar:r61$c.class */
    public static final class C1637c implements Serializable {

        /* renamed from: a */
        public String f7873a;

        public C1637c(JSONObject jSONObject) {
            this.f7873a = jSONObject.optString(Scopes.EMAIL);
            jSONObject.optInt("account_type");
        }
    }

    public r61(int i, String[] strArr, String str, EnumC1636b enumC1636b) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("accounts", new JSONArray((Collection) Arrays.asList(strArr)));
            jSONObject.put("service_id", i);
            jSONObject.put("token", str);
            jSONObject.put(Constants.INTENT_SCHEME, enumC1636b.m736a());
            this.f7865a.put("social", jSONObject);
        } catch (Throwable th) {
        }
    }

    public r61(String str, String str2, EnumC1636b enumC1636b) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Scopes.EMAIL, str);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("password", str2);
            }
            jSONObject.put(Constants.INTENT_SCHEME, enumC1636b.m736a());
            this.f7865a.put(AdType.CUSTOM, jSONObject);
        } catch (Throwable th) {
        }
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            this.f7865a.put("security", r71.m702t());
            JSONArray jSONArray = new JSONArray();
            int m5724j = b91.m5724j();
            for (int i = 0; i < m5724j; i++) {
                JSONObject jSONObject = new JSONObject();
                i91 m5721m = b91.m5721m(i);
                if (m5721m != null && !m5721m.m1597q() && !m5721m.m1595s() && !m5721m.m1600n()) {
                    jSONObject.put(m5721m.m1612b(), m5721m.m1605i());
                    jSONArray.put(jSONObject);
                }
            }
            this.f7865a.put("phone_number", jSONArray);
            String str = "ConnectPackage: " + this.f7865a.toString();
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return this.f7865a;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to build request", th);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m737b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f7866b = new C1637c(new JSONObject(str).optJSONObject("account"));
        } catch (Throwable th) {
            j91.m1505k(this, "Unable to get result.");
        }
    }
}
