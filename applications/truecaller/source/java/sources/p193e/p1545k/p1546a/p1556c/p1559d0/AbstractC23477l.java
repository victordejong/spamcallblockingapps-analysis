package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1547a.AbstractC23323n0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/l.class */
public abstract class AbstractC23477l extends AbstractC23632g implements Serializable {

    /* renamed from: l */
    public transient LinkedHashMap<AbstractC23316k0.C23317a, C23502c0> f65155l;

    /* renamed from: m */
    public List<AbstractC23323n0> f65156m;

    /* renamed from: e.k.a.c.d0.l$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/l$a.class */
    public static final class C23478a extends AbstractC23477l {
        public C23478a(C23478a c23478a, C23624f c23624f) {
            super(c23478a, c23624f);
        }

        public C23478a(C23478a c23478a, C23624f c23624f, AbstractC23376j abstractC23376j) {
            super(c23478a, c23624f, abstractC23376j);
        }

        public C23478a(AbstractC23481o abstractC23481o) {
            super(abstractC23481o, (C23480n) null);
        }
    }

    public AbstractC23477l(AbstractC23477l abstractC23477l, C23624f c23624f) {
        super(abstractC23477l, c23624f);
    }

    public AbstractC23477l(AbstractC23477l abstractC23477l, C23624f c23624f, AbstractC23376j abstractC23376j) {
        super(abstractC23477l, c23624f, abstractC23376j);
    }

