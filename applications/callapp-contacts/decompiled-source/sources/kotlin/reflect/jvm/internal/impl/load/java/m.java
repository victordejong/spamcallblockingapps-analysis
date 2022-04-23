package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final m f37894a = new m();

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<b, b> f37895b = new HashMap<>();

    static {
        a(j.a.Y, a("java.util.ArrayList", "java.util.LinkedList"));
        a(j.a.aa, a("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        a(j.a.ab, a("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        a(new b("java.util.function.Function"), a("java.util.function.UnaryOperator"));
        a(new b("java.util.function.BiFunction"), a("java.util.function.BinaryOperator"));
    }

    private m() {
    }

    private static List<b> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(new b(str));
        }
        return arrayList;
    }

    public static b a(b classFqName) {
        p.d(classFqName, "classFqName");
        return f37895b.get(classFqName);
    }

    private static void a(b bVar, List<b> list) {
        AbstractMap abstractMap = f37895b;
        for (Object obj : list) {
            abstractMap.put(obj, bVar);
        }
    }
}
