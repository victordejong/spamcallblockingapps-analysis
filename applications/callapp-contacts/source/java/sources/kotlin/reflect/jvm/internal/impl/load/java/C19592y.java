package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19660v;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.y */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y.class */
public class C19592y {

    /* renamed from: a */
    private static final List<C19593a.C19594a> f65645a;

    /* renamed from: b */
    public static final C19593a f65646b = new C19593a(null);

    /* renamed from: c */
    private static final List<String> f65647c;

    /* renamed from: d */
    private static final List<String> f65648d;

    /* renamed from: e */
    private static final Map<C19593a.C19594a, EnumC19596c> f65649e;

    /* renamed from: f */
    private static final Map<String, EnumC19596c> f65650f;

    /* renamed from: g */
    private static final Set<C18966e> f65651g;

    /* renamed from: h */
    private static final Set<String> f65652h;

    /* renamed from: i */
    private static final C19593a.C19594a f65653i;

    /* renamed from: j */
    private static final Map<C19593a.C19594a, C18966e> f65654j;

    /* renamed from: k */
    private static final Map<String, C18966e> f65655k;

    /* renamed from: l */
    private static final List<C18966e> f65656l;

    /* renamed from: m */
    private static final Map<C18966e, List<C18966e>> f65657m;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.y$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$a.class */
    public static final class C19593a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.y$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$a$a.class */
        public static final class C19594a {

            /* renamed from: a */
            final C18966e f65658a;

            /* renamed from: b */
            final String f65659b;

