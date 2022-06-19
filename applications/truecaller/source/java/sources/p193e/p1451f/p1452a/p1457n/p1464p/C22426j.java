package p193e.p1451f.p1452a.p1457n.p1464p;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.f.a.n.p.j */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/j.class */
public final class C22426j implements AbstractC22424h {

    /* renamed from: b */
    public final Map<String, List<AbstractC22425i>> f62267b;

    /* renamed from: c */
    public volatile Map<String, String> f62268c;

    /* renamed from: e.f.a.n.p.j$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/j$a.class */
    public static final class C22427a {

        /* renamed from: b */
        public static final String f62269b;

        /* renamed from: c */
        public static final Map<String, List<AbstractC22425i>> f62270c;

        /* renamed from: a */
        public Map<String, List<AbstractC22425i>> f62271a = f62270c;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i = 0; i < length; i++) {
                    char charAt = property.charAt(i);
                    if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                        sb.append(charAt);
                    } else {
                        sb.append('?');
                    }
                }
                property = sb.toString();
            }
            f62269b = property;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(property)) {
                hashMap.put("User-Agent", Collections.singletonList(new C22428b(property)));
            }
            f62270c = Collections.unmodifiableMap(hashMap);
        }
    }

    /* renamed from: e.f.a.n.p.j$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/j$b.class */
    public static final class C22428b implements AbstractC22425i {

        /* renamed from: a */
        public final String f62272a;

        public C22428b(String str) {
            this.f62272a = str;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22425i
        /* renamed from: a */
        public String mo8234a() {
            return this.f62272a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C22428b) {
                return this.f62272a.equals(((C22428b) obj).f62272a);
            }
            return false;
        }

        public int hashCode() {
            return this.f62272a.hashCode();
        }

        public String toString() {
            return C22128a.m8626f(C22128a.m8728C("StringHeaderFactory{value='"), this.f62272a, '\'', '}');
        }
    }

    public C22426j(Map<String, List<AbstractC22425i>> map) {
        this.f62267b = Collections.unmodifiableMap(map);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22424h
    /* renamed from: a */
    public Map<String, String> mo8236a() {
        if (this.f62268c == null) {
            synchronized (this) {
                if (this.f62268c == null) {
                    this.f62268c = Collections.unmodifiableMap(m8235b());
                }
            }
        }
        return this.f62268c;
    }

    /* renamed from: b */
    public final Map<String, String> m8235b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<AbstractC22425i>> entry : this.f62267b.entrySet()) {
            List<AbstractC22425i> value = entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = value.size();
            for (int i = 0; i < size; i++) {
                String mo8234a = value.get(i).mo8234a();
                if (!TextUtils.isEmpty(mo8234a)) {
                    sb.append(mo8234a);
                    if (i != value.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                hashMap.put(entry.getKey(), sb2);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C22426j) {
            return this.f62267b.equals(((C22426j) obj).f62267b);
        }
        return false;
    }

    public int hashCode() {
        return this.f62267b.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LazyHeaders{headers=");
        m8728C.append(this.f62267b);
        m8728C.append('}');
        return m8728C.toString();
    }
}