    public AbstractC23477l(AbstractC23481o abstractC23481o, C23480n c23480n) {
        super(abstractC23481o, (C23480n) null);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23632g
    /* renamed from: T */
    public final AbstractC23940o mo6486T(AbstractC23636b abstractC23636b, Object obj) throws C23733k {
        AbstractC23940o abstractC23940o;
        if (obj == null) {
            return null;
        }
        if (obj instanceof AbstractC23940o) {
            abstractC23940o = (AbstractC23940o) obj;
        } else if (!(obj instanceof Class)) {
            throw new IllegalStateException(C22128a.m8631d2(obj, C22128a.m8728C("AnnotationIntrospector returned key deserializer definition of type "), "; expected type KeyDeserializer or Class<KeyDeserializer> instead"));
        } else {
            Class cls = (Class) obj;
            if (cls == AbstractC23940o.AbstractC23941a.class || C23914g.m5745v(cls)) {
                return null;
            }
            if (!AbstractC23940o.class.isAssignableFrom(cls)) {
                throw new IllegalStateException(C22128a.m8639b2(cls, C22128a.m8728C("AnnotationIntrospector returned Class "), "; expected Class<KeyDeserializer>"));
            }
            Objects.requireNonNull(this.f65501c.f65071b);
            abstractC23940o = (AbstractC23940o) C23914g.m5758i(cls, this.f65501c.m6867b());
        }
        if (abstractC23940o instanceof AbstractC23485s) {
            ((AbstractC23485s) abstractC23940o).mo6548b(this);
        }
        return abstractC23940o;
    }

    /* renamed from: k0 */
    public Object m6787k0(AbstractC23376j abstractC23376j, AbstractC23698i abstractC23698i, AbstractC23700j<Object> abstractC23700j, Object obj) throws IOException {
        C23624f c23624f = this.f65501c;
        C23951v c23951v = c23624f.f65076e;
        if (!(c23951v != null ? !c23951v.m5661e() : c23624f.m6515y(EnumC23694h.UNWRAP_ROOT_VALUE))) {
            return obj == null ? abstractC23700j.mo6232d(abstractC23376j, this) : abstractC23700j.mo6231e(abstractC23376j, this, obj);
        }
        String str = this.f65501c.m6853q(abstractC23698i).f66304a;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        EnumC23381m enumC23381m = EnumC23381m.START_OBJECT;
        if (mo7142l != enumC23381m) {
            m6475e0(abstractC23698i, enumC23381m, "Current token not START_OBJECT (needed to unwrap root name %s), but %s", C23914g.m5777D(str), abstractC23376j.mo7142l());
            throw null;
        }
        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
        EnumC23381m enumC23381m2 = EnumC23381m.FIELD_NAME;
        if (mo5811i2 != enumC23381m2) {
            m6475e0(abstractC23698i, enumC23381m2, "Current token not FIELD_NAME (to contain expected root name %s), but %s", C23914g.m5777D(str), abstractC23376j.mo7142l());
            throw null;
        }
        String mo5809k = abstractC23376j.mo5809k();
        if (!str.equals(mo5809k)) {
            m6477c0(abstractC23698i, mo5809k, "Root name (%s) does not match expected (%s) for type %s", C23914g.m5777D(mo5809k), C23914g.m5777D(str), C23914g.m5747t(abstractC23698i));
            throw null;
        }
        abstractC23376j.mo5811i2();
        Object mo6232d = obj == null ? abstractC23700j.mo6232d(abstractC23376j, this) : abstractC23700j.mo6231e(abstractC23376j, this, obj);
        EnumC23381m mo5811i22 = abstractC23376j.mo5811i2();
        EnumC23381m enumC23381m3 = EnumC23381m.END_OBJECT;
        if (mo5811i22 == enumC23381m3) {
            return mo6232d;
        }
        m6475e0(abstractC23698i, enumC23381m3, "Current token not END_OBJECT (to match wrapper object with root name %s), but %s", C23914g.m5777D(str), abstractC23376j.mo7142l());
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23632g
    /* renamed from: p */
    public AbstractC23700j<Object> mo6464p(AbstractC23636b abstractC23636b, Object obj) throws C23733k {
        AbstractC23700j<Object> abstractC23700j;
        if (obj == null) {
            return null;
        }
        if (obj instanceof AbstractC23700j) {
            abstractC23700j = (AbstractC23700j) obj;
        } else if (!(obj instanceof Class)) {
            throw new IllegalStateException(C22128a.m8631d2(obj, C22128a.m8728C("AnnotationIntrospector returned deserializer definition of type "), "; expected type JsonDeserializer or Class<JsonDeserializer> instead"));
        } else {
            Class cls = (Class) obj;
            if (cls == AbstractC23700j.AbstractC23701a.class || C23914g.m5745v(cls)) {
                return null;
            }
            if (!AbstractC23700j.class.isAssignableFrom(cls)) {
                throw new IllegalStateException(C22128a.m8639b2(cls, C22128a.m8728C("AnnotationIntrospector returned Class "), "; expected Class<JsonDeserializer>"));
            }
            Objects.requireNonNull(this.f65501c.f65071b);
            abstractC23700j = (AbstractC23700j) C23914g.m5758i(cls, this.f65501c.m6867b());
        }
        if (abstractC23700j instanceof AbstractC23485s) {
            ((AbstractC23485s) abstractC23700j).mo6548b(this);
        }
        return abstractC23700j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23632g
    /* renamed from: w */
    public C23502c0 mo6457w(Object obj, AbstractC23316k0<?> abstractC23316k0, AbstractC23323n0 abstractC23323n0) {
        AbstractC23323n0 abstractC23323n02;
        if (obj == null) {
            return null;
        }
        AbstractC23316k0.C23317a mo6064e = abstractC23316k0.mo6064e(obj);
        LinkedHashMap<AbstractC23316k0.C23317a, C23502c0> linkedHashMap = this.f65155l;
        if (linkedHashMap == null) {
            this.f65155l = new LinkedHashMap<>();
        } else {
            C23502c0 c23502c0 = linkedHashMap.get(mo6064e);
            if (c23502c0 != null) {
                return c23502c0;
            }
        }
        List<AbstractC23323n0> list = this.f65156m;
        if (list != null) {
            Iterator<AbstractC23323n0> it = list.iterator();
            do {
                abstractC23323n02 = null;
                if (!it.hasNext()) {
                    break;
                }
                abstractC23323n02 = it.next();
            } while (!abstractC23323n02.mo7271d(abstractC23323n0));
        } else {
            this.f65156m = new ArrayList(8);
            abstractC23323n02 = null;
        }
        AbstractC23323n0 abstractC23323n03 = abstractC23323n02;
        if (abstractC23323n02 == null) {
            abstractC23323n03 = abstractC23323n0.mo7272c(this);
            this.f65156m.add(abstractC23323n03);
        }
        C23502c0 c23502c02 = new C23502c0(mo6064e);
        c23502c02.f65218d = abstractC23323n03;
        this.f65155l.put(mo6064e, c23502c02);
        return c23502c02;
    }
}
