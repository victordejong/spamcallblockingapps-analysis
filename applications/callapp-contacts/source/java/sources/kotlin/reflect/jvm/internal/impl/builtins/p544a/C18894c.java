package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.builtins.C18924b;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.builtins.functions.EnumC18933b;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18964d;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p545c.C18968g;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/c.class */
public final class C18894c {

    /* renamed from: a */
    public static final C18894c f64450a;

    /* renamed from: f */
    private static final C18960a f64455f;

    /* renamed from: g */
    private static final C18961b f64456g;

    /* renamed from: h */
    private static final C18960a f64457h;

    /* renamed from: i */
    private static final C18960a f64458i;

    /* renamed from: j */
    private static final C18960a f64459j;

    /* renamed from: o */
    private static final List<C18895a> f64464o;

    /* renamed from: b */
    private static final String f64451b = EnumC18933b.Function.getPackageFqName().toString() + '.' + EnumC18933b.Function.getClassNamePrefix();

    /* renamed from: c */
    private static final String f64452c = EnumC18933b.KFunction.getPackageFqName().toString() + '.' + EnumC18933b.KFunction.getClassNamePrefix();

    /* renamed from: d */
    private static final String f64453d = EnumC18933b.SuspendFunction.getPackageFqName().toString() + '.' + EnumC18933b.SuspendFunction.getClassNamePrefix();

    /* renamed from: e */
    private static final String f64454e = EnumC18933b.KSuspendFunction.getPackageFqName().toString() + '.' + EnumC18933b.KSuspendFunction.getClassNamePrefix();

    /* renamed from: k */
    private static final HashMap<C18962c, C18960a> f64460k = new HashMap<>();

    /* renamed from: l */
    private static final HashMap<C18962c, C18960a> f64461l = new HashMap<>();

    /* renamed from: m */
    private static final HashMap<C18962c, C18961b> f64462m = new HashMap<>();

    /* renamed from: n */
    private static final HashMap<C18962c, C18961b> f64463n = new HashMap<>();

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/c$a.class */
    public static final class C18895a {

        /* renamed from: a */
        public final C18960a f64465a;

        /* renamed from: b */
        final C18960a f64466b;

        /* renamed from: c */
        final C18960a f64467c;

