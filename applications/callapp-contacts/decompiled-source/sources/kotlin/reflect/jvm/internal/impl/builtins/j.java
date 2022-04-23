package kotlin.reflect.jvm.internal.impl.builtins;

import com.callapp.contacts.model.Constants;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/j.class */
public final class j {

    /* renamed from: b  reason: collision with root package name */
    public static final e f37317b;

    /* renamed from: c  reason: collision with root package name */
    public static final e f37318c;

    /* renamed from: d  reason: collision with root package name */
    public static final b f37319d;
    public static final b e;
    public static final b f;
    public static final b g;
    public static final b h;
    public static final b j;
    public static final e l;
    public static final b m;
    public static final b n;
    public static final b o;
    public static final b p;
    public static final b q;
    public static final Set<b> r;

    /* renamed from: a  reason: collision with root package name */
    public static final j f37316a = new j();
    public static final b i = new b("kotlin.Result");
    public static final List<String> k = n.b((Object[]) new String[]{"KProperty", "KMutableProperty", "KFunction", "KSuspendFunction"});

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/j$a.class */
    public static final class a {
        public static final b T;
        public static final b U;
        public static final Set<e> aB;
        public static final Set<e> aC;
        public static final Map<c, h> aD;
        public static final Map<c, h> aE;
        public static final b ab;
        public static final b ac;
        public static final c al;
        public static final kotlin.reflect.jvm.internal.impl.c.a an;
        public static final b ap;
        public static final b aq;
        public static final b ar;
        public static final b as;
        public static final kotlin.reflect.jvm.internal.impl.c.a at;
        public static final kotlin.reflect.jvm.internal.impl.c.a au;
        public static final kotlin.reflect.jvm.internal.impl.c.a av;
        public static final kotlin.reflect.jvm.internal.impl.c.a aw;

        /* renamed from: a  reason: collision with root package name */
        public static final a f37320a = new a();

        /* renamed from: b  reason: collision with root package name */
        public static final c f37321b = a("Any");

        /* renamed from: c  reason: collision with root package name */
        public static final c f37322c = a("Nothing");

        /* renamed from: d  reason: collision with root package name */
        public static final c f37323d = a("Cloneable");
        public static final b e = b("Suppress");
        public static final c f = a("Unit");
        public static final c g = a("CharSequence");
        public static final c h = a("String");
        public static final c i = a("Array");
        public static final c j = a("Boolean");
        public static final c k = a("Char");
        public static final c l = a("Byte");
        public static final c m = a("Short");
        public static final c n = a("Int");
        public static final c o = a("Long");
        public static final c p = a("Float");
        public static final c q = a("Double");
        public static final c r = a("Number");
        public static final c s = a("Enum");
        public static final c t = a("Function");
        public static final b u = b("Throwable");
        public static final b v = b("Comparable");
        public static final c w = d("IntRange");
        public static final c x = d("LongRange");
        public static final b y = b("Deprecated");
        public static final b z = b("DeprecatedSinceKotlin");
        public static final b A = b("DeprecationLevel");
        public static final b B = b("ReplaceWith");
        public static final b C = b("ExtensionFunctionType");
        public static final b D = b("ParameterName");
        public static final b E = b("Annotation");
        public static final b F = f("Target");
        public static final b G = f("AnnotationTarget");
        public static final b H = f("AnnotationRetention");
        public static final b I = f(Constants.RETENTION);
        public static final b J = f("Repeatable");
        public static final b K = f("MustBeDocumented");
        public static final b L = b("UnsafeVariance");
        public static final b M = b("PublishedApi");
        public static final b N = c("Iterator");
        public static final b O = c("Iterable");
        public static final b P = c("Collection");
        public static final b Q = c("List");
        public static final b R = c("ListIterator");
        public static final b S = c("Set");
        public static final b V = c("MutableIterator");
        public static final b W = c("MutableIterable");
        public static final b X = c("MutableCollection");
        public static final b Y = c("MutableList");
        public static final b Z = c("MutableListIterator");
        public static final b aa = c("MutableSet");
        public static final c ad = e("KClass");
        public static final c ae = e("KCallable");
        public static final c af = e("KProperty0");
        public static final c ag = e("KProperty1");
        public static final c ah = e("KProperty2");
        public static final c ai = e("KMutableProperty0");
        public static final c aj = e("KMutableProperty1");
        public static final c ak = e("KMutableProperty2");
        public static final c am = e("KMutableProperty");
        public static final c ao = e("KDeclarationContainer");
        public static final b ax = b("UByteArray");
        public static final b ay = b("UShortArray");
        public static final b az = b("UIntArray");
        public static final b aA = b("ULongArray");

