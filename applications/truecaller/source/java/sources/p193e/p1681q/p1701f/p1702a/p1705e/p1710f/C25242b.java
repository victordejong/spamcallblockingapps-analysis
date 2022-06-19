package p193e.p1681q.p1701f.p1702a.p1705e.p1710f;

import java.util.List;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.q.f.a.e.f.b */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/f/b.class */
public class C25242b {

    /* renamed from: a */
    public String f70601a;

    /* renamed from: b */
    public JSONObject f70602b;

    /* renamed from: c */
    public List<JSONObject> f70603c;

    /* renamed from: d */
    public String f70604d;

    public C25242b(String str, JSONObject jSONObject, List<JSONObject> list, String str2) {
        this.f70601a = str;
        this.f70602b = jSONObject;
        this.f70603c = list;
        this.f70604d = str2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[");
        m8728C.append(this.f70601a);
        m8728C.append("], attr: ");
        JSONObject jSONObject = this.f70602b;
        String str = jSONObject;
        if (jSONObject != null) {
            str = jSONObject.toString();
        }
        m8728C.append((Object) str);
        m8728C.append(", oper: ");
        List<JSONObject> list = this.f70603c;
        List<JSONObject> list2 = list;
        if (list != null) {
            list2 = list.toString();
        }
        m8728C.append(list2);
        m8728C.append(", nodeStr: ");
        m8728C.append(this.f70604d);
        return m8728C.toString();
    }
}
