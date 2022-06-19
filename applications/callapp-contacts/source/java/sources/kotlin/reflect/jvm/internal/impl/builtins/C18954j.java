package kotlin.reflect.jvm.internal.impl.builtins;

import com.callapp.contacts.model.Constants;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.functions.EnumC18933b;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/j.class */
public final class C18954j {

    /* renamed from: b */
    public static final C18966e f64572b;

    /* renamed from: c */
    public static final C18966e f64573c;

    /* renamed from: d */
    public static final C18961b f64574d;

    /* renamed from: e */
    public static final C18961b f64575e;

    /* renamed from: f */
    public static final C18961b f64576f;

    /* renamed from: g */
    public static final C18961b f64577g;

    /* renamed from: h */
    public static final C18961b f64578h;

    /* renamed from: j */
    public static final C18961b f64580j;

    /* renamed from: l */
    public static final C18966e f64582l;

    /* renamed from: m */
    public static final C18961b f64583m;

    /* renamed from: n */
    public static final C18961b f64584n;

    /* renamed from: o */
    public static final C18961b f64585o;

    /* renamed from: p */
    public static final C18961b f64586p;

    /* renamed from: q */
    public static final C18961b f64587q;

    /* renamed from: r */
    public static final Set<C18961b> f64588r;

    /* renamed from: a */
    public static final C18954j f64571a = new C18954j();

    /* renamed from: i */
    public static final C18961b f64579i = new C18961b("kotlin.Result");

    /* renamed from: k */
    public static final List<String> f64581k = C18282n.m4167b((Object[]) new String[]{"KProperty", "KMutableProperty", "KFunction", "KSuspendFunction"});

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.j$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/j$a.class */
    public static final class C18955a {

        /* renamed from: T */
        public static final C18961b f64608T;

        /* renamed from: U */
        public static final C18961b f64609U;

        /* renamed from: aB */
        public static final Set<C18966e> f64617aB;

        /* renamed from: aC */
        public static final Set<C18966e> f64618aC;

        /* renamed from: aD */
        public static final Map<C18962c, EnumC18946h> f64619aD;

        /* renamed from: aE */
        public static final Map<C18962c, EnumC18946h> f64620aE;

        /* renamed from: ab */
        public static final C18961b f64622ab;

        /* renamed from: ac */
        public static final C18961b f64623ac;

        /* renamed from: al */
        public static final C18962c f64632al;

        /* renamed from: an */
        public static final C18960a f64634an;

        /* renamed from: ap */
        public static final C18961b f64636ap;

        /* renamed from: aq */
        public static final C18961b f64637aq;

        /* renamed from: ar */
        public static final C18961b f64638ar;

        /* renamed from: as */
        public static final C18961b f64639as;

        /* renamed from: at */
        public static final C18960a f64640at;

        /* renamed from: au */
        public static final C18960a f64641au;

        /* renamed from: av */
        public static final C18960a f64642av;

        /* renamed from: aw */
        public static final C18960a f64643aw;

        /* renamed from: a */
        public static final C18955a f64615a = new C18955a();

        /* renamed from: b */
        public static final C18962c f64647b = m2769a("Any");

        /* renamed from: c */
        public static final C18962c f64648c = m2769a("Nothing");

        /* renamed from: d */
        public static final C18962c f64649d = m2769a("Cloneable");

        /* renamed from: e */
        public static final C18961b f64650e = m2768b("Suppress");

        /* renamed from: f */
        public static final C18962c f64651f = m2769a("Unit");

        /* renamed from: g */
        public static final C18962c f64652g = m2769a("CharSequence");

        /* renamed from: h */
        public static final C18962c f64653h = m2769a("String");

        /* renamed from: i */
        public static final C18962c f64654i = m2769a("Array");

        /* renamed from: j */
        public static final C18962c f64655j = m2769a("Boolean");

        /* renamed from: k */
        public static final C18962c f64656k = m2769a("Char");

        /* renamed from: l */
        public static final C18962c f64657l = m2769a("Byte");

        /* renamed from: m */
        public static final C18962c f64658m = m2769a("Short");

        /* renamed from: n */
        public static final C18962c f64659n = m2769a("Int");

        /* renamed from: o */
        public static final C18962c f64660o = m2769a("Long");

        /* renamed from: p */
        public static final C18962c f64661p = m2769a("Float");

        /* renamed from: q */
        public static final C18962c f64662q = m2769a("Double");

        /* renamed from: r */
        public static final C18962c f64663r = m2769a("Number");

        /* renamed from: s */
        public static final C18962c f64664s = m2769a("Enum");

        /* renamed from: t */
        public static final C18962c f64665t = m2769a("Function");

        /* renamed from: u */
        public static final C18961b f64666u = m2768b("Throwable");

