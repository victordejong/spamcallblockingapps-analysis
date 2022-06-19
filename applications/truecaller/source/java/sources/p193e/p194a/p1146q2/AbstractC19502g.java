package p193e.p194a.p1146q2;

import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.q2.g */
/* loaded from: classes4-dex2jar.jar:e/a/q2/g.class */
public interface AbstractC19502g {

    /* renamed from: e.a.q2.g$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/g$b.class */
    public static class C19504b {

        /* renamed from: a */
        public final String f54121a;

        /* renamed from: b */
        public Map<String, String> f54122b;

        /* renamed from: c */
        public Double f54123c;

        /* renamed from: e.a.q2.g$b$a */
        /* loaded from: classes4-dex2jar.jar:e/a/q2/g$b$a.class */
        public static final class C19505a implements AbstractC19502g {

            /* renamed from: a */
            public final String f54124a;

            /* renamed from: b */
            public final Map<String, String> f54125b;

            /* renamed from: c */
            public final Double f54126c;

            public C19505a(String str, Double d, Map map, C19503a c19503a) {
                this.f54124a = str;
                this.f54125b = map;
                this.f54126c = d;
            }

            @Override // p193e.p194a.p1146q2.AbstractC19502g
            /* renamed from: a */
            public Map<String, String> mo9769a() {
                return this.f54125b;
            }

            @Override // p193e.p194a.p1146q2.AbstractC19502g
            /* renamed from: b */
            public Double mo9768b() {
                return this.f54126c;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof AbstractC19502g)) {
                    return false;
                }
                AbstractC19502g abstractC19502g = (AbstractC19502g) obj;
                boolean z = false;
                if (Objects.equals(this.f54124a, abstractC19502g.getName())) {
                    z = false;
                    if (Objects.equals(this.f54125b, abstractC19502g.mo9769a())) {
                        z = false;
                        if (Objects.equals(this.f54126c, abstractC19502g.mo9768b())) {
                            z = true;
                        }
                    }
                }
                return z;
            }

            @Override // p193e.p194a.p1146q2.AbstractC19502g
            public String getName() {
                return this.f54124a;
            }

            public int hashCode() {
                return Objects.hash(this.f54124a, this.f54125b, this.f54126c);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("AnalyticsEvent(");
                m8728C.append(this.f54124a);
                m8728C.append("){");
                Map<String, String> map = this.f54125b;
                if (map != null) {
                    int size = map.size();
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        String key = entry.getKey();
                        String value = entry.getValue();
                        String str = value;
                        if (value == null) {
                            str = "<NULL>";
                        }
                        m8728C.append(key);
                        m8728C.append(StringConstant.COLON);
                        m8728C.append(str);
                        int i = size - 1;
                        size = i;
                        if (i > 0) {
                            m8728C.append(",");
                            size = i;
                        }
                    }
                }
                m8728C.append("}");
                return m8728C.toString();
            }
        }

        public C19504b(String str) {
            this.f54121a = str;
        }

        /* renamed from: a */
        public AbstractC19502g m13266a() {
            return new C19505a(this.f54121a, this.f54123c, this.f54122b, null);
        }

        /* renamed from: b */
        public C19504b m13265b(String str, int i) {
            m13263d(str, String.valueOf(i));
            return this;
        }

        /* renamed from: c */
        public C19504b m13264c(String str, long j) {
            m13263d(str, String.valueOf(j));
            return this;
        }

        /* renamed from: d */
        public C19504b m13263d(String str, String str2) {
            if (this.f54122b == null) {
                this.f54122b = new HashMap();
            }
            this.f54122b.put(str, str2);
            return this;
        }

        /* renamed from: e */
        public C19504b m13262e(String str, boolean z) {
            m13263d(str, String.valueOf(z));
            return this;
        }
    }

    /* renamed from: a */
    Map<String, String> mo9769a();

    /* renamed from: b */
    Double mo9768b();

    String getName();
}
