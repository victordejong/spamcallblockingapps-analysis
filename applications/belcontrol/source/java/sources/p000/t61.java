package p000;

import org.json.JSONArray;
import org.json.JSONObject;
import p000.r71;
/* renamed from: t61 */
/* loaded from: classes3-dex2jar.jar:t61.class */
public class t61 implements u61 {

    /* renamed from: a */
    public long f8146a = k61.m1445q();

    /* renamed from: b */
    public JSONObject f8147b;

    /* renamed from: c */
    public JSONArray f8148c;

    /* renamed from: d */
    public long f8149d;

    public t61() {
        this.f8147b = null;
        this.f8148c = null;
        this.f8149d = 0L;
        this.f8147b = new JSONObject();
        this.f8148c = new JSONArray();
        try {
            JSONArray jSONArray = new JSONArray();
            int m5724j = b91.m5724j();
            for (int i = 0; i < m5724j; i++) {
                jSONArray.put(b91.m5723k(i));
            }
            this.f8147b.put("countries", jSONArray);
            this.f8147b.put("data", this.f8148c);
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to make request!", th);
        }
        this.f8146a += this.f8147b.toString().getBytes().length;
        this.f8149d = m554c("", "").toString().getBytes().length;
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        return this.f8148c.length() > 0 ? this.f8147b : null;
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* renamed from: b */
    public boolean m555b(q81 q81Var) {
        int m691e = r71.EnumC1638a.f7969m1.m691e();
        if (m691e < 0) {
            return false;
        }
        String str = q81Var.f7779f;
        if (str == null || str.isEmpty()) {
            return true;
        }
        long length = q81Var.f7779f.getBytes().length;
        String[] m866f0 = q81Var.m866f0();
        if (m866f0.length == 0) {
            return true;
        }
        if (m691e > 0 && this.f8148c.length() + m866f0.length > m691e) {
            return false;
        }
        char c = 0;
        for (String str2 : m866f0) {
            c += str2.getBytes().length + length + this.f8149d;
        }
        long m689g = r71.EnumC1638a.f7972n1.m689g();
        if (m689g > 0 && this.f8146a + c > m689g) {
            return false;
        }
        for (String str3 : m866f0) {
            JSONObject m554c = m554c(str3, q81Var.f7779f);
            this.f8146a += str3.getBytes().length + length + this.f8149d;
            if (m554c != null) {
                this.f8148c.put(m554c);
            }
        }
        return true;
    }

    /* renamed from: c */
    public final JSONObject m554c(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("phone_number", str);
            jSONObject.put("name", str2);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1504l(this, "Unable to create entry", th);
            return null;
        }
    }
}
