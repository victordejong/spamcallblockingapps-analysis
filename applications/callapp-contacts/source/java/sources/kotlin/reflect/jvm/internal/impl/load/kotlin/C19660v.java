package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.v */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/v.class */
public final class C19660v {

    /* renamed from: a */
    public static final C19660v f65767a = new C19660v();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.v$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/v$a.class */
    public static final class C19661a extends AbstractC18526r implements Function1<String, CharSequence> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19661a() {
            super(1);
            C19660v.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(String str) {
            String it2 = str;
            C18524p.m3840d(it2, "it");
            return C19660v.m1834e(it2);
        }
    }

    private C19660v() {
    }

    /* renamed from: a */
    public static String m1844a(String name) {
        C18524p.m3840d(name, "name");
        return C18524p.m3847a("java/lang/", (Object) name);
    }

    /* renamed from: a */
    public static String m1843a(String internalName, String jvmDescriptor) {
        C18524p.m3840d(internalName, "internalName");
        C18524p.m3840d(jvmDescriptor, "jvmDescriptor");
        return internalName + '.' + jvmDescriptor;
    }

    /* renamed from: a */
    public static Set<String> m1841a(String name, String... signatures) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(signatures, "signatures");
        String m1844a = m1844a(name);
        String[] strArr = new String[signatures.length];
        System.arraycopy(signatures, 0, strArr, 0, signatures.length);
        return m1836c(m1844a, strArr);
    }

    /* renamed from: a */
    public static String[] m1840a(String... signatures) {
        C18524p.m3840d(signatures, "signatures");
        ArrayList arrayList = new ArrayList(signatures.length);
        for (String str : signatures) {
            arrayList.add("<init>(" + str + ")V");
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    /* renamed from: b */
    public static String m1839b(String name) {
        C18524p.m3840d(name, "name");
        return C18524p.m3847a("java/util/", (Object) name);
    }

    /* renamed from: b */
    public static Set<String> m1838b(String name, String... signatures) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(signatures, "signatures");
        String m1839b = m1839b(name);
        String[] strArr = new String[signatures.length];
        System.arraycopy(signatures, 0, strArr, 0, signatures.length);
        return m1836c(m1839b, strArr);
    }

    /* renamed from: c */
    public static String m1837c(String name) {
        C18524p.m3840d(name, "name");
        return C18524p.m3847a("java/util/function/", (Object) name);
    }

    /* renamed from: c */
    private static Set<String> m1836c(String internalName, String... signatures) {
        C18524p.m3840d(internalName, "internalName");
        C18524p.m3840d(signatures, "signatures");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : signatures) {
            linkedHashSet.add(internalName + '.' + str);
        }
        return linkedHashSet;
    }

    /* renamed from: e */
    public static String m1834e(String str) {
        String str2 = str;
        if (str.length() > 1) {
            str2 = "L" + str + ';';
        }
        return str2;
    }

    /* renamed from: a */
    public final String m1842a(String name, List<String> parameters, String ret) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(parameters, "parameters");
        C18524p.m3840d(ret, "ret");
        return name + '(' + C18282n.m4148a(parameters, "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new C19661a(), 30) + ')' + m1834e(ret);
    }
}
