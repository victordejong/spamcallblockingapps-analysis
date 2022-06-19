package p193e.p1485h.p1486a.p1493c.p1496l0;

import org.json.JSONArray;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22746b;
/* renamed from: e.h.a.c.l0.d */
/* loaded from: classes-dex2jar.jar:e/h/a/c/l0/d.class */
public final class C22750d {

    /* renamed from: a */
    public JSONArray f63013a;

    /* renamed from: b */
    public String f63014b;

    /* renamed from: c */
    public C22746b.EnumC22748b f63015c;

    /* renamed from: a */
    public Boolean m7816a() {
        JSONArray jSONArray;
        return Boolean.valueOf(this.f63014b == null || (jSONArray = this.f63013a) == null || jSONArray.length() <= 0);
    }

    public String toString() {
        String str;
        if (m7816a().booleanValue()) {
            StringBuilder m8728C = C22128a.m8728C("tableName: ");
            m8728C.append(this.f63015c);
            m8728C.append(" | numItems: 0");
            str = m8728C.toString();
        } else {
            StringBuilder m8728C2 = C22128a.m8728C("tableName: ");
            m8728C2.append(this.f63015c);
            m8728C2.append(" | lastId: ");
            m8728C2.append(this.f63014b);
            m8728C2.append(" | numItems: ");
            m8728C2.append(this.f63013a.length());
            m8728C2.append(" | items: ");
            m8728C2.append(this.f63013a.toString());
            str = m8728C2.toString();
        }
        return str;
    }
}
