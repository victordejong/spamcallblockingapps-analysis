package kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p525d.C18348c;
import kotlin.p532h.C18425p;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/b.class */
public final class C18847b {

    /* renamed from: a */
    public static final C18847b f64413a = new C18847b();

    /* renamed from: b */
    private static final String f64414b = C18282n.m4148a(C18282n.m4167b((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'}), "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);

    /* renamed from: c */
    private static final Map<String, String> f64415c;

    static {
        int i = 0;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List b = C18282n.m4167b((Object[]) new String[]{"Boolean", "Z", "Char", "C", "Byte", "B", "Short", "S", "Int", "I", "Float", "F", "Long", "J", "Double", "D"});
        int m4068a = C18348c.m4068a(0, b.size() - 1, 2);
        if (m4068a >= 0) {
            int i2 = 0;
            while (true) {
                StringBuilder sb = new StringBuilder();
                String str = f64414b;
                sb.append(str);
                sb.append('/');
                sb.append((String) b.get(i2));
                String sb2 = sb.toString();
                int i3 = i2 + 1;
                linkedHashMap.put(sb2, b.get(i3));
                linkedHashMap.put(str + '/' + ((String) b.get(i2)) + "Array", C18524p.m3847a("[", b.get(i3)));
                if (i2 == m4068a) {
                    break;
                }
                i2 += 2;
            }
        }
        linkedHashMap.put(C18524p.m3847a(f64414b, (Object) "/Unit"), "V");
        m3013a(linkedHashMap, "Any", "java/lang/Object");
        m3013a(linkedHashMap, "Nothing", "java/lang/Void");
        m3013a(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : C18282n.m4167b((Object[]) new String[]{"String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum"})) {
            m3013a(linkedHashMap, str2, C18524p.m3847a("java/lang/", (Object) str2));
        }
        for (String str3 : C18282n.m4167b((Object[]) new String[]{"Iterator", "Collection", "List", "Set", "Map", "ListIterator"})) {
            m3013a(linkedHashMap, C18524p.m3847a("collections/", (Object) str3), C18524p.m3847a("java/util/", (Object) str3));
            m3013a(linkedHashMap, C18524p.m3847a("collections/Mutable", (Object) str3), C18524p.m3847a("java/util/", (Object) str3));
        }
        m3013a(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        m3013a(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        m3013a(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        m3013a(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        while (true) {
            int i4 = i;
            i = i4 + 1;
            String m3847a = C18524p.m3847a("Function", (Object) Integer.valueOf(i4));
            StringBuilder sb3 = new StringBuilder();
            String str4 = f64414b;
            sb3.append(str4);
            sb3.append("/jvm/functions/Function");
            sb3.append(i4);
            m3013a(linkedHashMap, m3847a, sb3.toString());
            m3013a(linkedHashMap, C18524p.m3847a("reflect/KFunction", (Object) Integer.valueOf(i4)), C18524p.m3847a(str4, (Object) "/reflect/KFunction"));
            if (i > 22) {
                break;
            }
        }
        for (String str5 : C18282n.m4167b((Object[]) new String[]{"Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum"})) {
            m3013a(linkedHashMap, C18524p.m3847a(str5, (Object) ".Companion"), f64414b + "/jvm/internal/" + str5 + "CompanionObject");
        }
        f64415c = linkedHashMap;
    }

    private C18847b() {
    }

    /* renamed from: a */
    public static final String m3014a(String classId) {
        C18524p.m3840d(classId, "classId");
        String str = f64415c.get(classId);
        if (str == null) {
            return "L" + C18425p.m3964a(classId, '.', '$', false) + ';';
        }
        return str;
    }

    /* renamed from: a */
    private static final void m3013a(Map<String, String> map, String str, String str2) {
        map.put(f64414b + '/' + str, "L" + str2 + ';');
    }
}
