package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ai;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.kotlin.v;
import kotlin.reflect.jvm.internal.impl.resolve.c.d;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y.class */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private static final List<a.C0692a> f38012a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f38013b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f38014c;

    /* renamed from: d  reason: collision with root package name */
    private static final List<String> f38015d;
    private static final Map<a.C0692a, c> e;
    private static final Map<String, c> f;
    private static final Set<e> g;
    private static final Set<String> h;
    private static final a.C0692a i;
    private static final Map<a.C0692a, e> j;
    private static final Map<String, e> k;
    private static final List<e> l;
    private static final Map<e, List<e>> m;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$a.class */
    public static final class a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.y$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$a$a.class */
        public static final class C0692a {

            /* renamed from: a  reason: collision with root package name */
            final e f38016a;

            /* renamed from: b  reason: collision with root package name */
            final String f38017b;

            public C0692a(e name, String signature) {
                p.d(name, "name");
                p.d(signature, "signature");
                this.f38016a = name;
                this.f38017b = signature;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0692a)) {
                    return false;
                }
                C0692a aVar = (C0692a) obj;
                return p.a(this.f38016a, aVar.f38016a) && p.a((Object) this.f38017b, (Object) aVar.f38017b);
            }

            public final int hashCode() {
                return (this.f38016a.hashCode() * 31) + this.f38017b.hashCode();
            }

            public final String toString() {
                return "NameAndSignature(name=" + this.f38016a + ", signature=" + this.f38017b + ')';
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        static C0692a a(String str, String str2, String str3, String str4) {
            e a2 = e.a(str2);
            p.b(a2, "identifier(name)");
            v vVar = v.f38097a;
            return new C0692a(a2, v.a(str, str2 + '(' + str3 + ')' + str4));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$b.class */
    public enum b {
        ONE_COLLECTION_PARAMETER("Ljava/util/Collection<+Ljava/lang/Object;>;", false),
        OBJECT_PARAMETER_NON_GENERIC(null, true),
        OBJECT_PARAMETER_GENERIC("Ljava/lang/Object;", true);
        
        private final boolean isObjectReplacedWithTypeParameter;
        private final String valueParametersSignature;

        b(String str, boolean z) {
            this.valueParametersSignature = str;
            this.isObjectReplacedWithTypeParameter = z;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$c.class */
    public static final class c extends Enum<c> {
        private static final /* synthetic */ c[] $VALUES;
        public static final c FALSE;
        public static final c INDEX;
        public static final c MAP_GET_OR_DEFAULT;
        public static final c NULL;
        private final Object defaultValue;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$c$a.class */
        static final class a extends c {
            a(String str, int i) {
                super(str, i, null, null);
            }
        }

        static {
            c cVar = new c("NULL", 0, null);
            NULL = cVar;
            c cVar2 = new c("INDEX", 1, -1);
            INDEX = cVar2;
            c cVar3 = new c("FALSE", 2, Boolean.FALSE);
            FALSE = cVar3;
            a aVar = new a("MAP_GET_OR_DEFAULT", 3);
            MAP_GET_OR_DEFAULT = aVar;
            $VALUES = new c[]{cVar, cVar2, cVar3, aVar};
        }

        private c(String str, int i, Object obj) {
            this.defaultValue = obj;
        }

        public /* synthetic */ c(String str, int i, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, obj);
        }

        public static c valueOf(String value) {
            p.d(value, "value");
            return (c) Enum.valueOf(c.class, value);
        }

        public static c[] values() {
            c[] cVarArr = $VALUES;
            c[] cVarArr2 = new c[cVarArr.length];
            System.arraycopy(cVarArr, 0, cVarArr2, 0, cVarArr.length);
            return cVarArr2;
        }
    }

    static {
        Set<String> a2 = ap.a((Object[]) new String[]{"containsAll", "removeAll", "retainAll"});
        ArrayList arrayList = new ArrayList(n.a(a2, 10));
        for (String str : a2) {
            String desc = d.BOOLEAN.getDesc();
            p.b(desc, "BOOLEAN.desc");
            arrayList.add(a.a("java/util/Collection", str, "Ljava/util/Collection;", desc));
        }
        ArrayList arrayList2 = arrayList;
        f38012a = arrayList2;
        ArrayList<a.C0692a> arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList(n.a((Iterable) arrayList3, 10));
        for (a.C0692a aVar : arrayList3) {
            arrayList4.add(aVar.f38017b);
        }
        f38014c = arrayList4;
        List<a.C0692a> list = f38012a;
        ArrayList arrayList5 = new ArrayList(n.a((Iterable) list, 10));
        for (a.C0692a aVar2 : list) {
            arrayList5.add(aVar2.f38016a.a());
        }
        f38015d = arrayList5;
        v vVar = v.f38097a;
        String b2 = v.b("Collection");
        String desc2 = d.BOOLEAN.getDesc();
        p.b(desc2, "BOOLEAN.desc");
        kotlin.n a3 = t.a(a.a(b2, "contains", "Ljava/lang/Object;", desc2), c.FALSE);
        String b3 = v.b("Collection");
        String desc3 = d.BOOLEAN.getDesc();
        p.b(desc3, "BOOLEAN.desc");
        kotlin.n a4 = t.a(a.a(b3, "remove", "Ljava/lang/Object;", desc3), c.FALSE);
        String b4 = v.b("Map");
        String desc4 = d.BOOLEAN.getDesc();
        p.b(desc4, "BOOLEAN.desc");
        kotlin.n a5 = t.a(a.a(b4, "containsKey", "Ljava/lang/Object;", desc4), c.FALSE);
        String b5 = v.b("Map");
        String desc5 = d.BOOLEAN.getDesc();
        p.b(desc5, "BOOLEAN.desc");
        kotlin.n a6 = t.a(a.a(b5, "containsValue", "Ljava/lang/Object;", desc5), c.FALSE);
        String b6 = v.b("Map");
        String desc6 = d.BOOLEAN.getDesc();
        p.b(desc6, "BOOLEAN.desc");
        kotlin.n a7 = t.a(a.a(b6, "remove", "Ljava/lang/Object;Ljava/lang/Object;", desc6), c.FALSE);
        kotlin.n a8 = t.a(a.a(v.b("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), c.MAP_GET_OR_DEFAULT);
        kotlin.n a9 = t.a(a.a(v.b("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;"), c.NULL);
        kotlin.n a10 = t.a(a.a(v.b("Map"), "remove", "Ljava/lang/Object;", "Ljava/lang/Object;"), c.NULL);
        String b7 = v.b("List");
        String desc7 = d.INT.getDesc();
        p.b(desc7, "INT.desc");
        kotlin.n a11 = t.a(a.a(b7, "indexOf", "Ljava/lang/Object;", desc7), c.INDEX);
        String b8 = v.b("List");
        String desc8 = d.INT.getDesc();
        p.b(desc8, "INT.desc");
        Map<a.C0692a, c> a12 = ai.a(a3, a4, a5, a6, a7, a8, a9, a10, a11, t.a(a.a(b8, "lastIndexOf", "Ljava/lang/Object;", desc8), c.INDEX));
        e = a12;
        LinkedHashMap linkedHashMap = new LinkedHashMap(ai.a(a12.size()));
        Iterator<T> it2 = a12.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(((a.C0692a) entry.getKey()).f38017b, entry.getValue());
        }
        f = linkedHashMap;
        Set<a.C0692a> a13 = ap.a((Set) e.keySet(), (Iterable) f38012a);
        ArrayList arrayList6 = new ArrayList(n.a(a13, 10));
        for (a.C0692a aVar3 : a13) {
            arrayList6.add(aVar3.f38016a);
        }
        g = n.j((Iterable) arrayList6);
        ArrayList arrayList7 = new ArrayList(n.a(a13, 10));
        for (a.C0692a aVar4 : a13) {
            arrayList7.add(aVar4.f38017b);
        }
        h = n.j((Iterable) arrayList7);
        String desc9 = d.INT.getDesc();
        p.b(desc9, "INT.desc");
        a.C0692a a14 = a.a("java/util/List", "removeAt", desc9, "Ljava/lang/Object;");
        i = a14;
        v vVar2 = v.f38097a;
        String a15 = v.a("Number");
        String desc10 = d.BYTE.getDesc();
        p.b(desc10, "BYTE.desc");
        kotlin.n a16 = t.a(a.a(a15, "toByte", "", desc10), e.a("byteValue"));
        String a17 = v.a("Number");
        String desc11 = d.SHORT.getDesc();
        p.b(desc11, "SHORT.desc");
        kotlin.n a18 = t.a(a.a(a17, "toShort", "", desc11), e.a("shortValue"));
        String a19 = v.a("Number");
        String desc12 = d.INT.getDesc();
        p.b(desc12, "INT.desc");
        kotlin.n a20 = t.a(a.a(a19, "toInt", "", desc12), e.a("intValue"));
        String a21 = v.a("Number");
        String desc13 = d.LONG.getDesc();
        p.b(desc13, "LONG.desc");
        kotlin.n a22 = t.a(a.a(a21, "toLong", "", desc13), e.a("longValue"));
        String a23 = v.a("Number");
        String desc14 = d.FLOAT.getDesc();
        p.b(desc14, "FLOAT.desc");
        kotlin.n a24 = t.a(a.a(a23, "toFloat", "", desc14), e.a("floatValue"));
        String a25 = v.a("Number");
        String desc15 = d.DOUBLE.getDesc();
        p.b(desc15, "DOUBLE.desc");
        kotlin.n a26 = t.a(a.a(a25, "toDouble", "", desc15), e.a("doubleValue"));
        kotlin.n a27 = t.a(a14, e.a("remove"));
        String a28 = v.a("CharSequence");
        String desc16 = d.INT.getDesc();
        p.b(desc16, "INT.desc");
        String desc17 = d.CHAR.getDesc();
        p.b(desc17, "CHAR.desc");
        Map<a.C0692a, e> a29 = ai.a(a16, a18, a20, a22, a24, a26, a27, t.a(a.a(a28, "get", desc16, desc17), e.a("charAt")));
        j = a29;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(ai.a(a29.size()));
        Iterator<T> it3 = a29.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it3.next();
            linkedHashMap2.put(((a.C0692a) entry2.getKey()).f38017b, entry2.getValue());
        }
        k = linkedHashMap2;
        Set<a.C0692a> keySet = j.keySet();
        ArrayList arrayList8 = new ArrayList(n.a(keySet, 10));
        for (a.C0692a aVar5 : keySet) {
            arrayList8.add(aVar5.f38016a);
        }
        l = arrayList8;
        Set<Map.Entry<a.C0692a, e>> entrySet = j.entrySet();
        ArrayList arrayList9 = new ArrayList(n.a(entrySet, 10));
        Iterator<T> it4 = entrySet.iterator();
        while (it4.hasNext()) {
            Map.Entry entry3 = (Map.Entry) it4.next();
            arrayList9.add(new kotlin.n(((a.C0692a) entry3.getKey()).f38016a, entry3.getValue()));
        }
        ArrayList<kotlin.n> arrayList10 = arrayList9;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (kotlin.n nVar : arrayList10) {
            e eVar = (e) nVar.f36811b;
            Object obj = linkedHashMap3.get(eVar);
            ArrayList arrayList11 = obj;
            if (obj == null) {
                arrayList11 = new ArrayList();
                linkedHashMap3.put(eVar, arrayList11);
            }
            ((List) arrayList11).add((e) nVar.f36810a);
        }
        m = linkedHashMap3;
    }

    public static final /* synthetic */ List a() {
        return f38014c;
    }

    public static final /* synthetic */ Map b() {
        return f;
    }

    public static final /* synthetic */ Set c() {
        return g;
    }

    public static final /* synthetic */ Set d() {
        return h;
    }

    public static final /* synthetic */ List g() {
        return l;
    }
}
