package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.AbstractC18342d;
import kotlin.C20126t;
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.AbstractC18460a;
import kotlin.jvm.functions.AbstractC18461b;
import kotlin.jvm.functions.AbstractC18462c;
import kotlin.jvm.functions.AbstractC18463d;
import kotlin.jvm.functions.AbstractC18464e;
import kotlin.jvm.functions.AbstractC18465f;
import kotlin.jvm.functions.AbstractC18466g;
import kotlin.jvm.functions.AbstractC18467h;
import kotlin.jvm.functions.AbstractC18468i;
import kotlin.jvm.functions.AbstractC18469j;
import kotlin.jvm.functions.AbstractC18470k;
import kotlin.jvm.functions.AbstractC18471l;
import kotlin.jvm.functions.AbstractC18472m;
import kotlin.jvm.functions.AbstractC18473n;
import kotlin.jvm.functions.AbstractC18474o;
import kotlin.jvm.functions.AbstractC18475p;
import kotlin.jvm.functions.AbstractC18476q;
import kotlin.jvm.functions.AbstractC18477r;
import kotlin.jvm.functions.AbstractC18478s;
import kotlin.jvm.functions.AbstractC18479t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p531g.AbstractC18378h;
import kotlin.p531g.C18381k;
import kotlin.p532h.C18425p;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/b.class */
public final class C19088b {

    /* renamed from: a */
    private static final List<AbstractC18551c<? extends Object>> f64811a;

    /* renamed from: b */
    private static final Map<Class<? extends Object>, Class<? extends Object>> f64812b;

    /* renamed from: c */
    private static final Map<Class<? extends Object>, Class<? extends Object>> f64813c;

    /* renamed from: d */
    private static final Map<Class<? extends AbstractC18342d<?>>, Integer> f64814d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/b$a.class */
    public static final class C19089a extends AbstractC18526r implements Function1<ParameterizedType, ParameterizedType> {

        /* renamed from: a */
        public static final C19089a f64815a = new C19089a();