        public C18895a(C18960a javaClass, C18960a kotlinReadOnly, C18960a kotlinMutable) {
            C18524p.m3840d(javaClass, "javaClass");
            C18524p.m3840d(kotlinReadOnly, "kotlinReadOnly");
            C18524p.m3840d(kotlinMutable, "kotlinMutable");
            this.f64465a = javaClass;
            this.f64466b = kotlinReadOnly;
            this.f64467c = kotlinMutable;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C18895a)) {
                return false;
            }
            C18895a c18895a = (C18895a) obj;
            return C18524p.m3850a(this.f64465a, c18895a.f64465a) && C18524p.m3850a(this.f64466b, c18895a.f64466b) && C18524p.m3850a(this.f64467c, c18895a.f64467c);
        }

        public final int hashCode() {
            return (((this.f64465a.hashCode() * 31) + this.f64466b.hashCode()) * 31) + this.f64467c.hashCode();
        }

        public final String toString() {
            return "PlatformMutabilityMapping(javaClass=" + this.f64465a + ", kotlinReadOnly=" + this.f64466b + ", kotlinMutable=" + this.f64467c + ')';
        }
    }

    static {
        C18894c c18894c = new C18894c();
        f64450a = c18894c;
        C18960a m2754a = C18960a.m2754a(new C18961b("kotlin.jvm.functions.FunctionN"));
        C18524p.m3843b(m2754a, "topLevel(FqName(\"kotlin.jvm.functions.FunctionN\"))");
        f64455f = m2754a;
        C18961b m2748f = m2754a.m2748f();
        C18524p.m3843b(m2748f, "FUNCTION_N_CLASS_ID.asSingleFqName()");
        f64456g = m2748f;
        C18960a m2754a2 = C18960a.m2754a(new C18961b("kotlin.reflect.KFunction"));
        C18524p.m3843b(m2754a2, "topLevel(FqName(\"kotlin.reflect.KFunction\"))");
        f64457h = m2754a2;
        C18960a m2754a3 = C18960a.m2754a(new C18961b("kotlin.reflect.KClass"));
        C18524p.m3843b(m2754a3, "topLevel(FqName(\"kotlin.reflect.KClass\"))");
        f64458i = m2754a3;
        f64459j = c18894c.m2909a(Class.class);
        C18960a m2754a4 = C18960a.m2754a(C18954j.C18955a.f64603O);
        C18524p.m3843b(m2754a4, "topLevel(FqNames.iterable)");
        C18961b c18961b = C18954j.C18955a.f64611W;
        C18961b m2758a = m2754a4.m2758a();
        C18961b m2758a2 = m2754a4.m2758a();
        C18524p.m3843b(m2758a2, "kotlinReadOnly.packageFqName");
        int i = 0;
        C18895a c18895a = new C18895a(c18894c.m2909a(Iterable.class), m2754a4, new C18960a(m2758a, C18964d.m2723a(c18961b, m2758a2), false));
        C18960a m2754a5 = C18960a.m2754a(C18954j.C18955a.f64602N);
        C18524p.m3843b(m2754a5, "topLevel(FqNames.iterator)");
        C18961b c18961b2 = C18954j.C18955a.f64610V;
        C18961b m2758a3 = m2754a5.m2758a();
        C18961b m2758a4 = m2754a5.m2758a();
        C18524p.m3843b(m2758a4, "kotlinReadOnly.packageFqName");
        C18895a c18895a2 = new C18895a(c18894c.m2909a(Iterator.class), m2754a5, new C18960a(m2758a3, C18964d.m2723a(c18961b2, m2758a4), false));
        C18960a m2754a6 = C18960a.m2754a(C18954j.C18955a.f64604P);
        C18524p.m3843b(m2754a6, "topLevel(FqNames.collection)");
        C18961b c18961b3 = C18954j.C18955a.f64612X;
        C18961b m2758a5 = m2754a6.m2758a();
        C18961b m2758a6 = m2754a6.m2758a();
        C18524p.m3843b(m2758a6, "kotlinReadOnly.packageFqName");
        C18895a c18895a3 = new C18895a(c18894c.m2909a(Collection.class), m2754a6, new C18960a(m2758a5, C18964d.m2723a(c18961b3, m2758a6), false));
        C18960a m2754a7 = C18960a.m2754a(C18954j.C18955a.f64605Q);
        C18524p.m3843b(m2754a7, "topLevel(FqNames.list)");
        C18961b c18961b4 = C18954j.C18955a.f64613Y;
        C18961b m2758a7 = m2754a7.m2758a();
        C18961b m2758a8 = m2754a7.m2758a();
        C18524p.m3843b(m2758a8, "kotlinReadOnly.packageFqName");
        C18895a c18895a4 = new C18895a(c18894c.m2909a(List.class), m2754a7, new C18960a(m2758a7, C18964d.m2723a(c18961b4, m2758a8), false));
        C18960a m2754a8 = C18960a.m2754a(C18954j.C18955a.f64607S);
        C18524p.m3843b(m2754a8, "topLevel(FqNames.set)");
        C18961b c18961b5 = C18954j.C18955a.f64621aa;
        C18961b m2758a9 = m2754a8.m2758a();
        C18961b m2758a10 = m2754a8.m2758a();
        C18524p.m3843b(m2758a10, "kotlinReadOnly.packageFqName");
        C18895a c18895a5 = new C18895a(c18894c.m2909a(Set.class), m2754a8, new C18960a(m2758a9, C18964d.m2723a(c18961b5, m2758a10), false));
        C18960a m2754a9 = C18960a.m2754a(C18954j.C18955a.f64606R);
        C18524p.m3843b(m2754a9, "topLevel(FqNames.listIterator)");
        C18961b c18961b6 = C18954j.C18955a.f64614Z;
        C18961b m2758a11 = m2754a9.m2758a();
        C18961b m2758a12 = m2754a9.m2758a();
        C18524p.m3843b(m2758a12, "kotlinReadOnly.packageFqName");
        C18895a c18895a6 = new C18895a(c18894c.m2909a(ListIterator.class), m2754a9, new C18960a(m2758a11, C18964d.m2723a(c18961b6, m2758a12), false));
        C18960a m2754a10 = C18960a.m2754a(C18954j.C18955a.f64608T);
        C18524p.m3843b(m2754a10, "topLevel(FqNames.map)");
        C18961b c18961b7 = C18954j.C18955a.f64622ab;
        C18961b m2758a13 = m2754a10.m2758a();
        C18961b m2758a14 = m2754a10.m2758a();
        C18524p.m3843b(m2758a14, "kotlinReadOnly.packageFqName");
        C18895a c18895a7 = new C18895a(c18894c.m2909a(Map.class), m2754a10, new C18960a(m2758a13, C18964d.m2723a(c18961b7, m2758a14), false));
        C18960a m2753a = C18960a.m2754a(C18954j.C18955a.f64608T).m2753a(C18954j.C18955a.f64609U.m2738e());
        C18524p.m3843b(m2753a, "topLevel(FqNames.map).createNestedClassId(FqNames.mapEntry.shortName())");
        C18961b c18961b8 = C18954j.C18955a.f64623ac;
        C18961b m2758a15 = m2753a.m2758a();
        C18961b m2758a16 = m2753a.m2758a();
        C18524p.m3843b(m2758a16, "kotlinReadOnly.packageFqName");
        List<C18895a> b = C18282n.m4167b((Object[]) new C18895a[]{c18895a, c18895a2, c18895a3, c18895a4, c18895a5, c18895a6, c18895a7, new C18895a(c18894c.m2909a(Map.Entry.class), m2753a, new C18960a(m2758a15, C18964d.m2723a(c18961b8, m2758a16), false))});
        f64464o = b;
        c18894c.m2907a(Object.class, C18954j.C18955a.f64647b);
        c18894c.m2907a(String.class, C18954j.C18955a.f64653h);
        c18894c.m2907a(CharSequence.class, C18954j.C18955a.f64652g);
        c18894c.m2908a(Throwable.class, C18954j.C18955a.f64666u);
        c18894c.m2907a(Cloneable.class, C18954j.C18955a.f64649d);
        c18894c.m2907a(Number.class, C18954j.C18955a.f64663r);
        c18894c.m2908a(Comparable.class, C18954j.C18955a.f64667v);
        c18894c.m2907a(Enum.class, C18954j.C18955a.f64664s);
        c18894c.m2908a(Annotation.class, C18954j.C18955a.f64593E);
        for (C18895a c18895a8 : b) {
            C18960a c18960a = c18895a8.f64465a;
            C18960a c18960a2 = c18895a8.f64466b;
            C18960a c18960a3 = c18895a8.f64467c;
            m2906a(c18960a, c18960a2);
            C18961b m2748f2 = c18960a3.m2748f();
            C18524p.m3843b(m2748f2, "mutableClassId.asSingleFqName()");
            m2904a(m2748f2, c18960a);
            C18961b m2748f3 = c18960a2.m2748f();
            C18524p.m3843b(m2748f3, "readOnlyClassId.asSingleFqName()");
            C18961b m2748f4 = c18960a3.m2748f();
            C18524p.m3843b(m2748f4, "mutableClassId.asSingleFqName()");
            HashMap<C18962c, C18961b> hashMap = f64462m;
            C18962c m2743b = c18960a3.m2748f().m2743b();
            C18524p.m3843b(m2743b, "mutableClassId.asSingleFqName().toUnsafe()");
            hashMap.put(m2743b, m2748f3);
            HashMap<C18962c, C18961b> hashMap2 = f64463n;
            C18962c m2743b2 = m2748f3.m2743b();
            C18524p.m3843b(m2743b2, "readOnlyFqName.toUnsafe()");
            hashMap2.put(m2743b2, m2748f4);
        }
        EnumC19767d[] values = EnumC19767d.values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            EnumC19767d enumC19767d = values[i2];
            i2++;
            C18960a m2754a11 = C18960a.m2754a(enumC19767d.getWrapperFqName());
            C18524p.m3843b(m2754a11, "topLevel(jvmType.wrapperFqName)");
            C18954j c18954j = C18954j.f64571a;
            EnumC18946h primitiveType = enumC19767d.getPrimitiveType();
            C18524p.m3843b(primitiveType, "jvmType.primitiveType");
            C18960a m2754a12 = C18960a.m2754a(C18954j.m2773a(primitiveType));
            C18524p.m3843b(m2754a12, "topLevel(StandardNames.getPrimitiveFqName(jvmType.primitiveType))");
            m2906a(m2754a11, m2754a12);
        }
        C18924b c18924b = C18924b.f64519a;
        for (C18960a c18960a4 : C18924b.m2864b()) {
            C18960a m2754a13 = C18960a.m2754a(new C18961b("kotlin.jvm.internal." + c18960a4.m2751c().m2721a() + "CompanionObject"));
            C18524p.m3843b(m2754a13, "topLevel(FqName(\"kotlin.jvm.internal.\" + classId.shortClassName.asString() + \"CompanionObject\"))");
            C18960a m2753a2 = c18960a4.m2753a(C18968g.f64702c);
            C18524p.m3843b(m2753a2, "classId.createNestedClassId(SpecialNames.DEFAULT_NAME_FOR_COMPANION_OBJECT)");
            m2906a(m2754a13, m2753a2);
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            int i5 = i4 + 1;
            C18960a m2754a14 = C18960a.m2754a(new C18961b(C18524p.m3847a("kotlin.jvm.functions.Function", (Object) Integer.valueOf(i4))));
            C18524p.m3843b(m2754a14, "topLevel(FqName(\"kotlin.jvm.functions.Function$i\"))");
            C18954j c18954j2 = C18954j.f64571a;
            m2906a(m2754a14, C18954j.m2771b(i4));
            m2904a(new C18961b(C18524p.m3847a(f64452c, (Object) Integer.valueOf(i4))), f64457h);
            if (i5 >= 23) {
                break;
            }
            i3 = i5;
        }
        while (true) {
            int i6 = i;
            i = i6 + 1;
            EnumC18933b enumC18933b = EnumC18933b.KSuspendFunction;
            m2904a(new C18961b(C18524p.m3847a(enumC18933b.getPackageFqName().toString() + '.' + enumC18933b.getClassNamePrefix(), (Object) Integer.valueOf(i6))), f64457h);
            if (i >= 22) {
                C18961b m2730c = C18954j.C18955a.f64648c.m2730c();
                C18524p.m3843b(m2730c, "nothing.toSafe()");
                m2904a(m2730c, f64450a.m2909a(Void.class));
                return;
            }
        }
    }

    private C18894c() {
    }

    /* renamed from: a */
    private final C18960a m2909a(Class<?> cls) {
        boolean z = !cls.isPrimitive() && !cls.isArray();
        if (!C20130x.f66532a || z) {
            Class<?> declaringClass = cls.getDeclaringClass();
            if (declaringClass == null) {
                C18960a m2754a = C18960a.m2754a(new C18961b(cls.getCanonicalName()));
                C18524p.m3843b(m2754a, "topLevel(FqName(clazz.canonicalName))");
                return m2754a;
            }
            C18960a m2753a = m2909a(declaringClass).m2753a(C18966e.m2719a(cls.getSimpleName()));
            C18524p.m3843b(m2753a, "classId(outer).createNestedClassId(Name.identifier(clazz.simpleName))");
            return m2753a;
        }
        throw new AssertionError(C18524p.m3847a("Invalid class: ", (Object) cls));
    }

    /* renamed from: a */
    public static C18960a m2905a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return f64460k.get(fqName.m2743b());
    }

    /* renamed from: a */
    public static C18960a m2903a(C18962c kotlinFqName) {
        C18524p.m3840d(kotlinFqName, "kotlinFqName");
        if (!m2902a(kotlinFqName, f64451b) && !m2902a(kotlinFqName, f64453d)) {
            if (!m2902a(kotlinFqName, f64452c) && !m2902a(kotlinFqName, f64454e)) {
                return f64461l.get(kotlinFqName);
            }
            return f64457h;
        }
        return f64455f;
    }

    /* renamed from: a */
    public static C18961b m2910a() {
        return f64456g;
    }

    /* renamed from: a */
    private final void m2908a(Class<?> cls, C18961b c18961b) {
        C18960a m2909a = m2909a(cls);
        C18960a m2754a = C18960a.m2754a(c18961b);
        C18524p.m3843b(m2754a, "topLevel(kotlinFqName)");
        m2906a(m2909a, m2754a);
    }

    /* renamed from: a */
    private final void m2907a(Class<?> cls, C18962c c18962c) {
        C18961b m2730c = c18962c.m2730c();
        C18524p.m3843b(m2730c, "kotlinFqName.toSafe()");
        m2908a(cls, m2730c);
    }

    /* renamed from: a */
    private static void m2906a(C18960a c18960a, C18960a c18960a2) {
        HashMap<C18962c, C18960a> hashMap = f64460k;
        C18962c m2743b = c18960a.m2748f().m2743b();
        C18524p.m3843b(m2743b, "javaClassId.asSingleFqName().toUnsafe()");
        hashMap.put(m2743b, c18960a2);
        C18961b m2748f = c18960a2.m2748f();
        C18524p.m3843b(m2748f, "kotlinClassId.asSingleFqName()");
        m2904a(m2748f, c18960a);
    }

    /* renamed from: a */
    private static void m2904a(C18961b c18961b, C18960a c18960a) {
        HashMap<C18962c, C18960a> hashMap = f64461l;
        C18962c m2743b = c18961b.m2743b();
        C18524p.m3843b(m2743b, "kotlinFqNameUnsafe.toUnsafe()");
        hashMap.put(m2743b, c18960a);
    }

    /* renamed from: a */
    private static boolean m2902a(C18962c c18962c, String str) {
        Integer e;
        String m2735a = c18962c.m2735a();
        C18524p.m3843b(m2735a, "kotlinFqName.asString()");
        String c = C18425p.m3916c(m2735a, str, "");
        String str2 = c;
        return (str2.length() > 0) && !C18425p.m3948a((CharSequence) str2, '0', false) && (e = C18425p.m3968e(c)) != null && e.intValue() >= 23;
    }

    /* renamed from: b */
    public static List<C18895a> m2901b() {
        return f64464o;
    }

    /* renamed from: b */
    public static C18961b m2900b(C18962c c18962c) {
        return f64462m.get(c18962c);
    }

    /* renamed from: c */
    public static C18961b m2899c(C18962c c18962c) {
        return f64463n.get(c18962c);
    }

    /* renamed from: d */
    public static boolean m2898d(C18962c c18962c) {
        HashMap<C18962c, C18961b> hashMap = f64462m;
        Objects.requireNonNull(hashMap, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        return hashMap.containsKey(c18962c);
    }

    /* renamed from: e */
    public static boolean m2897e(C18962c c18962c) {
        HashMap<C18962c, C18961b> hashMap = f64463n;
        Objects.requireNonNull(hashMap, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        return hashMap.containsKey(c18962c);
    }
}
