package p000;

import com.android.internal.telephony.PhoneConstants;
import org.json.JSONObject;
import p000.fa1;
import p000.i91;
/* renamed from: ea1 */
/* loaded from: classes3-dex2jar.jar:ea1.class */
public class ea1 {

    /* renamed from: a */
    public boolean f6314a = false;

    /* renamed from: b */
    public i91 f6315b = null;

    /* renamed from: c */
    public int f6316c = 4;

    /* renamed from: d */
    public i91.EnumC1446b f6317d = i91.EnumC1446b.FULL;

    /* renamed from: a */
    public boolean m2187a(i91 i91Var) {
        if (this.f6315b == null || i91Var == null || !this.f6314a) {
            return false;
        }
        return i91Var.toString().replaceAll("\\D+", "").startsWith(this.f6315b.m1607g(this.f6317d).replaceAll("\\D+", ""));
    }

    /* renamed from: b */
    public void m2186b(String str) {
        synchronized (this) {
            this.f6314a = false;
            this.f6315b = null;
            if (str.isEmpty()) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            m2184d(fa1.C1420e.m1800o(jSONObject.optString("number", "")));
            this.f6316c = jSONObject.optInt("maskDigits", 4);
            i91 i91Var = this.f6315b;
            if (i91Var != null && !i91Var.m1595s() && !this.f6315b.m1597q() && !this.f6315b.m1600n() && !this.f6315b.m1599o() && this.f6315b.toString().length() > this.f6316c) {
                this.f6314a = jSONObject.optBoolean("isEnabled", false);
            }
        }
    }

    /* renamed from: c */
    public String m2185c() {
        String m1607g;
        synchronized (this) {
            i91 i91Var = this.f6315b;
            m1607g = i91Var == null ? "" : i91Var.m1607g(this.f6317d);
        }
        return m1607g;
    }

    /* renamed from: d */
    public void m2184d(i91 i91Var) {
        synchronized (this) {
            this.f6315b = i91Var;
            if (i91Var != null && !i91Var.m1595s() && !this.f6315b.m1597q() && !this.f6315b.m1600n() && !this.f6315b.m1599o() && this.f6315b.toString().length() > this.f6316c) {
                if (!this.f6315b.m1594t() || this.f6315b.m1596r()) {
                    this.f6317d = i91.EnumC1446b.ARBITRARY;
                    i91 i91Var2 = this.f6315b;
                    i91Var2.m1591w(this.f6315b.toString().substring(0, this.f6315b.toString().length() - this.f6316c) + PhoneConstants.APN_TYPE_ALL);
                } else {
                    this.f6317d = i91.EnumC1446b.PARTIAL;
                }
                return;
            }
            this.f6315b = null;
            this.f6317d = i91.EnumC1446b.FULL;
            this.f6314a = false;
        }
    }

    /* renamed from: e */
    public String m2183e() {
        String jSONObject;
        synchronized (this) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                i91 i91Var = this.f6315b;
                if (i91Var != null) {
                    jSONObject2.put("number", i91Var.toString());
                }
                jSONObject2.put("maskDigits", this.f6316c);
                jSONObject2.put("isEnabled", this.f6314a);
                jSONObject = jSONObject2.toString();
            } catch (Throwable th) {
                j91.m1505k(this, "Error saving option");
                return "";
            }
        }
        return jSONObject;
    }
}