        /* renamed from: v */
        public static final C18961b f64667v = m2768b("Comparable");

        /* renamed from: w */
        public static final C18962c f64668w = m2766d("IntRange");

        /* renamed from: x */
        public static final C18962c f64669x = m2766d("LongRange");

        /* renamed from: y */
        public static final C18961b f64670y = m2768b("Deprecated");

        /* renamed from: z */
        public static final C18961b f64671z = m2768b("DeprecatedSinceKotlin");

        /* renamed from: A */
        public static final C18961b f64589A = m2768b("DeprecationLevel");

        /* renamed from: B */
        public static final C18961b f64590B = m2768b("ReplaceWith");

        /* renamed from: C */
        public static final C18961b f64591C = m2768b("ExtensionFunctionType");

        /* renamed from: D */
        public static final C18961b f64592D = m2768b("ParameterName");

        /* renamed from: E */
        public static final C18961b f64593E = m2768b("Annotation");

        /* renamed from: F */
        public static final C18961b f64594F = m2764f("Target");

        /* renamed from: G */
        public static final C18961b f64595G = m2764f("AnnotationTarget");

        /* renamed from: H */
        public static final C18961b f64596H = m2764f("AnnotationRetention");

        /* renamed from: I */
        public static final C18961b f64597I = m2764f(Constants.RETENTION);

        /* renamed from: J */
        public static final C18961b f64598J = m2764f("Repeatable");

        /* renamed from: K */
        public static final C18961b f64599K = m2764f("MustBeDocumented");

        /* renamed from: L */
        public static final C18961b f64600L = m2768b("UnsafeVariance");

        /* renamed from: M */
        public static final C18961b f64601M = m2768b("PublishedApi");

        /* renamed from: N */
        public static final C18961b f64602N = m2767c("Iterator");

        /* renamed from: O */
        public static final C18961b f64603O = m2767c("Iterable");

        /* renamed from: P */
        public static final C18961b f64604P = m2767c("Collection");

        /* renamed from: Q */
        public static final C18961b f64605Q = m2767c("List");

        /* renamed from: R */
        public static final C18961b f64606R = m2767c("ListIterator");

        /* renamed from: S */
        public static final C18961b f64607S = m2767c("Set");

        /* renamed from: V */
        public static final C18961b f64610V = m2767c("MutableIterator");

        /* renamed from: W */
        public static final C18961b f64611W = m2767c("MutableIterable");

        /* renamed from: X */
        public static final C18961b f64612X = m2767c("MutableCollection");

        /* renamed from: Y */
        public static final C18961b f64613Y = m2767c("MutableList");

        /* renamed from: Z */
        public static final C18961b f64614Z = m2767c("MutableListIterator");

        /* renamed from: aa */
        public static final C18961b f64621aa = m2767c("MutableSet");

        /* renamed from: ad */
        public static final C18962c f64624ad = m2765e("KClass");

        /* renamed from: ae */
        public static final C18962c f64625ae = m2765e("KCallable");

        /* renamed from: af */
        public static final C18962c f64626af = m2765e("KProperty0");

        /* renamed from: ag */
        public static final C18962c f64627ag = m2765e("KProperty1");

        /* renamed from: ah */
        public static final C18962c f64628ah = m2765e("KProperty2");

        /* renamed from: ai */
        public static final C18962c f64629ai = m2765e("KMutableProperty0");

        /* renamed from: aj */
        public static final C18962c f64630aj = m2765e("KMutableProperty1");

        /* renamed from: ak */
        public static final C18962c f64631ak = m2765e("KMutableProperty2");

        /* renamed from: am */
        public static final C18962c f64633am = m2765e("KMutableProperty");

        /* renamed from: ao */
        public static final C18962c f64635ao = m2765e("KDeclarationContainer");

        /* renamed from: ax */
        public static final C18961b f64644ax = m2768b("UByteArray");

        /* renamed from: ay */
        public static final C18961b f64645ay = m2768b("UShortArray");

        /* renamed from: az */
        public static final C18961b f64646az = m2768b("UIntArray");

        /* renamed from: aA */
        public static final C18961b f64616aA = m2768b("ULongArray");

