package kotlin.reflect.jvm.internal.impl.builtins.a;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.load.kotlin.v;
import kotlin.reflect.jvm.internal.impl.resolve.c.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f37278a = new i();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f37279b = ap.a(v.b("Collection", "toArray()[Ljava/lang/Object;", "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"), "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;");

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f37280c;

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f37281d;
    private static final Set<String> e;
    private static final Set<String> f;
    private static final Set<String> g;

    static {
        v vVar = v.f38097a;
        v vVar2 = v.f38097a;
        v vVar3 = v.f38097a;
        List<d> b2 = n.b((Object[]) new d[]{d.BOOLEAN, d.CHAR});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (d dVar : b2) {
            String a2 = dVar.getWrapperFqName().e().a();
            p.b(a2, "it.wrapperFqName.shortName().asString()");
            n.a((Collection) linkedHashSet, (Iterable) v.a(a2, dVar.getJavaKeywordName() + "Value()" + dVar.getDesc()));
        }
        f37280c = ap.a(ap.a(ap.a(ap.a(ap.a(ap.a((Set) linkedHashSet, (Iterable) v.b("List", "sort(Ljava/util/Comparator;)V")), (Iterable) v.a("String", "codePointAt(I)I", "codePointBefore(I)I", "codePointCount(II)I", "compareToIgnoreCase(Ljava/lang/String;)I", "concat(Ljava/lang/String;)Ljava/lang/String;", "contains(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/StringBuffer;)Z", "endsWith(Ljava/lang/String;)Z", "equalsIgnoreCase(Ljava/lang/String;)Z", "getBytes()[B", "getBytes(II[BI)V", "getBytes(Ljava/lang/String;)[B", "getBytes(Ljava/nio/charset/Charset;)[B", "getChars(II[CI)V", "indexOf(I)I", "indexOf(II)I", "indexOf(Ljava/lang/String;)I", "indexOf(Ljava/lang/String;I)I", "intern()Ljava/lang/String;", "isEmpty()Z", "lastIndexOf(I)I", "lastIndexOf(II)I", "lastIndexOf(Ljava/lang/String;)I", "lastIndexOf(Ljava/lang/String;I)I", "matches(Ljava/lang/String;)Z", "offsetByCodePoints(II)I", "regionMatches(ILjava/lang/String;II)Z", "regionMatches(ZILjava/lang/String;II)Z", "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(CC)Ljava/lang/String;", "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", "split(Ljava/lang/String;I)[Ljava/lang/String;", "split(Ljava/lang/String;)[Ljava/lang/String;", "startsWith(Ljava/lang/String;I)Z", "startsWith(Ljava/lang/String;)Z", "substring(II)Ljava/lang/String;", "substring(I)Ljava/lang/String;", "toCharArray()[C", "toLowerCase()Ljava/lang/String;", "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;", "toUpperCase()Ljava/lang/String;", "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;", "trim()Ljava/lang/String;", "isBlank()Z", "lines()Ljava/util/stream/Stream;", "repeat(I)Ljava/lang/String;")), (Iterable) v.a("Double", "isInfinite()Z", "isNaN()Z")), (Iterable) v.a("Float", "isInfinite()Z", "isNaN()Z")), (Iterable) v.a("Enum", "getDeclaringClass()Ljava/lang/Class;", "finalize()V")), (Iterable) v.a("CharSequence", "isEmpty()Z"));
        v vVar4 = v.f38097a;
        f37281d = ap.a(ap.a(ap.a(ap.a(ap.a(ap.a((Set) v.a("CharSequence", "codePoints()Ljava/util/stream/IntStream;", "chars()Ljava/util/stream/IntStream;"), (Iterable) v.b("Iterator", "forEachRemaining(Ljava/util/function/Consumer;)V")), (Iterable) v.a("Iterable", "forEach(Ljava/util/function/Consumer;)V", "spliterator()Ljava/util/Spliterator;")), (Iterable) v.a("Throwable", "setStackTrace([Ljava/lang/StackTraceElement;)V", "fillInStackTrace()Ljava/lang/Throwable;", "getLocalizedMessage()Ljava/lang/String;", "printStackTrace()V", "printStackTrace(Ljava/io/PrintStream;)V", "printStackTrace(Ljava/io/PrintWriter;)V", "getStackTrace()[Ljava/lang/StackTraceElement;", "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "getSuppressed()[Ljava/lang/Throwable;", "addSuppressed(Ljava/lang/Throwable;)V")), (Iterable) v.b("Collection", "spliterator()Ljava/util/Spliterator;", "parallelStream()Ljava/util/stream/Stream;", "stream()Ljava/util/stream/Stream;", "removeIf(Ljava/util/function/Predicate;)Z")), (Iterable) v.b("List", "replaceAll(Ljava/util/function/UnaryOperator;)V")), (Iterable) v.b("Map", "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "forEach(Ljava/util/function/BiConsumer;)V", "replaceAll(Ljava/util/function/BiFunction;)V", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"));
        v vVar5 = v.f38097a;
        e = ap.a(ap.a((Set) v.b("Collection", "removeIf(Ljava/util/function/Predicate;)Z"), (Iterable) v.b("List", "replaceAll(Ljava/util/function/UnaryOperator;)V", "sort(Ljava/util/Comparator;)V")), (Iterable) v.b("Map", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove(Ljava/lang/Object;Ljava/lang/Object;)Z", "replaceAll(Ljava/util/function/BiFunction;)V", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"));
        v vVar6 = v.f38097a;
        Set<String> g2 = g();
        String[] a3 = v.a("D");
        String[] strArr = new String[a3.length];
        System.arraycopy(a3, 0, strArr, 0, a3.length);
        Set a4 = ap.a((Set) g2, (Iterable) v.a("Float", strArr));
        String[] a5 = v.a("[C", "[CII", "[III", "[BIILjava/lang/String;", "[BIILjava/nio/charset/Charset;", "[BLjava/lang/String;", "[BLjava/nio/charset/Charset;", "[BII", "[B", "Ljava/lang/StringBuffer;", "Ljava/lang/StringBuilder;");
        String[] strArr2 = new String[a5.length];
        System.arraycopy(a5, 0, strArr2, 0, a5.length);
        f = ap.a(a4, (Iterable) v.a("String", strArr2));
        v vVar7 = v.f38097a;
        String[] a6 = v.a("Ljava/lang/String;Ljava/lang/Throwable;ZZ");
        String[] strArr3 = new String[a6.length];
        System.arraycopy(a6, 0, strArr3, 0, a6.length);
        g = v.a("Throwable", strArr3);
    }

    private i() {
    }

    public static Set<String> a() {
        return f37279b;
    }

    public static boolean a(c fqName) {
        p.d(fqName, "fqName");
        if (b(fqName)) {
            return true;
        }
        c cVar = c.f37237a;
        a a2 = c.a(fqName);
        if (a2 == null) {
            return false;
        }
        try {
            return Serializable.class.isAssignableFrom(Class.forName(a2.f().a()));
        } catch (ClassNotFoundException e2) {
            return false;
        }
    }

    public static Set<String> b() {
        return f37280c;
    }

    public static boolean b(c fqName) {
        p.d(fqName, "fqName");
        if (p.a(fqName, j.a.i)) {
            return true;
        }
        j jVar = j.f37316a;
        return j.a(fqName);
    }

    public static Set<String> c() {
        return f37281d;
    }

    public static Set<String> d() {
        return e;
    }

    public static Set<String> e() {
        return f;
    }

    public static Set<String> f() {
        return g;
    }

    private static Set<String> g() {
        v vVar = v.f38097a;
        List<d> b2 = n.b((Object[]) new d[]{d.BOOLEAN, d.BYTE, d.DOUBLE, d.FLOAT, d.BYTE, d.INT, d.LONG, d.SHORT});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (d dVar : b2) {
            String a2 = dVar.getWrapperFqName().e().a();
            p.b(a2, "it.wrapperFqName.shortName().asString()");
            String[] a3 = v.a("Ljava/lang/String;");
            String[] strArr = new String[a3.length];
            System.arraycopy(a3, 0, strArr, 0, a3.length);
            n.a((Collection) linkedHashSet, (Iterable) v.a(a2, strArr));
        }
        return linkedHashSet;
    }
}
