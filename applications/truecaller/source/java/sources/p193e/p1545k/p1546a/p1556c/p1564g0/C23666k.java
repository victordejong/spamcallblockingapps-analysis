package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23682t;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/k.class */
public class C23666k extends C23684u {

    /* renamed from: d */
    public final AbstractC23682t.AbstractC23683a f65625d;

    /* renamed from: e */
    public final boolean f65626e;

    /* renamed from: e.k.a.c.g0.k$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/k$a.class */
    public static final class C23667a {

        /* renamed from: a */
        public AbstractC23652e0 f65627a;

        /* renamed from: b */
        public Method f65628b;

        /* renamed from: c */
        public AbstractC23671o f65629c;

        public C23667a(AbstractC23652e0 abstractC23652e0, Method method, AbstractC23671o abstractC23671o) {
            this.f65627a = abstractC23652e0;
            this.f65628b = method;
            this.f65629c = abstractC23671o;
        }
    }

    public C23666k(AbstractC23426b abstractC23426b, AbstractC23682t.AbstractC23683a abstractC23683a, boolean z) {
        super(abstractC23426b);
        this.f65625d = abstractC23426b == null ? null : abstractC23683a;
        this.f65626e = z;
    }

    /* renamed from: h */
    public static boolean m6380h(Method method) {
        boolean z = false;
        if (!Modifier.isStatic(method.getModifiers())) {
            z = false;
            if (!method.isSynthetic()) {
                if (method.isBridge()) {
                    z = false;
                } else {
                    z = false;
                    if (method.getParameterTypes().length <= 2) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public final void m6382f(AbstractC23652e0 abstractC23652e0, Class<?> cls, Map<C23691y, C23667a> map, Class<?> cls2) {
        Method[] m5752o;
        if (cls2 != null) {
            m6381g(abstractC23652e0, cls, map, cls2);
        }
        if (cls == null) {
            return;
        }
        for (Method method : C23914g.m5752o(cls)) {
            if (m6380h(method)) {
                C23691y c23691y = new C23691y(method);
                C23667a c23667a = map.get(c23691y);
                if (c23667a == null) {
                    map.put(c23691y, new C23667a(abstractC23652e0, method, this.f65666a == null ? AbstractC23671o.C23672a.f65637c : m6334c(method.getDeclaredAnnotations())));
                } else {
                    if (this.f65626e) {
                        c23667a.f65629c = m6333d(c23667a.f65629c, method.getDeclaredAnnotations());
                    }
                    Method method2 = c23667a.f65628b;
                    if (method2 == null) {
                        c23667a.f65628b = method;
                    } else if (Modifier.isAbstract(method2.getModifiers()) && !Modifier.isAbstract(method.getModifiers())) {
                        c23667a.f65628b = method;
                        c23667a.f65627a = abstractC23652e0;
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public void m6381g(AbstractC23652e0 abstractC23652e0, Class<?> cls, Map<C23691y, C23667a> map, Class<?> cls2) {
        List<Class> list;
        Method[] declaredMethods;
        if (this.f65666a == null) {
            return;
        }
        Annotation[] annotationArr = C23914g.f66156a;
        if (cls2 == cls || cls2 == Object.class) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList = new ArrayList(8);
            C23914g.m5766a(cls2, cls, arrayList, true);
            list = arrayList;
        }
        for (Class cls3 : list) {
            for (Method method : cls3.getDeclaredMethods()) {
                if (m6380h(method)) {
                    C23691y c23691y = new C23691y(method);
                    C23667a c23667a = map.get(c23691y);
                    Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
                    if (c23667a == null) {
                        map.put(c23691y, new C23667a(abstractC23652e0, null, m6334c(declaredAnnotations)));
                    } else {
                        c23667a.f65629c = m6333d(c23667a.f65629c, declaredAnnotations);
                    }
                }
            }
        }
    }
}