        static {
            C18961b m2767c = m2767c("Map");
            f64608T = m2767c;
            C18961b m2744a = m2767c.m2744a(C18966e.m2719a("Entry"));
            C18524p.m3843b(m2744a, "map.child(Name.identifier(\"Entry\"))");
            f64609U = m2744a;
            C18961b m2767c2 = m2767c("MutableMap");
            f64622ab = m2767c2;
            C18961b m2744a2 = m2767c2.m2744a(C18966e.m2719a("MutableEntry"));
            C18524p.m3843b(m2744a2, "mutableMap.child(Name.identifier(\"MutableEntry\"))");
            f64623ac = m2744a2;
            C18962c m2765e = m2765e("KProperty");
            f64632al = m2765e;
            C18960a m2754a = C18960a.m2754a(m2765e.m2730c());
            C18524p.m3843b(m2754a, "topLevel(kPropertyFqName.toSafe())");
            f64634an = m2754a;
            C18961b m2768b = m2768b("UByte");
            f64636ap = m2768b;
            C18961b m2768b2 = m2768b("UShort");
            f64637aq = m2768b2;
            C18961b m2768b3 = m2768b("UInt");
            f64638ar = m2768b3;
            C18961b m2768b4 = m2768b("ULong");
            f64639as = m2768b4;
            C18960a m2754a2 = C18960a.m2754a(m2768b);
            C18524p.m3843b(m2754a2, "topLevel(uByteFqName)");
            f64640at = m2754a2;
            C18960a m2754a3 = C18960a.m2754a(m2768b2);
            C18524p.m3843b(m2754a3, "topLevel(uShortFqName)");
            f64641au = m2754a3;
            C18960a m2754a4 = C18960a.m2754a(m2768b3);
            C18524p.m3843b(m2754a4, "topLevel(uIntFqName)");
            f64642av = m2754a4;
            C18960a m2754a5 = C18960a.m2754a(m2768b4);
            C18524p.m3843b(m2754a5, "topLevel(uLongFqName)");
            f64643aw = m2754a5;
            HashSet m1207b = C19999a.m1207b(EnumC18946h.values().length);
            for (EnumC18946h enumC18946h : EnumC18946h.values()) {
                m1207b.add(enumC18946h.getTypeName());
            }
            f64617aB = m1207b;
            HashSet m1207b2 = C19999a.m1207b(EnumC18946h.values().length);
            for (EnumC18946h enumC18946h2 : EnumC18946h.values()) {
                m1207b2.add(enumC18946h2.getArrayTypeName());
            }
            f64618aC = m1207b2;
            HashMap m1211a = C19999a.m1211a(EnumC18946h.values().length);
            EnumC18946h[] values = EnumC18946h.values();
            int length = values.length;
            int i = 0;
            while (i < length) {
                EnumC18946h enumC18946h3 = values[i];
                i++;
                HashMap hashMap = m1211a;
                String m2721a = enumC18946h3.getTypeName().m2721a();
                C18524p.m3843b(m2721a, "primitiveType.typeName.asString()");
                hashMap.put(m2769a(m2721a), enumC18946h3);
            }
            f64619aD = m1211a;
            HashMap m1211a2 = C19999a.m1211a(EnumC18946h.values().length);
            EnumC18946h[] values2 = EnumC18946h.values();
            int length2 = values2.length;
            int i2 = 0;
            while (i2 < length2) {
                EnumC18946h enumC18946h4 = values2[i2];
                i2++;
                HashMap hashMap2 = m1211a2;
                String m2721a2 = enumC18946h4.getArrayTypeName().m2721a();
                C18524p.m3843b(m2721a2, "primitiveType.arrayTypeName.asString()");
                hashMap2.put(m2769a(m2721a2), enumC18946h4);
            }
            f64620aE = m1211a2;
        }

        private C18955a() {
        }

        /* renamed from: a */
        private static C18962c m2769a(String str) {
            C18962c m2743b = m2768b(str).m2743b();
            C18524p.m3843b(m2743b, "fqName(simpleName).toUnsafe()");
            return m2743b;
        }

        /* renamed from: b */
        private static C18961b m2768b(String str) {
            C18961b m2744a = C18954j.f64583m.m2744a(C18966e.m2719a(str));
            C18524p.m3843b(m2744a, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(simpleName))");
            return m2744a;
        }

        /* renamed from: c */
        private static C18961b m2767c(String str) {
            C18961b m2744a = C18954j.f64585o.m2744a(C18966e.m2719a(str));
            C18524p.m3843b(m2744a, "COLLECTIONS_PACKAGE_FQ_NAME.child(Name.identifier(simpleName))");
            return m2744a;
        }

        /* renamed from: d */
        private static C18962c m2766d(String str) {
            C18962c m2743b = C18954j.f64586p.m2744a(C18966e.m2719a(str)).m2743b();
            C18524p.m3843b(m2743b, "RANGES_PACKAGE_FQ_NAME.child(Name.identifier(simpleName)).toUnsafe()");
            return m2743b;
        }

        /* renamed from: e */
        private static C18962c m2765e(String simpleName) {
            C18524p.m3840d(simpleName, "simpleName");
            C18962c m2743b = C18954j.f64580j.m2744a(C18966e.m2719a(simpleName)).m2743b();
            C18524p.m3843b(m2743b, "KOTLIN_REFLECT_FQ_NAME.child(Name.identifier(simpleName)).toUnsafe()");
            return m2743b;
        }

