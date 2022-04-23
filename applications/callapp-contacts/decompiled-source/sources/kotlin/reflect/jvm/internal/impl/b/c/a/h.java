package kotlin.reflect.jvm.internal.impl.b.c.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.b;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.b.c.a;
import kotlin.reflect.jvm.internal.impl.b.c.a.e;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f37228a = new h();

    /* renamed from: b  reason: collision with root package name */
    private static final f f37229b;

    static {
        f a2 = f.a();
        a.a(a2);
        p.b(a2, "newInstance().apply(JvmProtoBuf::registerAllExtensions)");
        f37229b = a2;
    }

    private h() {
    }

    private static String a(a.p pVar, c cVar) {
        if (!pVar.m()) {
            return null;
        }
        b bVar = b.f37182a;
        return b.a(cVar.b(pVar.g));
    }

    public static final n<g, a.b> a(String[] data, String[] strings) {
        p.d(data, "data");
        p.d(strings, "strings");
        byte[] bytes = a.a(data);
        p.b(bytes, "decodeBytes(data)");
        p.d(bytes, "bytes");
        p.d(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        return new n<>(a(byteArrayInputStream, strings), a.b.a(byteArrayInputStream, f37229b));
    }

    public static e.a a(a.m proto, c nameResolver, g typeTable, boolean z) {
        String str;
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        h.e<a.m, a.c> propertySignature = kotlin.reflect.jvm.internal.impl.b.c.a.f37168d;
        p.b(propertySignature, "propertySignature");
        a.c cVar = (a.c) kotlin.reflect.jvm.internal.impl.b.b.e.a(proto, propertySignature);
        if (cVar == null) {
            return null;
        }
        a.C0657a aVar = cVar.c() ? cVar.f37189b : null;
        if (aVar == null && z) {
            return null;
        }
        int i = (aVar == null || !aVar.c()) ? proto.f37061d : aVar.f37171b;
        if (aVar == null || !aVar.d()) {
            String a2 = a(kotlin.reflect.jvm.internal.impl.b.b.f.a(proto, typeTable), nameResolver);
            str = a2;
            if (a2 == null) {
                return null;
            }
        } else {
            str = nameResolver.a(aVar.f37172c);
        }
        return new e.a(nameResolver.a(i), str);
    }

    public static e.b a(a.c proto, c nameResolver, g typeTable) {
        String str;
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        h.e<a.c, a.b> constructorSignature = kotlin.reflect.jvm.internal.impl.b.c.a.f37165a;
        p.b(constructorSignature, "constructorSignature");
        a.b bVar = (a.b) kotlin.reflect.jvm.internal.impl.b.b.e.a(proto, constructorSignature);
        String a2 = (bVar == null || !bVar.c()) ? "<init>" : nameResolver.a(bVar.f37180b);
        if (bVar == null || !bVar.d()) {
            List<a.t> list = proto.f37006c;
            p.b(list, "proto.valueParameterList");
            List<a.t> list2 = list;
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list2, 10));
            for (a.t it2 : list2) {
                p.b(it2, "it");
                String a3 = a(kotlin.reflect.jvm.internal.impl.b.b.f.a(it2, typeTable), nameResolver);
                if (a3 == null) {
                    return null;
                }
                arrayList.add(a3);
            }
            str = kotlin.a.n.a(arrayList, "", "(", ")V", 0, (CharSequence) null, (Function1) null, 56);
        } else {
            str = nameResolver.a(bVar.f37181c);
        }
        return new e.b(a2, str);
    }

    public static e.b a(a.h proto, c nameResolver, g typeTable) {
        String str;
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        h.e<a.h, a.b> methodSignature = kotlin.reflect.jvm.internal.impl.b.c.a.f37166b;
        p.b(methodSignature, "methodSignature");
        a.b bVar = (a.b) kotlin.reflect.jvm.internal.impl.b.b.e.a(proto, methodSignature);
        int i = (bVar == null || !bVar.c()) ? proto.f37040d : bVar.f37180b;
        if (bVar == null || !bVar.d()) {
            List b2 = kotlin.a.n.b(kotlin.reflect.jvm.internal.impl.b.b.f.b(proto, typeTable));
            List<a.t> list = proto.j;
            p.b(list, "proto.valueParameterList");
            List<a.t> list2 = list;
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list2, 10));
            for (a.t it2 : list2) {
                p.b(it2, "it");
                arrayList.add(kotlin.reflect.jvm.internal.impl.b.b.f.a(it2, typeTable));
            }
            List<a.p> b3 = kotlin.a.n.b((Collection) b2, (Iterable) arrayList);
            ArrayList arrayList2 = new ArrayList(kotlin.a.n.a((Iterable) b3, 10));
            for (a.p pVar : b3) {
                String a2 = a(pVar, nameResolver);
                if (a2 == null) {
                    return null;
                }
                arrayList2.add(a2);
            }
            ArrayList arrayList3 = arrayList2;
            String a3 = a(kotlin.reflect.jvm.internal.impl.b.b.f.a(proto, typeTable), nameResolver);
            if (a3 == null) {
                return null;
            }
            str = p.a(kotlin.a.n.a(arrayList3, "", "(", ")", 0, (CharSequence) null, (Function1) null, 56), (Object) a3);
        } else {
            str = nameResolver.a(bVar.f37181c);
        }
        return new e.b(nameResolver.a(i), str);
    }

    private static g a(InputStream inputStream, String[] strArr) {
        a.d a2 = a.d.a(inputStream, f37229b);
        p.b(a2, "parseDelimitedFrom(this, EXTENSION_REGISTRY)");
        return new g(a2, strArr);
    }

    public static f a() {
        return f37229b;
    }

    public static final boolean a(a.m proto) {
        p.d(proto, "proto");
        d dVar = d.f37202a;
        b.a a2 = d.a();
        Object c2 = proto.c(kotlin.reflect.jvm.internal.impl.b.c.a.e);
        p.b(c2, "proto.getExtension(JvmProtoBuf.flags)");
        Boolean a3 = a2.b(((Number) c2).intValue());
        p.b(a3, "JvmFlags.IS_MOVED_FROM_INTERFACE_COMPANION.get(proto.getExtension(JvmProtoBuf.flags))");
        return a3.booleanValue();
    }

    public static final n<g, a.k> b(String[] data, String[] strings) {
        p.d(data, "data");
        p.d(strings, "strings");
        byte[] bytes = a.a(data);
        p.b(bytes, "decodeBytes(data)");
        p.d(bytes, "bytes");
        p.d(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        return new n<>(a(byteArrayInputStream, strings), a.k.a(byteArrayInputStream, f37229b));
    }

    public static final n<g, a.h> c(String[] data, String[] strings) {
        p.d(data, "data");
        p.d(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a.a(data));
        return new n<>(a(byteArrayInputStream, strings), a.h.a(byteArrayInputStream, f37229b));
    }
}
