package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/m.class */
public final class C19509m {

    /* renamed from: a */
    public static final C19509m f65494a = new C19509m();

    /* renamed from: b */
    private static final HashMap<C18961b, C18961b> f65495b = new HashMap<>();

    static {
        m2065a(C18954j.C18955a.f64613Y, m2064a("java.util.ArrayList", "java.util.LinkedList"));
        m2065a(C18954j.C18955a.f64621aa, m2064a("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        m2065a(C18954j.C18955a.f64622ab, m2064a("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        m2065a(new C18961b("java.util.function.Function"), m2064a("java.util.function.UnaryOperator"));
        m2065a(new C18961b("java.util.function.BiFunction"), m2064a("java.util.function.BinaryOperator"));
    }

    private C19509m() {
    }

    /* renamed from: a */
    private static List<C18961b> m2064a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(new C18961b(str));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static C18961b m2066a(C18961b classFqName) {
        C18524p.m3840d(classFqName, "classFqName");
        return f65495b.get(classFqName);
    }

    /* renamed from: a */
    private static void m2065a(C18961b c18961b, List<C18961b> list) {
        AbstractMap abstractMap = f65495b;
        for (Object obj : list) {
            abstractMap.put(obj, c18961b);
        }
    }
}
