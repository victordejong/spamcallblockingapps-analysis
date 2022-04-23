package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final v f38097a = new v();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/v$a.class */
    static final class a extends r implements Function1<String, CharSequence> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(String str) {
            String it2 = str;
            p.d(it2, "it");
            return v.e(it2);
        }
    }

    private v() {
    }

    public static String a(String name) {
        p.d(name, "name");
        return p.a("java/lang/", (Object) name);
    }

    public static String a(String internalName, String jvmDescriptor) {
        p.d(internalName, "internalName");
        p.d(jvmDescriptor, "jvmDescriptor");
        return internalName + '.' + jvmDescriptor;
    }

    public static Set<String> a(String name, String... signatures) {
        p.d(name, "name");
        p.d(signatures, "signatures");
        String a2 = a(name);
        String[] strArr = new String[signatures.length];
        System.arraycopy(signatures, 0, strArr, 0, signatures.length);
        return c(a2, strArr);
    }

    public static String[] a(String... signatures) {
        p.d(signatures, "signatures");
        ArrayList arrayList = new ArrayList(signatures.length);
        for (String str : signatures) {
            arrayList.add("<init>(" + str + ")V");
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    public static String b(String name) {
        p.d(name, "name");
        return p.a("java/util/", (Object) name);
    }

    public static Set<String> b(String name, String... signatures) {
        p.d(name, "name");
        p.d(signatures, "signatures");
        String b2 = b(name);
        String[] strArr = new String[signatures.length];
        System.arraycopy(signatures, 0, strArr, 0, signatures.length);
        return c(b2, strArr);
    }

    public static String c(String name) {
        p.d(name, "name");
        return p.a("java/util/function/", (Object) name);
    }

    private static Set<String> c(String internalName, String... signatures) {
        p.d(internalName, "internalName");
        p.d(signatures, "signatures");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : signatures) {
            linkedHashSet.add(internalName + '.' + str);
        }
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(String str) {
        String str2 = str;
        if (str.length() > 1) {
            str2 = "L" + str + ';';
        }
        return str2;
    }

    public final String a(String name, List<String> parameters, String ret) {
        p.d(name, "name");
        p.d(parameters, "parameters");
        p.d(ret, "ret");
        return name + '(' + n.a(parameters, "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new a(), 30) + ')' + e(ret);
    }
}
