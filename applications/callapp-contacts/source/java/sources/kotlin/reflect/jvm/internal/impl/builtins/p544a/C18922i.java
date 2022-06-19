package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19660v;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/i.class */
public final class C18922i {

    /* renamed from: a */
    public static final C18922i f64512a = new C18922i();

    /* renamed from: b */
    private static final Set<String> f64513b = C18255ap.m4237a(C19660v.m1838b("Collection", "toArray()[Ljava/lang/Object;", "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"), "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;");

    /* renamed from: c */
    private static final Set<String> f64514c;

    /* renamed from: d */
    private static final Set<String> f64515d;

    /* renamed from: e */
    private static final Set<String> f64516e;

    /* renamed from: f */
    private static final Set<String> f64517f;

    /* renamed from: g */
    private static final Set<String> f64518g;

    static {
        C19660v c19660v = C19660v.f65767a;
        C19660v c19660v2 = C19660v.f65767a;
        C19660v c19660v3 = C19660v.f65767a;
        List<EnumC19767d> b = C18282n.m4167b((Object[]) new EnumC19767d[]{EnumC19767d.BOOLEAN, EnumC19767d.CHAR});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (EnumC19767d enumC19767d : b) {
            String m2721a = enumC19767d.getWrapperFqName().m2738e().m2721a();
            C18524p.m3843b(m2721a, "it.wrapperFqName.shortName().asString()");
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) C19660v.m1841a(m2721a, enumC19767d.getJavaKeywordName() + "Value()" + enumC19767d.getDesc()));
        }
        f64514c = C18255ap.m4238a(C18255ap.m4238a(C18255ap.m4238a(C18255ap.m4238a(C18255ap.m4238a(C18255ap.m4238a((Set) linkedHashSet, (Iterable) C19660v.m1838b("List", "sort(Ljava/util/Comparator;)V")), (Iterable) C19660v.m1841a("String", "codePointAt(I)I", "codePointBefore(I)I", "codePointCount(II)I", "compareToIgnoreCase(Ljava/lang/String;)I", "concat(Ljava/lang/String;)Ljava/lang/String;", "contains(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/StringBuffer;)Z", "endsWith(Ljava/lang/String;)Z", "equalsIgnoreCase(Ljava/lang/String;)Z", "getBytes()[B", "getBytes(II[BI)V", "getBytes(Ljava/lang/String;)[B", "getBytes(Ljava/nio/charset/Charset;)[B", "getChars(II[CI)V", "indexOf(I)I", "indexOf(II)I", "indexOf(Ljava/lang/String;)I", "indexOf(Ljava/lang/String;I)I", "intern()Ljava/lang/String;", "isEmpty()Z", "lastIndexOf(I)I", "lastIndexOf(II)I", "lastIndexOf(Ljava/lang/String;)I", "lastIndexOf(Ljava/lang/String;I)I", "matches(Ljava/lang/String;)Z", "offsetByCodePoints(II)I", "regionMatches(ILjava/lang/String;II)Z", "regionMatches(ZILjava/lang/String;II)Z", "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(CC)Ljava/lang/String;", "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", "split(Ljava/lang/String;I)[Ljava/lang/String;", "split(Ljava/lang/String;)[Ljava/lang/String;", "startsWith(Ljava/lang/String;I)Z", "startsWith(Ljava/lang/String;)Z", "substring(II)Ljava/lang/String;", "substring(I)Ljava/lang/String;", "toCharArray()[C", "toLowerCase()Ljava/lang/String;", "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;", "toUpperCase()Ljava/lang/String;", "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;", "trim()Ljava/lang/String;", "isBlank()Z", "lines()Ljava/util/stream/Stream;", "repeat(I)Ljava/lang/String;")), (Iterable) C19660v.m1841a("Double", "isInfinite()Z", "isNaN()Z")), (Iterable) C19660v.m1841a("Float", "isInfinite()Z", "isNaN()Z")), (Iterable) C19660v.m1841a("Enum", "getDeclaringClass()Ljava/lang/Class;", "finalize()V")), (Iterable) C19660v.m1841a("CharSequence", "isEmpty()Z"));
        C19660v c19660v4 = C19660v.f65767a;
        f64515d = C18255ap.m4238a(C18255ap.m4238a(C18255ap.m4238a(C18255ap.m4238a(C18255ap.m4238a(C18255ap.m4238a((Set) C19660v.m1841a("CharSequence", "codePoints()Ljava/util/stream/IntStream;", "chars()Ljava/util/stream/IntStream;"), (Iterable) C19660v.m1838b("Iterator", "forEachRemaining(Ljava/util/function/Consumer;)V")), (Iterable) C19660v.m1841a("Iterable", "forEach(Ljava/util/function/Consumer;)V", "spliterator()Ljava/util/Spliterator;")), (Iterable) C19660v.m1841a("Throwable", "setStackTrace([Ljava/lang/StackTraceElement;)V", "fillInStackTrace()Ljava/lang/Throwable;", "getLocalizedMessage()Ljava/lang/String;", "printStackTrace()V", "printStackTrace(Ljava/io/PrintStream;)V", "printStackTrace(Ljava/io/PrintWriter;)V", "getStackTrace()[Ljava/lang/StackTraceElement;", "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "getSuppressed()[Ljava/lang/Throwable;", "addSuppressed(Ljava/lang/Throwable;)V")), (Iterable) C19660v.m1838b("Collection", "spliterator()Ljava/util/Spliterator;", "parallelStream()Ljava/util/stream/Stream;", "stream()Ljava/util/stream/Stream;", "removeIf(Ljava/util/function/Predicate;)Z")), (Iterable) C19660v.m1838b("List", "replaceAll(Ljava/util/function/UnaryOperator;)V")), (Iterable) C19660v.m1838b("Map", "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "forEach(Ljava/util/function/BiConsumer;)V", "replaceAll(Ljava/util/function/BiFunction;)V", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"));
        C19660v c19660v5 = C19660v.f65767a;
        f64516e = C18255ap.m4238a(C18255ap.m4238a((Set) C19660v.m1838b("Collection", "removeIf(Ljava/util/function/Predicate;)Z"), (Iterable) C19660v.m1838b("List", "replaceAll(Ljava/util/function/UnaryOperator;)V", "sort(Ljava/util/Comparator;)V")), (Iterable) C19660v.m1838b("Map", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove(Ljava/lang/Object;Ljava/lang/Object;)Z", "replaceAll(Ljava/util/function/BiFunction;)V", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"));
        C19660v c19660v6 = C19660v.f65767a;
        Set<String> m2867g = m2867g();
        String[] m1840a = C19660v.m1840a("D");
        String[] strArr = new String[m1840a.length];
        System.arraycopy(m1840a, 0, strArr, 0, m1840a.length);
        Set a = C18255ap.m4238a((Set) m2867g, (Iterable) C19660v.m1841a("Float", strArr));
        String[] m1840a2 = C19660v.m1840a("[C", "[CII", "[III", "[BIILjava/lang/String;", "[BIILjava/nio/charset/Charset;", "[BLjava/lang/String;", "[BLjava/nio/charset/Charset;", "[BII", "[B", "Ljava/lang/StringBuffer;", "Ljava/lang/StringBuilder;");
        String[] strArr2 = new String[m1840a2.length];
        System.arraycopy(m1840a2, 0, strArr2, 0, m1840a2.length);
        f64517f = C18255ap.m4238a(a, (Iterable) C19660v.m1841a("String", strArr2));
        C19660v c19660v7 = C19660v.f65767a;
        String[] m1840a3 = C19660v.m1840a("Ljava/lang/String;Ljava/lang/Throwable;ZZ");
        String[] strArr3 = new String[m1840a3.length];
        System.arraycopy(m1840a3, 0, strArr3, 0, m1840a3.length);
        f64518g = C19660v.m1841a("Throwable", strArr3);
    }

    private C18922i() {
    }

    /* renamed from: a */
    public static Set<String> m2875a() {
        return f64513b;
    }

    /* renamed from: a */
    public static boolean m2874a(C18962c fqName) {
        C18524p.m3840d(fqName, "fqName");
        if (m2872b(fqName)) {
            return true;
        }
        C18894c c18894c = C18894c.f64450a;
        C18960a m2903a = C18894c.m2903a(fqName);
        if (m2903a == null) {
            return false;
        }
        try {
            return Serializable.class.isAssignableFrom(Class.forName(m2903a.m2748f().m2746a()));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static Set<String> m2873b() {
        return f64514c;
    }

    /* renamed from: b */
    public static boolean m2872b(C18962c fqName) {
        C18524p.m3840d(fqName, "fqName");
        if (!C18524p.m3850a(fqName, C18954j.C18955a.f64654i)) {
            C18954j c18954j = C18954j.f64571a;
            return C18954j.m2772a(fqName);
        }
        return true;
    }

    /* renamed from: c */
    public static Set<String> m2871c() {
        return f64515d;
    }

    /* renamed from: d */
    public static Set<String> m2870d() {
        return f64516e;
    }

    /* renamed from: e */
    public static Set<String> m2869e() {
        return f64517f;
    }

    /* renamed from: f */
    public static Set<String> m2868f() {
        return f64518g;
    }

    /* renamed from: g */
    private static Set<String> m2867g() {
        C19660v c19660v = C19660v.f65767a;
        List<EnumC19767d> b = C18282n.m4167b((Object[]) new EnumC19767d[]{EnumC19767d.BOOLEAN, EnumC19767d.BYTE, EnumC19767d.DOUBLE, EnumC19767d.FLOAT, EnumC19767d.BYTE, EnumC19767d.INT, EnumC19767d.LONG, EnumC19767d.SHORT});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (EnumC19767d enumC19767d : b) {
            String m2721a = enumC19767d.getWrapperFqName().m2738e().m2721a();
            C18524p.m3843b(m2721a, "it.wrapperFqName.shortName().asString()");
            String[] m1840a = C19660v.m1840a("Ljava/lang/String;");
            String[] strArr = new String[m1840a.length];
            System.arraycopy(m1840a, 0, strArr, 0, m1840a.length);
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) C19660v.m1841a(m2721a, strArr));
        }
        return linkedHashSet;
    }
}
