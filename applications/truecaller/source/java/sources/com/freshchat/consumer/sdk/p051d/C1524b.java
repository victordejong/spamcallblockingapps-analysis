package com.freshchat.consumer.sdk.p051d;

import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import e.m.e.b0;
import e.m.e.e0.s;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.d;
import e.m.e.k;
import e.m.e.q;
import e.m.e.r;
import e.m.e.t;
import e.m.e.v;
import e.m.e.w;
import e.m.e.z;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.freshchat.consumer.sdk.d.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/d/b.class */
public class C1524b<T> extends C1522a<T> {

    /* renamed from: nh */
    private final String f4137nh = "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL";

    /* renamed from: ni */
    private final HashMap<String, List<C1524b<T>.C1525a>> f4138ni = new HashMap<>();

    /* renamed from: nj */
    private final HashMap<Class, C1524b<T>.C1525a> f4139nj = new HashMap<>();

    /* renamed from: com.freshchat.consumer.sdk.d.b$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/d/b$a.class */
    public class C1525a {
        private final Class clz;
        private final String fieldName;
        private final String label;

        /* renamed from: nk */
        private final String f4140nk;

        /* renamed from: nl */
        private b0<?> f4141nl;

        private C1525a(String str, String str2, String str3, Class cls) {
            C1524b.this = r4;
            this.f4140nk = str;
            this.fieldName = str3;
            this.label = str2;
            this.clz = cls;
        }

        public void setDelegate(b0<?> b0Var) {
            this.f4141nl = b0Var;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.d.b$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/d/b$b.class */
    public class C1526b {
        private final String fieldName;

        /* renamed from: nk */
        private final String f4143nk;

        /* renamed from: nn */
        private final Map<String, Class> f4145nn = new HashMap();

        public C1526b(String str, String str2) {
            C1524b.this = r5;
            this.f4143nk = str;
            this.fieldName = str2;
        }

        /* renamed from: a */
        public C1524b<T>.C1526b m40640a(String str, Class cls) {
            if (str == null || cls == null) {
                throw new IllegalArgumentException("label or clz cannot be null while adding secondaryType");
            }
            this.f4145nn.put(str, cls);
            return this;
        }

        /* renamed from: gY */
        public void m40639gY() {
            if (!C1716k.m39897c(this.f4145nn)) {
                List list = (List) C1524b.this.f4138ni.get(this.f4143nk);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                }
                for (Map.Entry<String, Class> entry : this.f4145nn.entrySet()) {
                    String key = entry.getKey();
                    Class value = entry.getValue();
                    C1525a c1525a = new C1525a(this.f4143nk, key, this.fieldName, value);
                    arrayList.add(c1525a);
                    C1524b.this.f4139nj.put(value, c1525a);
                }
                C1524b.this.f4138ni.put(this.f4143nk, arrayList);
                return;
            }
            throw new IllegalArgumentException("secondaryTypes list cannot be empty while registering");
        }
    }