        C19089a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ ParameterizedType invoke(ParameterizedType parameterizedType) {
            ParameterizedType it2 = parameterizedType;
            C18524p.m3840d(it2, "it");
            Type ownerType = it2.getOwnerType();
            if (ownerType instanceof ParameterizedType) {
                return (ParameterizedType) ownerType;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.b$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/b$b.class */
    public static final class C19090b extends AbstractC18526r implements Function1<ParameterizedType, AbstractC18378h<? extends Type>> {

        /* renamed from: a */
        public static final C19090b f64816a = new C19090b();

        C19090b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18378h<? extends Type> invoke(ParameterizedType parameterizedType) {
            ParameterizedType it2 = parameterizedType;
            C18524p.m3840d(it2, "it");
            Type[] actualTypeArguments = it2.getActualTypeArguments();
            C18524p.m3843b(actualTypeArguments, "it.actualTypeArguments");
            return C18273i.m4177o(actualTypeArguments);
        }
    }

    static {
        int i = 0;
        List<AbstractC18551c<? extends Object>> b = C18282n.m4167b((Object[]) new AbstractC18551c[]{C18496ac.m3882b(Boolean.TYPE), C18496ac.m3882b(Byte.TYPE), C18496ac.m3882b(Character.TYPE), C18496ac.m3882b(Double.TYPE), C18496ac.m3882b(Float.TYPE), C18496ac.m3882b(Integer.TYPE), C18496ac.m3882b(Long.TYPE), C18496ac.m3882b(Short.TYPE)});
        f64811a = b;
        List<AbstractC18551c<? extends Object>> list = b;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            AbstractC18551c abstractC18551c = (AbstractC18551c) it2.next();
            arrayList.add(C20126t.m1103a(C18458a.m3891c(abstractC18551c), C18458a.m3892b(abstractC18551c)));
        }
        f64812b = C18247ai.m4256a(arrayList);
        List<AbstractC18551c<? extends Object>> list2 = f64811a;
        ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            AbstractC18551c abstractC18551c2 = (AbstractC18551c) it3.next();
            arrayList2.add(C20126t.m1103a(C18458a.m3892b(abstractC18551c2), C18458a.m3891c(abstractC18551c2)));
        }
        f64813c = C18247ai.m4256a(arrayList2);
        List b2 = C18282n.m4167b((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, AbstractC18473n.class, AbstractC18474o.class, AbstractC18475p.class, AbstractC18476q.class, AbstractC18477r.class, AbstractC18478s.class, AbstractC18479t.class, AbstractC18460a.class, AbstractC18461b.class, AbstractC18462c.class, AbstractC18463d.class, AbstractC18464e.class, AbstractC18465f.class, AbstractC18466g.class, AbstractC18467h.class, AbstractC18468i.class, AbstractC18469j.class, AbstractC18470k.class, AbstractC18471l.class, AbstractC18472m.class});
        ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) b2, 10));
        for (Object obj : b2) {
            if (i < 0) {
                C18282n.m4175a();
            }
            arrayList3.add(C20126t.m1103a((Class) obj, Integer.valueOf(i)));
            i++;
        }
        f64814d = C18247ai.m4256a(arrayList3);
    }

    /* renamed from: a */
    public static final ClassLoader m2659a(Class<?> cls) {
        C18524p.m3840d(cls, "<this>");
        ClassLoader classLoader = cls.getClassLoader();
        ClassLoader classLoader2 = classLoader;
        if (classLoader == null) {
            classLoader2 = ClassLoader.getSystemClassLoader();
            C18524p.m3843b(classLoader2, "getSystemClassLoader()");
        }
        return classLoader2;
    }

    /* renamed from: a */
    public static final List<Type> m2658a(Type type) {
        C18524p.m3840d(type, "<this>");
        if (!(type instanceof ParameterizedType)) {
            return C18297z.f63400a;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getOwnerType() != null) {
            return C18381k.m4012f(C18381k.m4017c(C18381k.m4031a(type, C19089a.f64815a), C19090b.f64816a));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        C18524p.m3843b(actualTypeArguments, "actualTypeArguments");
        return C18273i.m4183i(actualTypeArguments);
    }

    /* renamed from: b */
    public static final boolean m2657b(Class<?> cls) {
        C18524p.m3840d(cls, "<this>");
        return Enum.class.isAssignableFrom(cls);
    }

    /* renamed from: c */
    public static final Class<?> m2656c(Class<?> cls) {
        C18524p.m3840d(cls, "<this>");
        return f64812b.get(cls);
    }

    /* renamed from: d */
    public static final Class<?> m2655d(Class<?> cls) {
        C18524p.m3840d(cls, "<this>");
        return f64813c.get(cls);
    }

    /* renamed from: e */
    public static final C18960a m2654e(Class<?> cls) {
        C18524p.m3840d(cls, "<this>");
        if (!cls.isPrimitive()) {
            if (cls.isArray()) {
                throw new IllegalArgumentException(C18524p.m3847a("Can't compute ClassId for array type: ", (Object) cls));
            }
            if (cls.getEnclosingMethod() == null && cls.getEnclosingConstructor() == null) {
                String simpleName = cls.getSimpleName();
                C18524p.m3843b(simpleName, "simpleName");
                if (!(simpleName.length() == 0)) {
                    Class<?> declaringClass = cls.getDeclaringClass();
                    C18960a m2753a = declaringClass == null ? null : m2654e(declaringClass).m2753a(C18966e.m2719a(cls.getSimpleName()));
                    C18960a c18960a = m2753a;
                    if (m2753a == null) {
                        c18960a = C18960a.m2754a(new C18961b(cls.getName()));
                    }
                    C18524p.m3843b(c18960a, "declaringClass?.classId?.createNestedClassId(Name.identifier(simpleName)) ?: ClassId.topLevel(FqName(name))");
                    return c18960a;
                }
            }
            C18961b c18961b = new C18961b(cls.getName());
            return new C18960a(c18961b.m2739d(), C18961b.m2740c(c18961b.m2738e()), true);
        }
        throw new IllegalArgumentException(C18524p.m3847a("Can't compute ClassId for primitive type: ", (Object) cls));
    }

    /* renamed from: f */
    public static final String m2653f(Class<?> cls) {
        C18524p.m3840d(cls, "<this>");
        if (C18524p.m3850a(cls, Void.TYPE)) {
            return "V";
        }
        String name = m2652g(cls).getName();
        C18524p.m3843b(name, "createArrayType().name");
        String substring = name.substring(1);
        C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
        return C18425p.m3964a(substring, '.', '/', false);
    }

    /* renamed from: g */
    public static final Class<?> m2652g(Class<?> cls) {
        C18524p.m3840d(cls, "<this>");
        return Array.newInstance(cls, 0).getClass();
    }
}
