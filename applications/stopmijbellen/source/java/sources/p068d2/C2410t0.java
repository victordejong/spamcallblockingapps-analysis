package p068d2;

import android.support.p012v4.media.C0082b;
import org.json.JSONException;
/* renamed from: d2.t0 */
/* loaded from: classes-dex2jar.jar:d2/t0.class */
public class C2410t0 {

    /* renamed from: a */
    public String f8536a;

    /* renamed from: b */
    public C2267f4 f8537b;

    public C2410t0(C2267f4 c2267f4) {
        try {
            this.f8537b = c2267f4;
            this.f8536a = c2267f4.m3703i("m_type");
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON Error in ADCMessage constructor: ");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
        }
    }

    public C2410t0(String str, int i) {
        try {
            this.f8536a = str;
            C2267f4 c2267f4 = new C2267f4();
            this.f8537b = c2267f4;
            c2267f4.m3710b("m_target", i);
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON Error in ADCMessage constructor: ");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
        }
    }

    public C2410t0(String str, int i, C2267f4 c2267f4) {
        try {
            this.f8536a = str;
            C2267f4 c2267f42 = c2267f4 == null ? new C2267f4() : c2267f4;
            this.f8537b = c2267f42;
            c2267f42.m3710b("m_target", i);
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON Error in ADCMessage constructor: ");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
        }
    }

    /* renamed from: a */
    public C2410t0 m3587a(C2267f4 c2267f4) {
        try {
            C2410t0 c2410t0 = new C2410t0("reply", this.f8537b.m3706f("m_origin"), c2267f4);
            c2410t0.f8537b.m3710b("m_id", this.f8537b.m3706f("m_id"));
            return c2410t0;
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON error in ADCMessage's createReply(): ");
            m8752j.append(e.toString());
            C2408t.m3591d().m3718p().m3686e(0, 0, m8752j.toString(), true);
            return new C2410t0("JSONException", 0);
        }
    }

    /* renamed from: b */
    public void m3586b() {
        String str = this.f8536a;
        C2267f4 c2267f4 = this.f8537b;
        C2267f4 c2267f42 = c2267f4;
        if (c2267f4 == null) {
            c2267f42 = new C2267f4();
        }
        C2227e4.m3744i(c2267f42, "m_type", str);
        C2408t.m3591d().m3717q().m3574f(c2267f42);
    }
}