        /* renamed from: f */
        private static C18961b m2764f(String str) {
            C18961b m2744a = C18954j.f64584n.m2744a(C18966e.m2719a(str));
            C18524p.m3843b(m2744a, "ANNOTATION_PACKAGE_FQ_NAME.child(Name.identifier(simpleName))");
            return m2744a;
        }
    }

    static {
        C18966e m2719a = C18966e.m2719a("values");
        C18524p.m3843b(m2719a, "identifier(\"values\")");
        f64572b = m2719a;
        C18966e m2719a2 = C18966e.m2719a("valueOf");
        C18524p.m3843b(m2719a2, "identifier(\"valueOf\")");
        f64573c = m2719a2;
        C18961b c18961b = new C18961b("kotlin.coroutines");
        f64574d = c18961b;
        C18961b m2744a = c18961b.m2744a(C18966e.m2719a("experimental"));
        C18524p.m3843b(m2744a, "COROUTINES_PACKAGE_FQ_NAME_RELEASE.child(Name.identifier(\"experimental\"))");
        f64575e = m2744a;
        C18961b m2744a2 = m2744a.m2744a(C18966e.m2719a("intrinsics"));
        C18524p.m3843b(m2744a2, "COROUTINES_PACKAGE_FQ_NAME_EXPERIMENTAL.child(Name.identifier(\"intrinsics\"))");
        f64576f = m2744a2;
        C18961b m2744a3 = m2744a.m2744a(C18966e.m2719a("Continuation"));
        C18524p.m3843b(m2744a3, "COROUTINES_PACKAGE_FQ_NAME_EXPERIMENTAL.child(Name.identifier(\"Continuation\"))");
        f64577g = m2744a3;
        C18961b m2744a4 = c18961b.m2744a(C18966e.m2719a("Continuation"));
        C18524p.m3843b(m2744a4, "COROUTINES_PACKAGE_FQ_NAME_RELEASE.child(Name.identifier(\"Continuation\"))");
        f64578h = m2744a4;
        C18961b c18961b2 = new C18961b("kotlin.reflect");
        f64580j = c18961b2;
        C18966e m2719a3 = C18966e.m2719a("kotlin");
        C18524p.m3843b(m2719a3, "identifier(\"kotlin\")");
        f64582l = m2719a3;
        C18961b m2740c = C18961b.m2740c(m2719a3);
        C18524p.m3843b(m2740c, "topLevel(BUILT_INS_PACKAGE_NAME)");
        f64583m = m2740c;
        C18961b m2744a5 = m2740c.m2744a(C18966e.m2719a("annotation"));
        C18524p.m3843b(m2744a5, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"annotation\"))");
        f64584n = m2744a5;
        C18961b m2744a6 = m2740c.m2744a(C18966e.m2719a("collections"));
        C18524p.m3843b(m2744a6, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"collections\"))");
        f64585o = m2744a6;
        C18961b m2744a7 = m2740c.m2744a(C18966e.m2719a("ranges"));
        C18524p.m3843b(m2744a7, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"ranges\"))");
        f64586p = m2744a7;
        C18961b m2744a8 = m2740c.m2744a(C18966e.m2719a("text"));
        C18524p.m3843b(m2744a8, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"text\"))");
        f64587q = m2744a8;
        C18961b m2744a9 = m2740c.m2744a(C18966e.m2719a("internal"));
        C18524p.m3843b(m2744a9, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"internal\"))");
        f64588r = C18255ap.m4239a((Object[]) new C18961b[]{m2740c, m2744a6, m2744a7, m2744a5, c18961b2, m2744a9, c18961b});
    }

    private C18954j() {
    }

    /* renamed from: a */
    public static final String m2774a(int i) {
        return C18524p.m3847a("Function", (Object) Integer.valueOf(i));
    }

    /* renamed from: a */
    public static final C18961b m2773a(EnumC18946h primitiveType) {
        C18524p.m3840d(primitiveType, "primitiveType");
        C18961b m2744a = f64583m.m2744a(primitiveType.getTypeName());
        C18524p.m3843b(m2744a, "BUILT_INS_PACKAGE_FQ_NAME.child(primitiveType.typeName)");
        return m2744a;
    }

    /* renamed from: a */
    public static final boolean m2772a(C18962c arrayFqName) {
        C18524p.m3840d(arrayFqName, "arrayFqName");
        return C18955a.f64620aE.get(arrayFqName) != null;
    }

    /* renamed from: b */
    public static final C18960a m2771b(int i) {
        return new C18960a(f64583m, C18966e.m2719a(m2774a(i)));
    }

    /* renamed from: c */
    public static final String m2770c(int i) {
        return C18524p.m3847a(EnumC18933b.SuspendFunction.getClassNamePrefix(), (Object) Integer.valueOf(i));
    }
}
