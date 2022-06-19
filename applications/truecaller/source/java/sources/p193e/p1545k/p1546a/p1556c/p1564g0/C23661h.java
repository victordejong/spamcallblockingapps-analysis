package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23652e0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23682t;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/h.class */
public class C23661h extends C23684u {

    /* renamed from: d */
    public final C23887o f65611d;

    /* renamed from: e */
    public final AbstractC23682t.AbstractC23683a f65612e;

    /* renamed from: f */
    public final boolean f65613f;

    /* renamed from: e.k.a.c.g0.h$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/h$a.class */
    public static final class C23662a {

        /* renamed from: a */
        public final AbstractC23652e0 f65614a;

        /* renamed from: b */
        public final Field f65615b;

        /* renamed from: c */
        public AbstractC23671o f65616c = AbstractC23671o.C23672a.f65637c;

        public C23662a(AbstractC23652e0 abstractC23652e0, Field field) {
            this.f65614a = abstractC23652e0;
            this.f65615b = field;
        }
    }

    public C23661h(AbstractC23426b abstractC23426b, C23887o c23887o, AbstractC23682t.AbstractC23683a abstractC23683a, boolean z) {
        super(abstractC23426b);
        this.f65611d = c23887o;
        this.f65612e = abstractC23426b == null ? null : abstractC23683a;
        this.f65613f = z;
    }

    /* renamed from: f */
    public final Map<String, C23662a> m6389f(AbstractC23652e0 abstractC23652e0, AbstractC23698i abstractC23698i, Map<String, C23662a> map) {
        Field[] declaredFields;
        AbstractC23682t.AbstractC23683a abstractC23683a;
        Class<?> mo6337a;
        Field[] declaredFields2;
        C23662a c23662a;
        AbstractC23698i mo5922q = abstractC23698i.mo5922q();
        if (mo5922q == null) {
            return map;
        }
        Class<?> cls = abstractC23698i.f65728a;
        Map<String, C23662a> m6389f = m6389f(new AbstractC23652e0.C23653a(this.f65611d, mo5922q.mo5924j()), mo5922q, map);
        for (Field field : cls.getDeclaredFields()) {
            if (m6388g(field)) {
                LinkedHashMap linkedHashMap = m6389f;
                if (m6389f == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                C23662a c23662a2 = new C23662a(abstractC23652e0, field);
                if (this.f65613f) {
                    c23662a2.f65616c = m6335b(c23662a2.f65616c, field.getDeclaredAnnotations());
                }
                linkedHashMap.put(field.getName(), c23662a2);
                m6389f = linkedHashMap;
            }
        }
        if (m6389f != null && (abstractC23683a = this.f65612e) != null && (mo6337a = abstractC23683a.mo6337a(cls)) != null) {
            Iterator it = ((ArrayList) C23914g.m5754m(mo6337a, cls, true)).iterator();
            while (it.hasNext()) {
                for (Field field2 : ((Class) it.next()).getDeclaredFields()) {
                    if (m6388g(field2) && (c23662a = m6389f.get(field2.getName())) != null) {
                        c23662a.f65616c = m6335b(c23662a.f65616c, field2.getDeclaredAnnotations());
                    }
                }
            }
        }
        return m6389f;
    }

    /* renamed from: g */
    public final boolean m6388g(Field field) {
        return !field.isSynthetic() && !Modifier.isStatic(field.getModifiers());
    }
}
