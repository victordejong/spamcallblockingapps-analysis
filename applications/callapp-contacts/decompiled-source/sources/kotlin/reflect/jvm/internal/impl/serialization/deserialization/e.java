package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.ag;
import kotlin.a.ai;
import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.resolve.constants.b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.h;
import kotlin.reflect.jvm.internal.impl.resolve.constants.i;
import kotlin.reflect.jvm.internal.impl.resolve.constants.j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.k;
import kotlin.reflect.jvm.internal.impl.resolve.constants.l;
import kotlin.reflect.jvm.internal.impl.resolve.constants.m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.o;
import kotlin.reflect.jvm.internal.impl.resolve.constants.r;
import kotlin.reflect.jvm.internal.impl.resolve.constants.s;
import kotlin.reflect.jvm.internal.impl.resolve.constants.t;
import kotlin.reflect.jvm.internal.impl.resolve.constants.u;
import kotlin.reflect.jvm.internal.impl.resolve.constants.w;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final ab f38424a;

    /* renamed from: b  reason: collision with root package name */
    private final ad f38425b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/e$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f38426a;

        static {
            int[] iArr = new int[a.C0625a.C0627a.b.EnumC0630b.values().length];
            iArr[a.C0625a.C0627a.b.EnumC0630b.BYTE.ordinal()] = 1;
            iArr[a.C0625a.C0627a.b.EnumC0630b.CHAR.ordinal()] = 2;
            iArr[a.C0625a.C0627a.b.EnumC0630b.SHORT.ordinal()] = 3;
            iArr[a.C0625a.C0627a.b.EnumC0630b.INT.ordinal()] = 4;
            iArr[a.C0625a.C0627a.b.EnumC0630b.LONG.ordinal()] = 5;
            iArr[a.C0625a.C0627a.b.EnumC0630b.FLOAT.ordinal()] = 6;
            iArr[a.C0625a.C0627a.b.EnumC0630b.DOUBLE.ordinal()] = 7;
            iArr[a.C0625a.C0627a.b.EnumC0630b.BOOLEAN.ordinal()] = 8;
            iArr[a.C0625a.C0627a.b.EnumC0630b.STRING.ordinal()] = 9;
            iArr[a.C0625a.C0627a.b.EnumC0630b.CLASS.ordinal()] = 10;
            iArr[a.C0625a.C0627a.b.EnumC0630b.ENUM.ordinal()] = 11;
            iArr[a.C0625a.C0627a.b.EnumC0630b.ANNOTATION.ordinal()] = 12;
            iArr[a.C0625a.C0627a.b.EnumC0630b.ARRAY.ordinal()] = 13;
            f38426a = iArr;
        }
    }

    public e(ab module, ad notFoundClasses) {
        p.d(module, "module");
        p.d(notFoundClasses, "notFoundClasses");
        this.f38424a = module;
        this.f38425b = notFoundClasses;
    }

    private final n<kotlin.reflect.jvm.internal.impl.c.e, g<?>> a(a.C0625a.C0627a aVar, Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends ba> map, c cVar) {
        ba baVar = (ba) map.get(u.b(cVar, aVar.f36978b));
        if (baVar == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.c.e b2 = u.b(cVar, aVar.f36978b);
        KotlinType g = baVar.g();
        p.b(g, "parameter.type");
        a.C0625a.C0627a.b bVar = aVar.f36979c;
        p.b(bVar, "proto.value");
        return new n<>(b2, b(g, bVar, cVar));
    }

    private final kotlin.reflect.jvm.internal.impl.builtins.g a() {
        return this.f38424a.getBuiltIns();
    }

    private final d a(kotlin.reflect.jvm.internal.impl.c.a aVar) {
        return v.a(this.f38424a, aVar, this.f38425b);
    }

    private final boolean a(g<?> gVar, KotlinType kotlinType, a.C0625a.C0627a.b bVar) {
        a.C0625a.C0627a.b.EnumC0630b bVar2 = bVar.f36984b;
        int i = bVar2 == null ? -1 : a.f38426a[bVar2.ordinal()];
        if (i == 10) {
            kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            d dVar = declarationDescriptor instanceof d ? (d) declarationDescriptor : null;
            return dVar == null || kotlin.reflect.jvm.internal.impl.builtins.g.e(dVar);
        } else if (i != 13) {
            return p.a(gVar.a(this.f38424a), kotlinType);
        } else {
            if ((gVar instanceof b) && ((b) gVar).a().size() == bVar.j.size()) {
                KotlinType a2 = a().a(kotlinType);
                p.b(a2, "builtIns.getArrayElementType(expectedType)");
                b bVar3 = (b) gVar;
                Iterator<Integer> it2 = kotlin.a.n.a((Collection<?>) bVar3.a()).iterator();
                while (it2.hasNext()) {
                    int a3 = ((ag) it2).a();
                    g<?> gVar2 = (g) bVar3.a().get(a3);
                    a.C0625a.C0627a.b a4 = bVar.a(a3);
                    p.b(a4, "value.getArrayElement(i)");
                    if (!a(gVar2, a2, a4)) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalStateException(p.a("Deserialized ArrayValue should have the same number of elements as the original array value: ", (Object) gVar).toString());
        }
    }

    private final g<?> b(KotlinType kotlinType, a.C0625a.C0627a.b bVar, c cVar) {
        g<?> a2 = a(kotlinType, bVar, cVar);
        if (!a(a2, kotlinType, bVar)) {
            a2 = null;
        }
        if (a2 != null) {
            return a2;
        }
        k.a aVar = k.f38257a;
        return k.a.a("Unexpected argument value: actual type " + bVar.f36984b + " != expected type " + kotlinType);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.a.c a(a.C0625a proto, c nameResolver) {
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        d a2 = a(u.a(nameResolver, proto.f36974b));
        Map a3 = ai.a();
        Map map = a3;
        if (proto.d() != 0) {
            d dVar = a2;
            map = a3;
            if (!ErrorUtils.isError(dVar)) {
                map = a3;
                if (kotlin.reflect.jvm.internal.impl.resolve.d.k(dVar)) {
                    Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> constructors = a2.getConstructors();
                    p.b(constructors, "annotationClass.constructors");
                    kotlin.reflect.jvm.internal.impl.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.descriptors.c) kotlin.a.n.e(constructors);
                    map = a3;
                    if (cVar != null) {
                        List<ba> valueParameters = cVar.getValueParameters();
                        p.b(valueParameters, "constructor.valueParameters");
                        List<ba> list = valueParameters;
                        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.f.d.c(ai.a(kotlin.a.n.a((Iterable) list, 10)), 16));
                        for (Object obj : list) {
                            linkedHashMap.put(((ba) obj).getName(), obj);
                        }
                        List<a.C0625a.C0627a> list2 = proto.f36975c;
                        p.b(list2, "proto.argumentList");
                        List<a.C0625a.C0627a> list3 = list2;
                        ArrayList arrayList = new ArrayList();
                        for (a.C0625a.C0627a it2 : list3) {
                            p.b(it2, "it");
                            n<kotlin.reflect.jvm.internal.impl.c.e, g<?>> a4 = a(it2, linkedHashMap, nameResolver);
                            if (a4 != null) {
                                arrayList.add(a4);
                            }
                        }
                        map = ai.a(arrayList);
                    }
                }
            }
        }
        return new kotlin.reflect.jvm.internal.impl.descriptors.a.d(a2.getDefaultType(), map, at.f37401a);
    }

    public final g<?> a(KotlinType expectedType, a.C0625a.C0627a.b value, c nameResolver) {
        p.d(expectedType, "expectedType");
        p.d(value, "value");
        p.d(nameResolver, "nameResolver");
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.N.b(value.l);
        p.b(a2, "IS_UNSIGNED.get(value.flags)");
        boolean booleanValue = a2.booleanValue();
        a.C0625a.C0627a.b.EnumC0630b bVar = value.f36984b;
        switch (bVar == null ? -1 : a.f38426a[bVar.ordinal()]) {
            case 1:
                byte b2 = (byte) value.f36985c;
                return booleanValue ? new t(b2) : new kotlin.reflect.jvm.internal.impl.resolve.constants.d(b2);
            case 2:
                return new kotlin.reflect.jvm.internal.impl.resolve.constants.e((char) value.f36985c);
            case 3:
                short s = (short) value.f36985c;
                return booleanValue ? new w(s) : new r(s);
            case 4:
                int i = (int) value.f36985c;
                return booleanValue ? new u(i) : new m(i);
            case 5:
                long j = value.f36985c;
                return booleanValue ? new kotlin.reflect.jvm.internal.impl.resolve.constants.v(j) : new kotlin.reflect.jvm.internal.impl.resolve.constants.p(j);
            case 6:
                return new l(value.f36986d);
            case 7:
                return new i(value.e);
            case 8:
                return new kotlin.reflect.jvm.internal.impl.resolve.constants.c(value.f36985c != 0);
            case 9:
                return new s(nameResolver.a(value.f));
            case 10:
                return new o(u.a(nameResolver, value.g), value.k);
            case 11:
                return new j(u.a(nameResolver, value.g), u.b(nameResolver, value.h));
            case 12:
                a.C0625a aVar = value.i;
                p.b(aVar, "value.annotation");
                return new kotlin.reflect.jvm.internal.impl.resolve.constants.a(a(aVar, nameResolver));
            case 13:
                h hVar = h.f38252a;
                List<a.C0625a.C0627a.b> list = value.j;
                p.b(list, "value.arrayElementList");
                List<a.C0625a.C0627a.b> list2 = list;
                ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list2, 10));
                for (a.C0625a.C0627a.b it2 : list2) {
                    SimpleType g = a().g();
                    p.b(g, "builtIns.anyType");
                    p.b(it2, "it");
                    arrayList.add(a(g, it2, nameResolver));
                }
                return h.a(arrayList, expectedType);
            default:
                throw new IllegalStateException(("Unsupported annotation argument type: " + value.f36984b + " (expected " + expectedType + ')').toString());
        }
    }
}
