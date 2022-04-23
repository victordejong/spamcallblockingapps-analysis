package p131c.p135b.p136a.p137a;

import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2429t;
/* renamed from: c.b.a.a.c */
/* loaded from: classes-dex2jar.jar:c/b/a/a/c.class */
public class C2033c {

    /* renamed from: a */
    public String f7933a;

    /* renamed from: b */
    public String f7934b;

    /* renamed from: a */
    public static C2033c m31232a(C2429t tVar, C2033c cVar, C2341l lVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("No node specified.");
        } else if (lVar != null) {
            if (cVar == null) {
                try {
                    cVar = new C2033c();
                } catch (Throwable th) {
                    lVar.m30262d0().m30043b("VastSystemInfo", "Error occurred while initializing", th);
                    return null;
                }
            }
            if (!C2422o.m29851b(cVar.f7933a)) {
                String c = tVar.m29762c();
                if (C2422o.m29851b(c)) {
                    cVar.f7933a = c;
                }
            }
            if (!C2422o.m29851b(cVar.f7934b)) {
                String str = tVar.m29764b().get("version");
                if (C2422o.m29851b(str)) {
                    cVar.f7934b = str;
                }
            }
            return cVar;
        } else {
            throw new IllegalArgumentException("No sdk specified.");
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2033c)) {
            return false;
        }
        C2033c cVar = (C2033c) obj;
        String str = this.f7933a;
        if (str != null) {
            if (!str.equals(cVar.f7933a)) {
                return false;
            }
        } else if (cVar.f7933a != null) {
            return false;
        }
        String str2 = this.f7934b;
        String str3 = cVar.f7934b;
        if (str2 != null) {
            z = str2.equals(str3);
        } else if (str3 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f7933a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f7934b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "VastSystemInfo{name='" + this.f7933a + "', version='" + this.f7934b + "'}";
    }
}