    private C1524b(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public static <T> C1524b<T> m40655a(Class<T> cls, String str) {
        return new C1524b<>(cls, str);
    }

    /* renamed from: a */
    private boolean m40652a(String str, q qVar) {
        if (C1626as.isEmpty(str)) {
            return false;
        }
        if (this.f4132eu.containsKey(str)) {
            return true;
        }
        List<C1524b<T>.C1525a> list = this.f4138ni.get(str);
        if (C1716k.isEmpty(list)) {
            return false;
        }
        String str2 = null;
        for (C1524b<T>.C1525a c1525a : list) {
            String str3 = str2;
            if (C1626as.isEmpty(str2)) {
                str3 = super.mo40656a(qVar, ((C1525a) c1525a).clz, ((C1525a) c1525a).fieldName);
            }
            if (C1626as.isEmpty(str3)) {
                return false;
            }
            str2 = str3;
            if (((C1525a) c1525a).label.equals(str3)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.freshchat.consumer.sdk.p051d.C1522a
    /* renamed from: a */
    public b0<?> mo40654a(Class<?> cls, Map<Class<?>, b0<?>> map) {
        C1524b<T>.C1525a c1525a = this.f4139nj.get(cls);
        return c1525a != null ? ((C1525a) c1525a).f4141nl : super.mo40654a(cls, map);
    }

    @Override // com.freshchat.consumer.sdk.p051d.C1522a
    /* renamed from: a */
    public b0<?> mo40651a(String str, Map<String, b0<?>> map, q qVar, Class<?> cls) {
        List<C1524b<T>.C1525a> list;
        C1524b<T>.C1525a next;
        try {
            if (this.f4138ni.containsKey(str) && (list = this.f4138ni.get(str)) != null) {
                Iterator<C1524b<T>.C1525a> it = list.iterator();
                do {
                    if (it.hasNext()) {
                        next = it.next();
                    }
                } while (!super.mo40656a(qVar, cls, ((C1525a) next).fieldName).equals(((C1525a) next).label));
                return ((C1525a) next).f4141nl;
            }
            b0<?> mo40651a = super.mo40651a(str, map, qVar, cls);
            if (mo40651a != null) {
                return mo40651a;
            }
        } catch (Exception e) {
            C1613ai.m40283e("FRESHCHAT", e.toString());
        }
        return super.mo40651a("RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL", map, qVar, cls);
    }

    @Override // com.freshchat.consumer.sdk.p051d.C1522a
    /* renamed from: a */
    public <R> t mo40653a(String str, b0<R> b0Var, R r) {
        t mo40653a = super.mo40653a(str, (b0<b0<R>>) b0Var, (b0<R>) r);
        if (C1626as.m40222p(str, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL")) {
            return mo40653a;
        }
        try {
            s.e g = mo40653a.a.g("rawJsonOfUnsupportedType");
            try {
                try {
                    a aVar = new a(new StringReader(((w) (g != null ? g.g : null)).g()));
                    t a = v.a(aVar);
                    Objects.requireNonNull(a);
                    if (!(a instanceof e.m.e.s) && aVar.D0() != b.j) {
                        throw new z("Did not consume the entire document.");
                    }
                    return a;
                } catch (IOException e) {
                    throw new r(e);
                }
            } catch (d e2) {
                throw new z(e2);
            } catch (NumberFormatException e3) {
                throw new z(e3);
            }
        } catch (Exception e4) {
            C1723q.m39823a(e4);
            return mo40653a;
        }
    }

    @Override // com.freshchat.consumer.sdk.p051d.C1522a
    /* renamed from: a */
    public String mo40656a(q qVar, Class<?> cls, String str) {
        String mo40656a = super.mo40656a(qVar, cls, str);
        String str2 = mo40656a;
        if (!m40652a(mo40656a, qVar)) {
            C1613ai.m40278w("FRESHCHAT_WARNING", "cannot deserialize " + cls + " subtype named " + mo40656a + "; did you forget to register a subtype?");
            qVar.d().j("rawJsonOfUnsupportedType", qVar.d().toString());
            str2 = "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL";
        }
        return str2;
    }

    /* renamed from: b */
    public C1522a<T> m40649b(Class<? extends T> cls) {
        return m40658b(cls, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL");
    }

    @Override // com.freshchat.consumer.sdk.p051d.C1522a
    /* renamed from: c */
    public String mo40648c(Class<?> cls) {
        C1524b<T>.C1525a c1525a = this.f4139nj.get(cls);
        return c1525a != null ? ((C1525a) c1525a).f4140nk : super.mo40648c(cls);
    }

    @Override // com.freshchat.consumer.sdk.p051d.C1522a
    public <R> b0<R> create(k kVar, e.m.e.f0.a<R> aVar) {
        for (Map.Entry<String, List<C1524b<T>.C1525a>> entry : this.f4138ni.entrySet()) {
            for (C1524b<T>.C1525a c1525a : entry.getValue()) {
                c1525a.setDelegate(kVar.j(this, e.m.e.f0.a.get(((C1525a) c1525a).clz)));
            }
        }
        return super.create(kVar, aVar);
    }

    /* renamed from: w */
    public C1524b<T>.C1526b m40647w(String str, String str2) {
        return new C1526b(str, str2);
    }
}
