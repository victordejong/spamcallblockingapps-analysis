package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.d;
import kotlin.g.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.e;
import kotlin.jvm.functions.f;
import kotlin.jvm.functions.g;
import kotlin.jvm.functions.j;
import kotlin.jvm.functions.k;
import kotlin.jvm.functions.l;
import kotlin.jvm.functions.m;
import kotlin.jvm.functions.o;
import kotlin.jvm.functions.q;
import kotlin.jvm.functions.s;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.c;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final List<c<? extends Object>> f37453a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Class<? extends Object>, Class<? extends Object>> f37454b;

    /* renamed from: c  reason: collision with root package name */
    private static final Map<Class<? extends Object>, Class<? extends Object>> f37455c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Class<? extends d<?>>, Integer> f37456d;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/b$a.class */
    static final class a extends r implements Function1<ParameterizedType, ParameterizedType> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37457a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ ParameterizedType invoke(ParameterizedType parameterizedType) {
            ParameterizedType it2 = parameterizedType;
            p.d(it2, "it");
            Type ownerType = it2.getOwnerType();
            if (ownerType instanceof ParameterizedType) {
                return (ParameterizedType) ownerType;
            }
            return null;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/b$b.class */
    static final class C0673b extends r implements Function1<ParameterizedType, h<? extends Type>> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0673b f37458a = new C0673b();

        C0673b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ h<? extends Type> invoke(ParameterizedType parameterizedType) {
            ParameterizedType it2 = parameterizedType;
            p.d(it2, "it");
            Type[] actualTypeArguments = it2.getActualTypeArguments();
            p.b(actualTypeArguments, "it.actualTypeArguments");
            return i.o(actualTypeArguments);
        }
    }

    static {
        int i = 0;
        List<c<? extends Object>> b2 = n.b((Object[]) new c[]{ac.b(Boolean.TYPE), ac.b(Byte.TYPE), ac.b(Character.TYPE), ac.b(Double.TYPE), ac.b(Float.TYPE), ac.b(Integer.TYPE), ac.b(Long.TYPE), ac.b(Short.TYPE)});
        f37453a = b2;
        List<c<? extends Object>> list = b2;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            c cVar = (c) it2.next();
            arrayList.add(t.a(kotlin.jvm.a.c(cVar), kotlin.jvm.a.b(cVar)));
        }
        f37454b = ai.a(arrayList);
        List<c<? extends Object>> list2 = f37453a;
        ArrayList arrayList2 = new ArrayList(n.a((Iterable) list2, 10));
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            c cVar2 = (c) it3.next();
            arrayList2.add(t.a(kotlin.jvm.a.b(cVar2), kotlin.jvm.a.c(cVar2)));
        }
        f37455c = ai.a(arrayList2);
        List b3 = n.b((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, kotlin.jvm.functions.n.class, o.class, kotlin.jvm.functions.p.class, q.class, kotlin.jvm.functions.r.class, s.class, kotlin.jvm.functions.t.class, kotlin.jvm.functions.a.class, kotlin.jvm.functions.b.class, kotlin.jvm.functions.c.class, kotlin.jvm.functions.d.class, e.class, f.class, g.class, kotlin.jvm.functions.h.class, kotlin.jvm.functions.i.class, j.class, k.class, l.class, m.class});
        ArrayList arrayList3 = new ArrayList(n.a((Iterable) b3, 10));
        for (Object obj : b3) {
            if (i < 0) {
                n.a();
            }
            arrayList3.add(t.a((Class) obj, Integer.valueOf(i)));
            i++;
        }
        f37456d = ai.a(arrayList3);
    }

    public static final ClassLoader a(Class<?> cls) {
        p.d(cls, "<this>");
        ClassLoader classLoader = cls.getClassLoader();
        ClassLoader classLoader2 = classLoader;
        if (classLoader == null) {
            classLoader2 = ClassLoader.getSystemClassLoader();
            p.b(classLoader2, "getSystemClassLoader()");
        }
        return classLoader2;
    }

    public static final List<Type> a(Type type) {
        p.d(type, "<this>");
        if (!(type instanceof ParameterizedType)) {
            return z.f36608a;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getOwnerType() != null) {
            return kotlin.g.k.f(kotlin.g.k.c(kotlin.g.k.a(type, a.f37457a), C0673b.f37458a));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        p.b(actualTypeArguments, "actualTypeArguments");
        return i.i(actualTypeArguments);
    }

    public static final boolean b(Class<?> cls) {
        p.d(cls, "<this>");
        return Enum.class.isAssignableFrom(cls);
    }

    public static final Class<?> c(Class<?> cls) {
        p.d(cls, "<this>");
        return f37454b.get(cls);
    }

    public static final Class<?> d(Class<?> cls) {
        p.d(cls, "<this>");
        return f37455c.get(cls);
    }

    public static final kotlin.reflect.jvm.internal.impl.c.a e(Class<?> cls) {
        p.d(cls, "<this>");
        if (cls.isPrimitive()) {
            throw new IllegalArgumentException(p.a("Can't compute ClassId for primitive type: ", (Object) cls));
        } else if (!cls.isArray()) {
            if (cls.getEnclosingMethod() == null && cls.getEnclosingConstructor() == null) {
                String simpleName = cls.getSimpleName();
                p.b(simpleName, "simpleName");
                if (!(simpleName.length() == 0)) {
                    Class<?> declaringClass = cls.getDeclaringClass();
                    kotlin.reflect.jvm.internal.impl.c.a a2 = declaringClass == null ? null : e(declaringClass).a(kotlin.reflect.jvm.internal.impl.c.e.a(cls.getSimpleName()));
                    kotlin.reflect.jvm.internal.impl.c.a aVar = a2;
                    if (a2 == null) {
                        aVar = kotlin.reflect.jvm.internal.impl.c.a.a(new kotlin.reflect.jvm.internal.impl.c.b(cls.getName()));
                    }
                    p.b(aVar, "declaringClass?.classId?.createNestedClassId(Name.identifier(simpleName)) ?: ClassId.topLevel(FqName(name))");
                    return aVar;
                }
            }
            kotlin.reflect.jvm.internal.impl.c.b bVar = new kotlin.reflect.jvm.internal.impl.c.b(cls.getName());
            return new kotlin.reflect.jvm.internal.impl.c.a(bVar.d(), kotlin.reflect.jvm.internal.impl.c.b.c(bVar.e()), true);
        } else {
            throw new IllegalArgumentException(p.a("Can't compute ClassId for array type: ", (Object) cls));
        }
    }

    public static final String f(Class<?> cls) {
        p.d(cls, "<this>");
        if (p.a(cls, Void.TYPE)) {
            return "V";
        }
        String name = g(cls).getName();
        p.b(name, "createArrayType().name");
        String substring = name.substring(1);
        p.b(substring, "(this as java.lang.String).substring(startIndex)");
        return kotlin.h.p.a(substring, '.', '/', false);
    }

    public static final Class<?> g(Class<?> cls) {
        p.d(cls, "<this>");
        return Array.newInstance(cls, 0).getClass();
    }
}
