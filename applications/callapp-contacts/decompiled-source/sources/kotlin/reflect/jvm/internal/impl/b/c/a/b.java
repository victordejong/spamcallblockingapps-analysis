package kotlin.reflect.jvm.internal.impl.b.c.a;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.n;
import kotlin.d.c;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f37182a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final String f37183b = n.a(n.b((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'}), "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, String> f37184c;

    static {
        int i = 0;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List b2 = n.b((Object[]) new String[]{"Boolean", "Z", "Char", "C", "Byte", "B", "Short", "S", "Int", "I", "Float", "F", "Long", "J", "Double", "D"});
        int a2 = c.a(0, b2.size() - 1, 2);
        if (a2 >= 0) {
            int i2 = 0;
            while (true) {
                StringBuilder sb = new StringBuilder();
                String str = f37183b;
                sb.append(str);
                sb.append('/');
                sb.append((String) b2.get(i2));
                String sb2 = sb.toString();
                int i3 = i2 + 1;
                linkedHashMap.put(sb2, b2.get(i3));
                linkedHashMap.put(str + '/' + ((String) b2.get(i2)) + "Array", p.a("[", b2.get(i3)));
                if (i2 == a2) {
                    break;
                }
                i2 += 2;
            }
        }
        linkedHashMap.put(p.a(f37183b, (Object) "/Unit"), "V");
        a(linkedHashMap, "Any", "java/lang/Object");
        a(linkedHashMap, "Nothing", "java/lang/Void");
        a(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : n.b((Object[]) new String[]{"String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum"})) {
            a(linkedHashMap, str2, p.a("java/lang/", (Object) str2));
        }
        for (String str3 : n.b((Object[]) new String[]{"Iterator", "Collection", "List", "Set", "Map", "ListIterator"})) {
            a(linkedHashMap, p.a("collections/", (Object) str3), p.a("java/util/", (Object) str3));
            a(linkedHashMap, p.a("collections/Mutable", (Object) str3), p.a("java/util/", (Object) str3));
        }
        a(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        a(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        while (true) {
            i++;
            String a3 = p.a("Function", (Object) Integer.valueOf(i));
            StringBuilder sb3 = new StringBuilder();
            String str4 = f37183b;
            sb3.append(str4);
            sb3.append("/jvm/functions/Function");
            sb3.append(i);
            a(linkedHashMap, a3, sb3.toString());
            a(linkedHashMap, p.a("reflect/KFunction", (Object) Integer.valueOf(i)), p.a(str4, (Object) "/reflect/KFunction"));
            if (i > 22) {
                break;
            }
        }
        for (String str5 : n.b((Object[]) new String[]{"Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum"})) {
            a(linkedHashMap, p.a(str5, (Object) ".Companion"), f37183b + "/jvm/internal/" + str5 + "CompanionObject");
        }
        f37184c = linkedHashMap;
    }

    private b() {
    }

    public static final String a(String classId) {
        p.d(classId, "classId");
        String str = f37184c.get(classId);
        if (str != null) {
            return str;
        }
        return "L" + kotlin.h.p.a(classId, '.', '$', false) + ';';
    }

    private static final void a(Map<String, String> map, String str, String str2) {
        map.put(f37183b + '/' + str, "L" + str2 + ';');
    }
}
