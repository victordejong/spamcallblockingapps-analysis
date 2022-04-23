package p131c.p135b.p136a.p148e;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* renamed from: c.b.a.e.o */
/* loaded from: classes-dex2jar.jar:c/b/a/e/o.class */
public class C2354o {

    /* renamed from: b */
    public final String f9153b;

    /* renamed from: c */
    public final Map<String, Object> f9154c;

    /* renamed from: a */
    public final String f9152a = UUID.randomUUID().toString();

    /* renamed from: d */
    public final long f9155d = System.currentTimeMillis();

    public C2354o(String str, Map<String, String> map, Map<String, Object> map2) {
        this.f9153b = str;
        HashMap hashMap = new HashMap();
        this.f9154c = hashMap;
        hashMap.putAll(map);
        this.f9154c.put("applovin_sdk_super_properties", map2);
    }

    /* renamed from: a */
    public String m30199a() {
        return this.f9153b;
    }

    /* renamed from: b */
    public Map<String, Object> m30198b() {
        return this.f9154c;
    }

    /* renamed from: c */
    public long m30197c() {
        return this.f9155d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2354o.class != obj.getClass()) {
            return false;
        }
        C2354o oVar = (C2354o) obj;
        if (this.f9155d != oVar.f9155d) {
            return false;
        }
        String str = this.f9153b;
        if (str != null) {
            if (!str.equals(oVar.f9153b)) {
                return false;
            }
        } else if (oVar.f9153b != null) {
            return false;
        }
        Map<String, Object> map = this.f9154c;
        if (map != null) {
            if (!map.equals(oVar.f9154c)) {
                return false;
            }
        } else if (oVar.f9154c != null) {
            return false;
        }
        String str2 = this.f9152a;
        String str3 = oVar.f9152a;
        if (str2 == null ? str3 != null : !str2.equals(str3)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f9153b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, Object> map = this.f9154c;
        int hashCode2 = map != null ? map.hashCode() : 0;
        long j = this.f9155d;
        int i2 = (int) (j ^ (j >>> 32));
        String str2 = this.f9152a;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public String toString() {
        return "Event{name='" + this.f9153b + "', id='" + this.f9152a + "', creationTimestampMillis=" + this.f9155d + ", parameters=" + this.f9154c + '}';
    }
}