            public C19594a(C18966e name, String signature) {
                C18524p.m3840d(name, "name");
                C18524p.m3840d(signature, "signature");
                this.f65658a = name;
                this.f65659b = signature;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C19594a)) {
                    return false;
                }
                C19594a c19594a = (C19594a) obj;
                return C18524p.m3850a(this.f65658a, c19594a.f65658a) && C18524p.m3850a((Object) this.f65659b, (Object) c19594a.f65659b);
            }

            public final int hashCode() {
                return (this.f65658a.hashCode() * 31) + this.f65659b.hashCode();
            }

            public final String toString() {
                return "NameAndSignature(name=" + this.f65658a + ", signature=" + this.f65659b + ')';
            }
        }

        private C19593a() {
        }

        public /* synthetic */ C19593a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        static C19594a m1956a(String str, String str2, String str3, String str4) {
            C18966e m2719a = C18966e.m2719a(str2);
            C18524p.m3843b(m2719a, "identifier(name)");
            C19660v c19660v = C19660v.f65767a;
            return new C19594a(m2719a, C19660v.m1843a(str, str2 + '(' + str3 + ')' + str4));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.y$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$b.class */
    public enum EnumC19595b {
        ONE_COLLECTION_PARAMETER("Ljava/util/Collection<+Ljava/lang/Object;>;", false),
        OBJECT_PARAMETER_NON_GENERIC(null, true),
        OBJECT_PARAMETER_GENERIC("Ljava/lang/Object;", true);
        
        private final boolean isObjectReplacedWithTypeParameter;
        private final String valueParametersSignature;

        EnumC19595b(String str, boolean z) {
            this.valueParametersSignature = str;
            this.isObjectReplacedWithTypeParameter = z;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.y$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$c.class */
    public static final class EnumC19596c extends Enum<EnumC19596c> {
        private static final /* synthetic */ EnumC19596c[] $VALUES;
        public static final EnumC19596c FALSE;
        public static final EnumC19596c INDEX;
        public static final EnumC19596c MAP_GET_OR_DEFAULT;
        public static final EnumC19596c NULL;
        private final Object defaultValue;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.y$c$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/y$c$a.class */
        static final class C19597a extends EnumC19596c {
            C19597a(String str, int i) {
                super(str, i, null, null);
            }
        }

        static {
            EnumC19596c enumC19596c = new EnumC19596c("NULL", 0, null);
            NULL = enumC19596c;
            EnumC19596c enumC19596c2 = new EnumC19596c("INDEX", 1, -1);
            INDEX = enumC19596c2;
            EnumC19596c enumC19596c3 = new EnumC19596c("FALSE", 2, Boolean.FALSE);
            FALSE = enumC19596c3;
            C19597a c19597a = new C19597a("MAP_GET_OR_DEFAULT", 3);
            MAP_GET_OR_DEFAULT = c19597a;
            $VALUES = new EnumC19596c[]{enumC19596c, enumC19596c2, enumC19596c3, c19597a};
        }

        private EnumC19596c(String str, int i, Object obj) {
            super(str, i);
            this.defaultValue = obj;
        }

        public /* synthetic */ EnumC19596c(String str, int i, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, obj);
        }

        public static EnumC19596c valueOf(String value) {
            C18524p.m3840d(value, "value");
            return (EnumC19596c) Enum.valueOf(EnumC19596c.class, value);
        }

        public static EnumC19596c[] values() {
            EnumC19596c[] enumC19596cArr = $VALUES;
            EnumC19596c[] enumC19596cArr2 = new EnumC19596c[enumC19596cArr.length];
            System.arraycopy(enumC19596cArr, 0, enumC19596cArr2, 0, enumC19596cArr.length);
            return enumC19596cArr2;
        }
    }

    static {
        Set<String> a = C18255ap.m4239a((Object[]) new String[]{"containsAll", "removeAll", "retainAll"});
        ArrayList arrayList = new ArrayList(C18282n.m4163a(a, 10));
        for (String str : a) {
            String desc = EnumC19767d.BOOLEAN.getDesc();
            C18524p.m3843b(desc, "BOOLEAN.desc");
            arrayList.add(C19593a.m1956a("java/util/Collection", str, "Ljava/util/Collection;", desc));
        }
        ArrayList arrayList2 = arrayList;
        f65645a = arrayList2;
        ArrayList<C19593a.C19594a> arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList(C18282n.m4163a((Iterable) arrayList3, 10));
        for (C19593a.C19594a c19594a : arrayList3) {
            arrayList4.add(c19594a.f65659b);
        }
        f65647c = arrayList4;
        List<C19593a.C19594a> list = f65645a;
        ArrayList arrayList5 = new ArrayList(C18282n.m4163a((Iterable) list, 10));
        for (C19593a.C19594a c19594a2 : list) {
            arrayList5.add(c19594a2.f65658a.m2721a());
        }
        f65648d = arrayList5;
        C19660v c19660v = C19660v.f65767a;
        String m1839b = C19660v.m1839b("Collection");
        String desc2 = EnumC19767d.BOOLEAN.getDesc();
        C18524p.m3843b(desc2, "BOOLEAN.desc");
        C18538n m1103a = C20126t.m1103a(C19593a.m1956a(m1839b, "contains", "Ljava/lang/Object;", desc2), EnumC19596c.FALSE);
        String m1839b2 = C19660v.m1839b("Collection");
        String desc3 = EnumC19767d.BOOLEAN.getDesc();
        C18524p.m3843b(desc3, "BOOLEAN.desc");
        C18538n m1103a2 = C20126t.m1103a(C19593a.m1956a(m1839b2, "remove", "Ljava/lang/Object;", desc3), EnumC19596c.FALSE);
        String m1839b3 = C19660v.m1839b("Map");
        String desc4 = EnumC19767d.BOOLEAN.getDesc();
        C18524p.m3843b(desc4, "BOOLEAN.desc");
        C18538n m1103a3 = C20126t.m1103a(C19593a.m1956a(m1839b3, "containsKey", "Ljava/lang/Object;", desc4), EnumC19596c.FALSE);
        String m1839b4 = C19660v.m1839b("Map");
        String desc5 = EnumC19767d.BOOLEAN.getDesc();
        C18524p.m3843b(desc5, "BOOLEAN.desc");
        C18538n m1103a4 = C20126t.m1103a(C19593a.m1956a(m1839b4, "containsValue", "Ljava/lang/Object;", desc5), EnumC19596c.FALSE);
        String m1839b5 = C19660v.m1839b("Map");
        String desc6 = EnumC19767d.BOOLEAN.getDesc();
        C18524p.m3843b(desc6, "BOOLEAN.desc");
        C18538n m1103a5 = C20126t.m1103a(C19593a.m1956a(m1839b5, "remove", "Ljava/lang/Object;Ljava/lang/Object;", desc6), EnumC19596c.FALSE);
        C18538n m1103a6 = C20126t.m1103a(C19593a.m1956a(C19660v.m1839b("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), EnumC19596c.MAP_GET_OR_DEFAULT);
        C18538n m1103a7 = C20126t.m1103a(C19593a.m1956a(C19660v.m1839b("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;"), EnumC19596c.NULL);
        C18538n m1103a8 = C20126t.m1103a(C19593a.m1956a(C19660v.m1839b("Map"), "remove", "Ljava/lang/Object;", "Ljava/lang/Object;"), EnumC19596c.NULL);
        String m1839b6 = C19660v.m1839b("List");
        String desc7 = EnumC19767d.INT.getDesc();
        C18524p.m3843b(desc7, "INT.desc");
        C18538n m1103a9 = C20126t.m1103a(C19593a.m1956a(m1839b6, "indexOf", "Ljava/lang/Object;", desc7), EnumC19596c.INDEX);
        String m1839b7 = C19660v.m1839b("List");
        String desc8 = EnumC19767d.INT.getDesc();
        C18524p.m3843b(desc8, "INT.desc");
        Map<C19593a.C19594a, EnumC19596c> a2 = C18247ai.m4251a(m1103a, m1103a2, m1103a3, m1103a4, m1103a5, m1103a6, m1103a7, m1103a8, m1103a9, C20126t.m1103a(C19593a.m1956a(m1839b7, "lastIndexOf", "Ljava/lang/Object;", desc8), EnumC19596c.INDEX));
        f65649e = a2;
        LinkedHashMap linkedHashMap = new LinkedHashMap(C18247ai.m4260a(a2.size()));
        Iterator<T> it2 = a2.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(((C19593a.C19594a) entry.getKey()).f65659b, entry.getValue());
        }
        f65650f = linkedHashMap;
        Set<C19593a.C19594a> a3 = C18255ap.m4238a((Set) f65649e.keySet(), (Iterable) f65645a);
        ArrayList arrayList6 = new ArrayList(C18282n.m4163a(a3, 10));
        for (C19593a.C19594a c19594a3 : a3) {
            arrayList6.add(c19594a3.f65658a);
        }
        f65651g = C18282n.m4114j((Iterable) arrayList6);
        ArrayList arrayList7 = new ArrayList(C18282n.m4163a(a3, 10));
        for (C19593a.C19594a c19594a4 : a3) {
            arrayList7.add(c19594a4.f65659b);
        }
        f65652h = C18282n.m4114j((Iterable) arrayList7);
        String desc9 = EnumC19767d.INT.getDesc();
        C18524p.m3843b(desc9, "INT.desc");
        C19593a.C19594a m1956a = C19593a.m1956a("java/util/List", "removeAt", desc9, "Ljava/lang/Object;");
        f65653i = m1956a;
        C19660v c19660v2 = C19660v.f65767a;
        String m1844a = C19660v.m1844a("Number");
        String desc10 = EnumC19767d.BYTE.getDesc();
        C18524p.m3843b(desc10, "BYTE.desc");
        C18538n m1103a10 = C20126t.m1103a(C19593a.m1956a(m1844a, "toByte", "", desc10), C18966e.m2719a("byteValue"));
        String m1844a2 = C19660v.m1844a("Number");
        String desc11 = EnumC19767d.SHORT.getDesc();
        C18524p.m3843b(desc11, "SHORT.desc");
        C18538n m1103a11 = C20126t.m1103a(C19593a.m1956a(m1844a2, "toShort", "", desc11), C18966e.m2719a("shortValue"));
        String m1844a3 = C19660v.m1844a("Number");
        String desc12 = EnumC19767d.INT.getDesc();
        C18524p.m3843b(desc12, "INT.desc");
        C18538n m1103a12 = C20126t.m1103a(C19593a.m1956a(m1844a3, "toInt", "", desc12), C18966e.m2719a("intValue"));
        String m1844a4 = C19660v.m1844a("Number");
        String desc13 = EnumC19767d.LONG.getDesc();
        C18524p.m3843b(desc13, "LONG.desc");
        C18538n m1103a13 = C20126t.m1103a(C19593a.m1956a(m1844a4, "toLong", "", desc13), C18966e.m2719a("longValue"));
        String m1844a5 = C19660v.m1844a("Number");
        String desc14 = EnumC19767d.FLOAT.getDesc();
        C18524p.m3843b(desc14, "FLOAT.desc");
        C18538n m1103a14 = C20126t.m1103a(C19593a.m1956a(m1844a5, "toFloat", "", desc14), C18966e.m2719a("floatValue"));
        String m1844a6 = C19660v.m1844a("Number");
        String desc15 = EnumC19767d.DOUBLE.getDesc();
        C18524p.m3843b(desc15, "DOUBLE.desc");
        C18538n m1103a15 = C20126t.m1103a(C19593a.m1956a(m1844a6, "toDouble", "", desc15), C18966e.m2719a("doubleValue"));
        C18538n m1103a16 = C20126t.m1103a(m1956a, C18966e.m2719a("remove"));
        String m1844a7 = C19660v.m1844a("CharSequence");
        String desc16 = EnumC19767d.INT.getDesc();
        C18524p.m3843b(desc16, "INT.desc");
        String desc17 = EnumC19767d.CHAR.getDesc();
        C18524p.m3843b(desc17, "CHAR.desc");
        Map<C19593a.C19594a, C18966e> a4 = C18247ai.m4251a(m1103a10, m1103a11, m1103a12, m1103a13, m1103a14, m1103a15, m1103a16, C20126t.m1103a(C19593a.m1956a(m1844a7, "get", desc16, desc17), C18966e.m2719a("charAt")));
        f65654j = a4;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(C18247ai.m4260a(a4.size()));
        Iterator<T> it3 = a4.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it3.next();
            linkedHashMap2.put(((C19593a.C19594a) entry2.getKey()).f65659b, entry2.getValue());
        }
        f65655k = linkedHashMap2;
        Set<C19593a.C19594a> keySet = f65654j.keySet();
        ArrayList arrayList8 = new ArrayList(C18282n.m4163a(keySet, 10));
        for (C19593a.C19594a c19594a5 : keySet) {
            arrayList8.add(c19594a5.f65658a);
        }
        f65656l = arrayList8;
        Set<Map.Entry<C19593a.C19594a, C18966e>> entrySet = f65654j.entrySet();
        ArrayList arrayList9 = new ArrayList(C18282n.m4163a(entrySet, 10));
        Iterator<T> it4 = entrySet.iterator();
        while (it4.hasNext()) {
            Map.Entry entry3 = (Map.Entry) it4.next();
            arrayList9.add(new C18538n(((C19593a.C19594a) entry3.getKey()).f65658a, entry3.getValue()));
        }
        ArrayList<C18538n> arrayList10 = arrayList9;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (C18538n c18538n : arrayList10) {
            C18966e c18966e = (C18966e) c18538n.f63625b;
            Object obj = linkedHashMap3.get(c18966e);
            ArrayList arrayList11 = obj;
            if (obj == null) {
                arrayList11 = new ArrayList();
                linkedHashMap3.put(c18966e, arrayList11);
            }
            ((List) arrayList11).add((C18966e) c18538n.f63624a);
        }
        f65657m = linkedHashMap3;
    }

    /* renamed from: a */
    public static final /* synthetic */ List m1964a() {
        return f65647c;
    }

    /* renamed from: b */
    public static final /* synthetic */ Map m1963b() {
        return f65650f;
    }

    /* renamed from: c */
    public static final /* synthetic */ Set m1962c() {
        return f65651g;
    }

    /* renamed from: d */
    public static final /* synthetic */ Set m1961d() {
        return f65652h;
    }

    /* renamed from: g */
    public static final /* synthetic */ List m1958g() {
        return f65656l;
    }
}