        static {
            b c2 = c("Map");
            T = c2;
            b a2 = c2.a(e.a("Entry"));
            p.b(a2, "map.child(Name.identifier(\"Entry\"))");
            U = a2;
            b c3 = c("MutableMap");
            ab = c3;
            b a3 = c3.a(e.a("MutableEntry"));
            p.b(a3, "mutableMap.child(Name.identifier(\"MutableEntry\"))");
            ac = a3;
            c e2 = e("KProperty");
            al = e2;
            kotlin.reflect.jvm.internal.impl.c.a a4 = kotlin.reflect.jvm.internal.impl.c.a.a(e2.c());
            p.b(a4, "topLevel(kPropertyFqName.toSafe())");
            an = a4;
            b b2 = b("UByte");
            ap = b2;
            b b3 = b("UShort");
            aq = b3;
            b b4 = b("UInt");
            ar = b4;
            b b5 = b("ULong");
            as = b5;
            kotlin.reflect.jvm.internal.impl.c.a a5 = kotlin.reflect.jvm.internal.impl.c.a.a(b2);
            p.b(a5, "topLevel(uByteFqName)");
            at = a5;
            kotlin.reflect.jvm.internal.impl.c.a a6 = kotlin.reflect.jvm.internal.impl.c.a.a(b3);
            p.b(a6, "topLevel(uShortFqName)");
            au = a6;
            kotlin.reflect.jvm.internal.impl.c.a a7 = kotlin.reflect.jvm.internal.impl.c.a.a(b4);
            p.b(a7, "topLevel(uIntFqName)");
            av = a7;
            kotlin.reflect.jvm.internal.impl.c.a a8 = kotlin.reflect.jvm.internal.impl.c.a.a(b5);
            p.b(a8, "topLevel(uLongFqName)");
            aw = a8;
            HashSet b6 = kotlin.reflect.jvm.internal.impl.utils.a.b(h.values().length);
            int i2 = 0;
            for (h hVar : h.values()) {
                b6.add(hVar.getTypeName());
            }
            aB = b6;
            HashSet b7 = kotlin.reflect.jvm.internal.impl.utils.a.b(h.values().length);
            for (h hVar2 : h.values()) {
                b7.add(hVar2.getArrayTypeName());
            }
            aC = b7;
            HashMap a9 = kotlin.reflect.jvm.internal.impl.utils.a.a(h.values().length);
            h[] values = h.values();
            int length = values.length;
            int i3 = 0;
            while (i3 < length) {
                h hVar3 = values[i3];
                i3++;
                HashMap hashMap = a9;
                String a10 = hVar3.getTypeName().a();
                p.b(a10, "primitiveType.typeName.asString()");
                hashMap.put(a(a10), hVar3);
            }
            aD = a9;
            HashMap a11 = kotlin.reflect.jvm.internal.impl.utils.a.a(h.values().length);
            h[] values2 = h.values();
            int length2 = values2.length;
            while (i2 < length2) {
                h hVar4 = values2[i2];
                i2++;
                HashMap hashMap2 = a11;
                String a12 = hVar4.getArrayTypeName().a();
                p.b(a12, "primitiveType.arrayTypeName.asString()");
                hashMap2.put(a(a12), hVar4);
            }
            aE = a11;
        }

        private a() {
        }

        private static c a(String str) {
            c b2 = b(str).b();
            p.b(b2, "fqName(simpleName).toUnsafe()");
            return b2;
        }

        private static b b(String str) {
            b a2 = j.m.a(e.a(str));
            p.b(a2, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(simpleName))");
            return a2;
        }

