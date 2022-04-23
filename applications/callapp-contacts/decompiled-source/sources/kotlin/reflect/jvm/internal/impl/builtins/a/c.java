package kotlin.reflect.jvm.internal.impl.builtins.a;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.d;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.c.g;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f37237a;
    private static final kotlin.reflect.jvm.internal.impl.c.a f;
    private static final b g;
    private static final kotlin.reflect.jvm.internal.impl.c.a h;
    private static final kotlin.reflect.jvm.internal.impl.c.a i;
    private static final kotlin.reflect.jvm.internal.impl.c.a j;
    private static final List<a> o;

    /* renamed from: b  reason: collision with root package name */
    private static final String f37238b = kotlin.reflect.jvm.internal.impl.builtins.functions.b.Function.getPackageFqName().toString() + '.' + kotlin.reflect.jvm.internal.impl.builtins.functions.b.Function.getClassNamePrefix();

    /* renamed from: c  reason: collision with root package name */
    private static final String f37239c = kotlin.reflect.jvm.internal.impl.builtins.functions.b.KFunction.getPackageFqName().toString() + '.' + kotlin.reflect.jvm.internal.impl.builtins.functions.b.KFunction.getClassNamePrefix();

    /* renamed from: d  reason: collision with root package name */
    private static final String f37240d = kotlin.reflect.jvm.internal.impl.builtins.functions.b.SuspendFunction.getPackageFqName().toString() + '.' + kotlin.reflect.jvm.internal.impl.builtins.functions.b.SuspendFunction.getClassNamePrefix();
    private static final String e = kotlin.reflect.jvm.internal.impl.builtins.functions.b.KSuspendFunction.getPackageFqName().toString() + '.' + kotlin.reflect.jvm.internal.impl.builtins.functions.b.KSuspendFunction.getClassNamePrefix();
    private static final HashMap<kotlin.reflect.jvm.internal.impl.c.c, kotlin.reflect.jvm.internal.impl.c.a> k = new HashMap<>();
    private static final HashMap<kotlin.reflect.jvm.internal.impl.c.c, kotlin.reflect.jvm.internal.impl.c.a> l = new HashMap<>();
    private static final HashMap<kotlin.reflect.jvm.internal.impl.c.c, b> m = new HashMap<>();
    private static final HashMap<kotlin.reflect.jvm.internal.impl.c.c, b> n = new HashMap<>();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final kotlin.reflect.jvm.internal.impl.c.a f37241a;

        /* renamed from: b  reason: collision with root package name */
        final kotlin.reflect.jvm.internal.impl.c.a f37242b;

        /* renamed from: c  reason: collision with root package name */
        final kotlin.reflect.jvm.internal.impl.c.a f37243c;

        public a(kotlin.reflect.jvm.internal.impl.c.a javaClass, kotlin.reflect.jvm.internal.impl.c.a kotlinReadOnly, kotlin.reflect.jvm.internal.impl.c.a kotlinMutable) {
            p.d(javaClass, "javaClass");
            p.d(kotlinReadOnly, "kotlinReadOnly");
            p.d(kotlinMutable, "kotlinMutable");
            this.f37241a = javaClass;
            this.f37242b = kotlinReadOnly;
            this.f37243c = kotlinMutable;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p.a(this.f37241a, aVar.f37241a) && p.a(this.f37242b, aVar.f37242b) && p.a(this.f37243c, aVar.f37243c);
        }

        public final int hashCode() {
            return (((this.f37241a.hashCode() * 31) + this.f37242b.hashCode()) * 31) + this.f37243c.hashCode();
        }

        public final String toString() {
            return "PlatformMutabilityMapping(javaClass=" + this.f37241a + ", kotlinReadOnly=" + this.f37242b + ", kotlinMutable=" + this.f37243c + ')';
        }
    }

    static {
        c cVar = new c();
        f37237a = cVar;
        kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.c.a.a(new b("kotlin.jvm.functions.FunctionN"));
        p.b(a2, "topLevel(FqName(\"kotlin.jvm.functions.FunctionN\"))");
        f = a2;
        b f2 = a2.f();
        p.b(f2, "FUNCTION_N_CLASS_ID.asSingleFqName()");
        g = f2;
        kotlin.reflect.jvm.internal.impl.c.a a3 = kotlin.reflect.jvm.internal.impl.c.a.a(new b("kotlin.reflect.KFunction"));
        p.b(a3, "topLevel(FqName(\"kotlin.reflect.KFunction\"))");
        h = a3;
        kotlin.reflect.jvm.internal.impl.c.a a4 = kotlin.reflect.jvm.internal.impl.c.a.a(new b("kotlin.reflect.KClass"));
        p.b(a4, "topLevel(FqName(\"kotlin.reflect.KClass\"))");
        i = a4;
        j = cVar.a(Class.class);
        kotlin.reflect.jvm.internal.impl.c.a a5 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.O);
        p.b(a5, "topLevel(FqNames.iterable)");
        b bVar = j.a.W;
        b a6 = a5.a();
        b a7 = a5.a();
        p.b(a7, "kotlinReadOnly.packageFqName");
        int i2 = 0;
        a aVar = new a(cVar.a(Iterable.class), a5, new kotlin.reflect.jvm.internal.impl.c.a(a6, d.a(bVar, a7), false));
        kotlin.reflect.jvm.internal.impl.c.a a8 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.N);
        p.b(a8, "topLevel(FqNames.iterator)");
        b bVar2 = j.a.V;
        b a9 = a8.a();
        b a10 = a8.a();
        p.b(a10, "kotlinReadOnly.packageFqName");
        a aVar2 = new a(cVar.a(Iterator.class), a8, new kotlin.reflect.jvm.internal.impl.c.a(a9, d.a(bVar2, a10), false));
        kotlin.reflect.jvm.internal.impl.c.a a11 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.P);
        p.b(a11, "topLevel(FqNames.collection)");
        b bVar3 = j.a.X;
        b a12 = a11.a();
        b a13 = a11.a();
        p.b(a13, "kotlinReadOnly.packageFqName");
        a aVar3 = new a(cVar.a(Collection.class), a11, new kotlin.reflect.jvm.internal.impl.c.a(a12, d.a(bVar3, a13), false));
        kotlin.reflect.jvm.internal.impl.c.a a14 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.Q);
        p.b(a14, "topLevel(FqNames.list)");
        b bVar4 = j.a.Y;
        b a15 = a14.a();
        b a16 = a14.a();
        p.b(a16, "kotlinReadOnly.packageFqName");
        a aVar4 = new a(cVar.a(List.class), a14, new kotlin.reflect.jvm.internal.impl.c.a(a15, d.a(bVar4, a16), false));
        kotlin.reflect.jvm.internal.impl.c.a a17 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.S);
        p.b(a17, "topLevel(FqNames.set)");
        b bVar5 = j.a.aa;
        b a18 = a17.a();
        b a19 = a17.a();
        p.b(a19, "kotlinReadOnly.packageFqName");
        a aVar5 = new a(cVar.a(Set.class), a17, new kotlin.reflect.jvm.internal.impl.c.a(a18, d.a(bVar5, a19), false));
        kotlin.reflect.jvm.internal.impl.c.a a20 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.R);
        p.b(a20, "topLevel(FqNames.listIterator)");
        b bVar6 = j.a.Z;
        b a21 = a20.a();
        b a22 = a20.a();
        p.b(a22, "kotlinReadOnly.packageFqName");
        a aVar6 = new a(cVar.a(ListIterator.class), a20, new kotlin.reflect.jvm.internal.impl.c.a(a21, d.a(bVar6, a22), false));
        kotlin.reflect.jvm.internal.impl.c.a a23 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.T);
        p.b(a23, "topLevel(FqNames.map)");
        b bVar7 = j.a.ab;
        b a24 = a23.a();
        b a25 = a23.a();
        p.b(a25, "kotlinReadOnly.packageFqName");
        a aVar7 = new a(cVar.a(Map.class), a23, new kotlin.reflect.jvm.internal.impl.c.a(a24, d.a(bVar7, a25), false));
        kotlin.reflect.jvm.internal.impl.c.a a26 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.T).a(j.a.U.e());
        p.b(a26, "topLevel(FqNames.map).createNestedClassId(FqNames.mapEntry.shortName())");
        b bVar8 = j.a.ac;
        b a27 = a26.a();
        b a28 = a26.a();
        p.b(a28, "kotlinReadOnly.packageFqName");
        List<a> b2 = n.b((Object[]) new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, new a(cVar.a(Map.Entry.class), a26, new kotlin.reflect.jvm.internal.impl.c.a(a27, d.a(bVar8, a28), false))});
        o = b2;
        cVar.a(Object.class, j.a.f37321b);
        cVar.a(String.class, j.a.h);
        cVar.a(CharSequence.class, j.a.g);
        cVar.a(Throwable.class, j.a.u);
        cVar.a(Cloneable.class, j.a.f37323d);
        cVar.a(Number.class, j.a.r);
        cVar.a(Comparable.class, j.a.v);
        cVar.a(Enum.class, j.a.s);
        cVar.a(Annotation.class, j.a.E);
        for (a aVar8 : b2) {
            kotlin.reflect.jvm.internal.impl.c.a aVar9 = aVar8.f37241a;
            kotlin.reflect.jvm.internal.impl.c.a aVar10 = aVar8.f37242b;
            kotlin.reflect.jvm.internal.impl.c.a aVar11 = aVar8.f37243c;
            a(aVar9, aVar10);
            b f3 = aVar11.f();
            p.b(f3, "mutableClassId.asSingleFqName()");
            a(f3, aVar9);
            b f4 = aVar10.f();
            p.b(f4, "readOnlyClassId.asSingleFqName()");
            b f5 = aVar11.f();
            p.b(f5, "mutableClassId.asSingleFqName()");
            HashMap<kotlin.reflect.jvm.internal.impl.c.c, b> hashMap = m;
            kotlin.reflect.jvm.internal.impl.c.c b3 = aVar11.f().b();
            p.b(b3, "mutableClassId.asSingleFqName().toUnsafe()");
            hashMap.put(b3, f4);
            HashMap<kotlin.reflect.jvm.internal.impl.c.c, b> hashMap2 = n;
            kotlin.reflect.jvm.internal.impl.c.c b4 = f4.b();
            p.b(b4, "readOnlyFqName.toUnsafe()");
            hashMap2.put(b4, f5);
        }
        kotlin.reflect.jvm.internal.impl.resolve.c.d[] values = kotlin.reflect.jvm.internal.impl.resolve.c.d.values();
        int length = values.length;
        int i3 = 0;
        while (i3 < length) {
            kotlin.reflect.jvm.internal.impl.resolve.c.d dVar = values[i3];
            i3++;
            kotlin.reflect.jvm.internal.impl.c.a a29 = kotlin.reflect.jvm.internal.impl.c.a.a(dVar.getWrapperFqName());
            p.b(a29, "topLevel(jvmType.wrapperFqName)");
            j jVar = j.f37316a;
            h primitiveType = dVar.getPrimitiveType();
            p.b(primitiveType, "jvmType.primitiveType");
            kotlin.reflect.jvm.internal.impl.c.a a30 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a(primitiveType));
            p.b(a30, "topLevel(StandardNames.getPrimitiveFqName(jvmType.primitiveType))");
            a(a29, a30);
        }
        kotlin.reflect.jvm.internal.impl.builtins.b bVar9 = kotlin.reflect.jvm.internal.impl.builtins.b.f37282a;
        for (kotlin.reflect.jvm.internal.impl.c.a aVar12 : kotlin.reflect.jvm.internal.impl.builtins.b.b()) {
            kotlin.reflect.jvm.internal.impl.c.a a31 = kotlin.reflect.jvm.internal.impl.c.a.a(new b("kotlin.jvm.internal." + aVar12.c().a() + "CompanionObject"));
            p.b(a31, "topLevel(FqName(\"kotlin.jvm.internal.\" + classId.shortClassName.asString() + \"CompanionObject\"))");
            kotlin.reflect.jvm.internal.impl.c.a a32 = aVar12.a(g.f37348c);
            p.b(a32, "classId.createNestedClassId(SpecialNames.DEFAULT_NAME_FOR_COMPANION_OBJECT)");
            a(a31, a32);
        }
        int i4 = 0;
        while (true) {
            int i5 = i4 + 1;
            kotlin.reflect.jvm.internal.impl.c.a a33 = kotlin.reflect.jvm.internal.impl.c.a.a(new b(p.a("kotlin.jvm.functions.Function", (Object) Integer.valueOf(i4))));
            p.b(a33, "topLevel(FqName(\"kotlin.jvm.functions.Function$i\"))");
            j jVar2 = j.f37316a;
            a(a33, j.b(i4));
            a(new b(p.a(f37239c, (Object) Integer.valueOf(i4))), h);
            if (i5 >= 23) {
                break;
            }
            i4 = i5;
        }
        while (true) {
            i2++;
            kotlin.reflect.jvm.internal.impl.builtins.functions.b bVar10 = kotlin.reflect.jvm.internal.impl.builtins.functions.b.KSuspendFunction;
            a(new b(p.a(bVar10.getPackageFqName().toString() + '.' + bVar10.getClassNamePrefix(), (Object) Integer.valueOf(i2))), h);
            if (i2 >= 22) {
                b c2 = j.a.f37322c.c();
                p.b(c2, "nothing.toSafe()");
                a(c2, f37237a.a(Void.class));
                return;
            }
        }
    }

    private c() {
    }

    private final kotlin.reflect.jvm.internal.impl.c.a a(Class<?> cls) {
        boolean z = !cls.isPrimitive() && !cls.isArray();
        if (!x.f38657a || z) {
            Class<?> declaringClass = cls.getDeclaringClass();
            if (declaringClass == null) {
                kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.c.a.a(new b(cls.getCanonicalName()));
                p.b(a2, "topLevel(FqName(clazz.canonicalName))");
                return a2;
            }
            kotlin.reflect.jvm.internal.impl.c.a a3 = a(declaringClass).a(e.a(cls.getSimpleName()));
            p.b(a3, "classId(outer).createNestedClassId(Name.identifier(clazz.simpleName))");
            return a3;
        }
        throw new AssertionError(p.a("Invalid class: ", (Object) cls));
    }

    public static kotlin.reflect.jvm.internal.impl.c.a a(b fqName) {
        p.d(fqName, "fqName");
        return k.get(fqName.b());
    }

    public static kotlin.reflect.jvm.internal.impl.c.a a(kotlin.reflect.jvm.internal.impl.c.c kotlinFqName) {
        p.d(kotlinFqName, "kotlinFqName");
        if (!a(kotlinFqName, f37238b) && !a(kotlinFqName, f37240d)) {
            if (!a(kotlinFqName, f37239c) && !a(kotlinFqName, e)) {
                return l.get(kotlinFqName);
            }
            return h;
        }
        return f;
    }

    public static b a() {
        return g;
    }

    private final void a(Class<?> cls, b bVar) {
        kotlin.reflect.jvm.internal.impl.c.a a2 = a(cls);
        kotlin.reflect.jvm.internal.impl.c.a a3 = kotlin.reflect.jvm.internal.impl.c.a.a(bVar);
        p.b(a3, "topLevel(kotlinFqName)");
        a(a2, a3);
    }

    private final void a(Class<?> cls, kotlin.reflect.jvm.internal.impl.c.c cVar) {
        b c2 = cVar.c();
        p.b(c2, "kotlinFqName.toSafe()");
        a(cls, c2);
    }

    private static void a(kotlin.reflect.jvm.internal.impl.c.a aVar, kotlin.reflect.jvm.internal.impl.c.a aVar2) {
        HashMap<kotlin.reflect.jvm.internal.impl.c.c, kotlin.reflect.jvm.internal.impl.c.a> hashMap = k;
        kotlin.reflect.jvm.internal.impl.c.c b2 = aVar.f().b();
        p.b(b2, "javaClassId.asSingleFqName().toUnsafe()");
        hashMap.put(b2, aVar2);
        b f2 = aVar2.f();
        p.b(f2, "kotlinClassId.asSingleFqName()");
        a(f2, aVar);
    }

    private static void a(b bVar, kotlin.reflect.jvm.internal.impl.c.a aVar) {
        HashMap<kotlin.reflect.jvm.internal.impl.c.c, kotlin.reflect.jvm.internal.impl.c.a> hashMap = l;
        kotlin.reflect.jvm.internal.impl.c.c b2 = bVar.b();
        p.b(b2, "kotlinFqNameUnsafe.toUnsafe()");
        hashMap.put(b2, aVar);
    }

    private static boolean a(kotlin.reflect.jvm.internal.impl.c.c cVar, String str) {
        Integer e2;
        String a2 = cVar.a();
        p.b(a2, "kotlinFqName.asString()");
        String c2 = kotlin.h.p.c(a2, str, "");
        String str2 = c2;
        return (str2.length() > 0) && !kotlin.h.p.a((CharSequence) str2, '0', false) && (e2 = kotlin.h.p.e(c2)) != null && e2.intValue() >= 23;
    }

    public static List<a> b() {
        return o;
    }

    public static b b(kotlin.reflect.jvm.internal.impl.c.c cVar) {
        return m.get(cVar);
    }

    public static b c(kotlin.reflect.jvm.internal.impl.c.c cVar) {
        return n.get(cVar);
    }

    public static boolean d(kotlin.reflect.jvm.internal.impl.c.c cVar) {
        HashMap<kotlin.reflect.jvm.internal.impl.c.c, b> hashMap = m;
        Objects.requireNonNull(hashMap, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        return hashMap.containsKey(cVar);
    }

    public static boolean e(kotlin.reflect.jvm.internal.impl.c.c cVar) {
        HashMap<kotlin.reflect.jvm.internal.impl.c.c, b> hashMap = n;
        Objects.requireNonNull(hashMap, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        return hashMap.containsKey(cVar);
    }
}
