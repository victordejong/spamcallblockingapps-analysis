package kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.C18538n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18816e;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18817f;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import kotlin.reflect.jvm.internal.impl.protobuf.C19678f;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/h.class */
public final class C18859h {

    /* renamed from: a */
    public static final C18859h f64440a = new C18859h();

    /* renamed from: b */
    private static final C19678f f64441b;

    static {
        C19678f m1734a = C19678f.m1734a();
        C18827a.m3039a(m1734a);
        C18524p.m3843b(m1734a, "newInstance().apply(JvmProtoBuf::registerAllExtensions)");
        f64441b = m1734a;
    }

    private C18859h() {
    }

    /* renamed from: a */
    private static String m2918a(C18702a.C18768p c18768p, AbstractC18813c abstractC18813c) {
        if (c18768p.m3265m()) {
            C18847b c18847b = C18847b.f64413a;
            return C18847b.m3014a(abstractC18813c.mo2926b(c18768p.f64100g));
        }
        return null;
    }

    /* renamed from: a */
    public static final C18538n<C18856g, C18702a.C18715b> m2916a(String[] data, String[] strings) {
        C18524p.m3840d(data, "data");
        C18524p.m3840d(strings, "strings");
        byte[] bytes = C18846a.m3033a(data);
        C18524p.m3843b(bytes, "decodeBytes(data)");
        C18524p.m3840d(bytes, "bytes");
        C18524p.m3840d(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        return new C18538n<>(m2923a(byteArrayInputStream, strings), C18702a.C18715b.m3623a(byteArrayInputStream, f64441b));
    }

    /* renamed from: a */
    public static AbstractC18851e.C18852a m2919a(C18702a.C18754m proto, AbstractC18813c nameResolver, C18818g typeTable, boolean z) {
        String str;
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(typeTable, "typeTable");
        AbstractC19683h.C19690e<C18702a.C18754m, C18827a.C18835c> propertySignature = C18827a.f64331d;
        C18524p.m3843b(propertySignature, "propertySignature");
        C18827a.C18835c c18835c = (C18827a.C18835c) C18816e.m3057a(proto, propertySignature);
        if (c18835c == null) {
            return null;
        }
        C18827a.C18829a c18829a = c18835c.m2990c() ? c18835c.f64366b : null;
        if (c18829a == null && z) {
            return null;
        }
        int i = (c18829a == null || !c18829a.m3028c()) ? proto.f64037d : c18829a.f64344b;
        if (c18829a == null || !c18829a.m3025d()) {
            String m2918a = m2918a(C18817f.m3052a(proto, typeTable), nameResolver);
            str = m2918a;
            if (m2918a == null) {
                return null;
            }
        } else {
            str = nameResolver.mo2927a(c18829a.f64345c);
        }
        return new AbstractC18851e.C18852a(nameResolver.mo2927a(i), str);
    }

    /* renamed from: a */
    public static AbstractC18851e.C18853b m2922a(C18702a.C18720c proto, AbstractC18813c nameResolver, C18818g typeTable) {
        String str;
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(typeTable, "typeTable");
        AbstractC19683h.C19690e<C18702a.C18720c, C18827a.C18832b> constructorSignature = C18827a.f64328a;
        C18524p.m3843b(constructorSignature, "constructorSignature");
        C18827a.C18832b c18832b = (C18827a.C18832b) C18816e.m3057a(proto, constructorSignature);
        String mo2927a = (c18832b == null || !c18832b.m3008c()) ? "<init>" : nameResolver.mo2927a(c18832b.f64355b);
        if (c18832b == null || !c18832b.m3006d()) {
            List<C18702a.C18787t> list = proto.f63907c;
            C18524p.m3843b(list, "proto.valueParameterList");
            List<C18702a.C18787t> list2 = list;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            for (C18702a.C18787t it2 : list2) {
                C18524p.m3843b(it2, "it");
                String m2918a = m2918a(C18817f.m3049a(it2, typeTable), nameResolver);
                if (m2918a == null) {
                    return null;
                }
                arrayList.add(m2918a);
            }
            str = C18282n.m4148a(arrayList, "", "(", ")V", 0, (CharSequence) null, (Function1) null, 56);
        } else {
            str = nameResolver.mo2927a(c18832b.f64356c);
        }
        return new AbstractC18851e.C18853b(mo2927a, str);
    }

    /* renamed from: a */
    public static AbstractC18851e.C18853b m2921a(C18702a.C18741h proto, AbstractC18813c nameResolver, C18818g typeTable) {
        String str;
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(typeTable, "typeTable");
        AbstractC19683h.C19690e<C18702a.C18741h, C18827a.C18832b> methodSignature = C18827a.f64329b;
        C18524p.m3843b(methodSignature, "methodSignature");
        C18827a.C18832b c18832b = (C18827a.C18832b) C18816e.m3057a(proto, methodSignature);
        int i = (c18832b == null || !c18832b.m3008c()) ? proto.f63974d : c18832b.f64355b;
        if (c18832b == null || !c18832b.m3006d()) {
            List b = C18282n.m4169b(C18817f.m3048b(proto, typeTable));
            List<C18702a.C18787t> list = proto.f63980j;
            C18524p.m3843b(list, "proto.valueParameterList");
            List<C18702a.C18787t> list2 = list;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            for (C18702a.C18787t it2 : list2) {
                C18524p.m3843b(it2, "it");
                arrayList.add(C18817f.m3049a(it2, typeTable));
            }
            List<C18702a.C18768p> b2 = C18282n.m4135b((Collection) b, (Iterable) arrayList);
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) b2, 10));
            for (C18702a.C18768p c18768p : b2) {
                String m2918a = m2918a(c18768p, nameResolver);
                if (m2918a == null) {
                    return null;
                }
                arrayList2.add(m2918a);
            }
            ArrayList arrayList3 = arrayList2;
            String m2918a2 = m2918a(C18817f.m3054a(proto, typeTable), nameResolver);
            if (m2918a2 == null) {
                return null;
            }
            str = C18524p.m3847a(C18282n.m4148a(arrayList3, "", "(", ")", 0, (CharSequence) null, (Function1) null, 56), (Object) m2918a2);
        } else {
            str = nameResolver.mo2927a(c18832b.f64356c);
        }
        return new AbstractC18851e.C18853b(nameResolver.mo2927a(i), str);
    }

    /* renamed from: a */
    private static C18856g m2923a(InputStream inputStream, String[] strArr) {
        C18827a.C18838d m2973a = C18827a.C18838d.m2973a(inputStream, f64441b);
        C18524p.m3843b(m2973a, "parseDelimitedFrom(this, EXTENSION_REGISTRY)");
        return new C18856g(m2973a, strArr);
    }

    /* renamed from: a */
    public static C19678f m2924a() {
        return f64441b;
    }

    /* renamed from: a */
    public static final boolean m2920a(C18702a.C18754m proto) {
        C18524p.m3840d(proto, "proto");
        C18850d c18850d = C18850d.f64419a;
        C18808b.C18810a m2975a = C18850d.m2975a();
        Object c = proto.m1690c(C18827a.f64332e);
        C18524p.m3843b(c, "proto.getExtension(JvmProtoBuf.flags)");
        Boolean mo3059b = m2975a.mo3059b(((Number) c).intValue());
        C18524p.m3843b(mo3059b, "JvmFlags.IS_MOVED_FROM_INTERFACE_COMPANION.get(proto.getExtension(JvmProtoBuf.flags))");
        return mo3059b.booleanValue();
    }

    /* renamed from: b */
    public static final C18538n<C18856g, C18702a.C18748k> m2915b(String[] data, String[] strings) {
        C18524p.m3840d(data, "data");
        C18524p.m3840d(strings, "strings");
        byte[] bytes = C18846a.m3033a(data);
        C18524p.m3843b(bytes, "decodeBytes(data)");
        C18524p.m3840d(bytes, "bytes");
        C18524p.m3840d(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        return new C18538n<>(m2923a(byteArrayInputStream, strings), C18702a.C18748k.m3425a(byteArrayInputStream, f64441b));
    }

    /* renamed from: c */
    public static final C18538n<C18856g, C18702a.C18741h> m2914c(String[] data, String[] strings) {
        C18524p.m3840d(data, "data");
        C18524p.m3840d(strings, "strings");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(C18846a.m3033a(data));
        return new C18538n<>(m2923a(byteArrayInputStream, strings), C18702a.C18741h.m3471a(byteArrayInputStream, f64441b));
    }
}