        private static b c(String str) {
            b a2 = j.o.a(e.a(str));
            p.b(a2, "COLLECTIONS_PACKAGE_FQ_NAME.child(Name.identifier(simpleName))");
            return a2;
        }

        private static c d(String str) {
            c b2 = j.p.a(e.a(str)).b();
            p.b(b2, "RANGES_PACKAGE_FQ_NAME.child(Name.identifier(simpleName)).toUnsafe()");
            return b2;
        }

        private static c e(String simpleName) {
            p.d(simpleName, "simpleName");
            c b2 = j.j.a(e.a(simpleName)).b();
            p.b(b2, "KOTLIN_REFLECT_FQ_NAME.child(Name.identifier(simpleName)).toUnsafe()");
            return b2;
        }

        private static b f(String str) {
            b a2 = j.n.a(e.a(str));
            p.b(a2, "ANNOTATION_PACKAGE_FQ_NAME.child(Name.identifier(simpleName))");
            return a2;
        }
    }

    static {
        e a2 = e.a("values");
        p.b(a2, "identifier(\"values\")");
        f37317b = a2;
        e a3 = e.a("valueOf");
        p.b(a3, "identifier(\"valueOf\")");
        f37318c = a3;
        b bVar = new b("kotlin.coroutines");
        f37319d = bVar;
        b a4 = bVar.a(e.a("experimental"));
        p.b(a4, "COROUTINES_PACKAGE_FQ_NAME_RELEASE.child(Name.identifier(\"experimental\"))");
        e = a4;
        b a5 = a4.a(e.a("intrinsics"));
        p.b(a5, "COROUTINES_PACKAGE_FQ_NAME_EXPERIMENTAL.child(Name.identifier(\"intrinsics\"))");
        f = a5;
        b a6 = a4.a(e.a("Continuation"));
        p.b(a6, "COROUTINES_PACKAGE_FQ_NAME_EXPERIMENTAL.child(Name.identifier(\"Continuation\"))");
        g = a6;
        b a7 = bVar.a(e.a("Continuation"));
        p.b(a7, "COROUTINES_PACKAGE_FQ_NAME_RELEASE.child(Name.identifier(\"Continuation\"))");
        h = a7;
        b bVar2 = new b("kotlin.reflect");
        j = bVar2;
        e a8 = e.a("kotlin");
        p.b(a8, "identifier(\"kotlin\")");
        l = a8;
        b c2 = b.c(a8);
        p.b(c2, "topLevel(BUILT_INS_PACKAGE_NAME)");
        m = c2;
        b a9 = c2.a(e.a("annotation"));
        p.b(a9, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"annotation\"))");
        n = a9;
        b a10 = c2.a(e.a("collections"));
        p.b(a10, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"collections\"))");
        o = a10;
        b a11 = c2.a(e.a("ranges"));
        p.b(a11, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"ranges\"))");
        p = a11;
        b a12 = c2.a(e.a("text"));
        p.b(a12, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"text\"))");
        q = a12;
        b a13 = c2.a(e.a("internal"));
        p.b(a13, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"internal\"))");
        r = ap.a((Object[]) new b[]{c2, a10, a11, a9, bVar2, a13, bVar});
    }

    private j() {
    }

    public static final String a(int i2) {
        return p.a("Function", (Object) Integer.valueOf(i2));
    }

    public static final b a(h primitiveType) {
        p.d(primitiveType, "primitiveType");
        b a2 = m.a(primitiveType.getTypeName());
        p.b(a2, "BUILT_INS_PACKAGE_FQ_NAME.child(primitiveType.typeName)");
        return a2;
    }

    public static final boolean a(c arrayFqName) {
        p.d(arrayFqName, "arrayFqName");
        return a.aE.get(arrayFqName) != null;
    }

    public static final kotlin.reflect.jvm.internal.impl.c.a b(int i2) {
        return new kotlin.reflect.jvm.internal.impl.c.a(m, e.a(a(i2)));
    }

    public static final String c(int i2) {
        return p.a(kotlin.reflect.jvm.internal.impl.builtins.functions.b.SuspendFunction.getClassNamePrefix(), (Object) Integer.valueOf(i2));
    }
}
