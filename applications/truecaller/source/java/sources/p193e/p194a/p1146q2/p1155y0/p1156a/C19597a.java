package p193e.p194a.p1146q2.p1155y0.p1156a;

import android.os.Bundle;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17797w2;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.q2.y0.a.a */
/* loaded from: classes5-dex2jar.jar:e/a/q2/y0/a/a.class */
public final class C19597a implements AbstractC19549v {

    /* renamed from: d */
    public static final C19598a f54465d = new C19598a(null);

    /* renamed from: a */
    public final String f54466a;

    /* renamed from: b */
    public final String f54467b;

    /* renamed from: c */
    public final Map<String, Object> f54468c;

    /* renamed from: e.a.q2.y0.a.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/y0/a/a$a.class */
    public static final class C19598a {
        public C19598a() {
        }

        public C19598a(f fVar) {
        }

        /* renamed from: a */
        public static C19597a m13112a(C19598a c19598a, String str, String str2, String str3, Map map, int i) {
            if ((i & 4) != 0) {
                str3 = null;
            }
            Objects.requireNonNull(c19598a);
            l.e(str, "viewId");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (str3 != null) {
                String str4 = (String) linkedHashMap.put("Type", str3);
            }
            return new C19597a(str, null, linkedHashMap);
        }
    }

    public C19597a(String str, String str2, Map<String, ? extends Object> map) {
        l.e(str, "viewId");
        this.f54466a = str;
        this.f54467b = str2;
        this.f54468c = map;
    }

    /* renamed from: b */
    public static final C19597a m13114b(String str) {
        return C22128a.m8580q1(str, "viewId", str, null, null);
    }

    /* renamed from: c */
    public static final C19597a m13113c(String str, String str2) {
        return C22128a.m8580q1(str, "viewId", str, str2, null);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17797w2.f50592f;
        LinkedHashMap linkedHashMap = null;
        C17797w2.C17799b c17799b = new C17797w2.C17799b(null);
        l.d(c17799b, "builder");
        String str = this.f54466a;
        c17799b.validate(c17799b.fields()[2], str);
        c17799b.f50601a = str;
        c17799b.fieldSetFlags()[2] = true;
        String str2 = this.f54467b;
        c17799b.validate(c17799b.fields()[3], str2);
        c17799b.f50602b = str2;
        c17799b.fieldSetFlags()[3] = true;
        Map<String, Object> map = this.f54468c;
        if (map != null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(C25225a.m3942Y1(map.size()));
            Iterator<T> it = map.entrySet().iterator();
            while (true) {
                linkedHashMap = linkedHashMap2;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap2.put(entry.getKey(), entry.getValue().toString());
            }
        }
        c17799b.validate(c17799b.fields()[4], linkedHashMap);
        c17799b.f50603c = linkedHashMap;
        c17799b.fieldSetFlags()[4] = true;
        C17797w2 build = c17799b.build();
        l.d(build, "builder.build()");
        AbstractC19580x.C19584d c19584d = new AbstractC19580x.C19584d(build);
        Bundle bundle = new Bundle();
        bundle.putString("ViewId", this.f54466a);
        String str3 = this.f54467b;
        if (str3 != null) {
            bundle.putString("Context", str3);
        }
        Map<String, Object> map2 = this.f54468c;
        if (map2 != null) {
            for (Map.Entry<String, Object> entry2 : map2.entrySet()) {
                Object value = entry2.getValue();
                if (value instanceof Boolean) {
                    bundle.putBoolean(entry2.getKey(), ((Boolean) value).booleanValue());
                } else if (value instanceof Integer) {
                    bundle.putInt(entry2.getKey(), ((Number) value).intValue());
                } else if (value instanceof Float) {
                    bundle.putFloat(entry2.getKey(), ((Number) value).floatValue());
                } else if (value instanceof String) {
                    bundle.putString(entry2.getKey(), (String) value);
                } else {
                    bundle.putString(entry2.getKey(), value.toString());
                }
            }
        }
        return new AbstractC19580x.C19585e(i.z0(new AbstractC19580x[]{c19584d, new AbstractC19580x.C19582b("ViewVisited", bundle)}));
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19597a)) {
                return false;
            }
            C19597a c19597a = (C19597a) obj;
            return l.a(this.f54466a, c19597a.f54466a) && l.a(this.f54467b, c19597a.f54467b) && l.a(this.f54468c, c19597a.f54468c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f54466a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f54467b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Map<String, Object> map = this.f54468c;
        if (map != null) {
            i = map.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ViewVisitedEvent(viewId=");
        m8728C.append(this.f54466a);
        m8728C.append(", context=");
        m8728C.append(this.f54467b);
        m8728C.append(", attributes=");
        m8728C.append(this.f54468c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
