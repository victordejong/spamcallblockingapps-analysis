package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.C18538n;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.AbstractC18245ag;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18979d;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19787k;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19775a;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19776b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19777c;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19778d;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19779e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19782h;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19785i;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19786j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19790l;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19791m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19793o;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19798p;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19800r;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19801s;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19802t;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19803u;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19804v;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19805w;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/e.class */
public final class C19937e {

    /* renamed from: a */
    private final AbstractC18999ab f66232a;

    /* renamed from: b */
    private final C19001ad f66233b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/e$a.class */
    public final /* synthetic */ class C19938a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f66234a;

        static {
            int[] iArr = new int[C18702a.C18704a.C18706a.C18709b.EnumC18712b.values().length];
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.BYTE.ordinal()] = 1;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.CHAR.ordinal()] = 2;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.SHORT.ordinal()] = 3;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.INT.ordinal()] = 4;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.LONG.ordinal()] = 5;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.FLOAT.ordinal()] = 6;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.DOUBLE.ordinal()] = 7;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.BOOLEAN.ordinal()] = 8;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.STRING.ordinal()] = 9;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.CLASS.ordinal()] = 10;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.ENUM.ordinal()] = 11;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.ANNOTATION.ordinal()] = 12;
            iArr[C18702a.C18704a.C18706a.C18709b.EnumC18712b.ARRAY.ordinal()] = 13;
            f66234a = iArr;
        }
    }

    public C19937e(AbstractC18999ab module, C19001ad notFoundClasses) {
        C18524p.m3840d(module, "module");
        C18524p.m3840d(notFoundClasses, "notFoundClasses");
        this.f66232a = module;
        this.f66233b = notFoundClasses;
    }

    /* renamed from: a */
    private final C18538n<C18966e, AbstractC19781g<?>> m1273a(C18702a.C18704a.C18706a c18706a, Map<C18966e, ? extends AbstractC19050ba> map, AbstractC18813c abstractC18813c) {
        AbstractC19050ba abstractC19050ba = map.get(C19970u.m1228b(abstractC18813c, c18706a.f63821b));
        if (abstractC19050ba == null) {
            return null;
        }
        C18966e m1228b = C19970u.m1228b(abstractC18813c, c18706a.f63821b);
        KotlinType g = abstractC19050ba.mo2593g();
        C18524p.m3843b(g, "parameter.type");
        C18702a.C18704a.C18706a.C18709b c18709b = c18706a.f63822c;
        C18524p.m3843b(c18709b, "proto.value");
        return new C18538n<>(m1228b, m1268b(g, c18709b, abstractC18813c));
    }

    /* renamed from: a */
    private final AbstractC18940g m1274a() {
        return this.f66232a.getBuiltIns();
    }

    /* renamed from: a */
    private final AbstractC19070d m1271a(C18960a c18960a) {
        return C19216v.m2498a(this.f66232a, c18960a, this.f66233b);
    }

    /* renamed from: a */
    private final boolean m1270a(AbstractC19781g<?> abstractC19781g, KotlinType kotlinType, C18702a.C18704a.C18706a.C18709b c18709b) {
        C18702a.C18704a.C18706a.C18709b.EnumC18712b enumC18712b = c18709b.f63832b;
        int i = enumC18712b == null ? -1 : C19938a.f66234a[enumC18712b.ordinal()];
        if (i == 10) {
            AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            AbstractC19070d abstractC19070d = declarationDescriptor instanceof AbstractC19070d ? (AbstractC19070d) declarationDescriptor : null;
            return abstractC19070d == null || AbstractC18940g.m2803e(abstractC19070d);
        } else if (i != 13) {
            return C18524p.m3850a(abstractC19781g.mo1485a(this.f66232a), kotlinType);
        } else {
            if (!((abstractC19781g instanceof C19776b) && ((C19776b) abstractC19781g).mo1489a().size() == c18709b.f63840j.size())) {
                throw new IllegalStateException(C18524p.m3847a("Deserialized ArrayValue should have the same number of elements as the original array value: ", (Object) abstractC19781g).toString());
            }
            KotlinType m2826a = m1274a().m2826a(kotlinType);
            C18524p.m3843b(m2826a, "builtIns.getArrayElementType(expectedType)");
            C19776b c19776b = (C19776b) abstractC19781g;
            Iterator<Integer> it2 = C18282n.m4174a((Collection<?>) c19776b.mo1489a()).iterator();
            while (it2.hasNext()) {
                int mo4059a = ((AbstractC18245ag) it2).mo4059a();
                AbstractC19781g<?> abstractC19781g2 = c19776b.mo1489a().get(mo4059a);
                C18702a.C18704a.C18706a.C18709b m3674a = c18709b.m3674a(mo4059a);
                C18524p.m3843b(m3674a, "value.getArrayElement(i)");
                if (!m1270a(abstractC19781g2, m2826a, m3674a)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: b */
    private final AbstractC19781g<?> m1268b(KotlinType kotlinType, C18702a.C18704a.C18706a.C18709b c18709b, AbstractC18813c abstractC18813c) {
        AbstractC19781g<?> m1269a = m1269a(kotlinType, c18709b, abstractC18813c);
        if (!m1270a(m1269a, kotlinType, c18709b)) {
            m1269a = null;
        }
        if (m1269a == null) {
            AbstractC19787k.C19788a c19788a = AbstractC19787k.f65972a;
            return AbstractC19787k.C19788a.m1488a("Unexpected argument value: actual type " + c18709b.f63832b + " != expected type " + kotlinType);
        }
        return m1269a;
    }

    /* renamed from: a */
    public final AbstractC18977c m1272a(C18702a.C18704a proto, AbstractC18813c nameResolver) {
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        AbstractC19070d m1271a = m1271a(C19970u.m1229a(nameResolver, proto.f63813b));
        Map a = C18247ai.m4257a();
        Map map = a;
        if (proto.m3693d() != 0) {
            AbstractC19070d abstractC19070d = m1271a;
            map = a;
            if (!ErrorUtils.isError(abstractC19070d)) {
                map = a;
                if (C19807d.m1455k(abstractC19070d)) {
                    Collection<AbstractC19065c> constructors = m1271a.getConstructors();
                    C18524p.m3843b(constructors, "annotationClass.constructors");
                    AbstractC19065c abstractC19065c = (AbstractC19065c) C18282n.m4124e(constructors);
                    map = a;
                    if (abstractC19065c != null) {
                        List<AbstractC19050ba> valueParameters = abstractC19065c.getValueParameters();
                        C18524p.m3843b(valueParameters, "constructor.valueParameters");
                        List<AbstractC19050ba> list = valueParameters;
                        LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a((Iterable) list, 10)), 16));
                        for (Object obj : list) {
                            linkedHashMap.put(((AbstractC19050ba) obj).getName(), obj);
                        }
                        List<C18702a.C18704a.C18706a> list2 = proto.f63814c;
                        C18524p.m3843b(list2, "proto.argumentList");
                        List<C18702a.C18704a.C18706a> list3 = list2;
                        ArrayList arrayList = new ArrayList();
                        for (C18702a.C18704a.C18706a it2 : list3) {
                            C18524p.m3843b(it2, "it");
                            C18538n<C18966e, AbstractC19781g<?>> m1273a = m1273a(it2, linkedHashMap, nameResolver);
                            if (m1273a != null) {
                                arrayList.add(m1273a);
                            }
                        }
                        map = C18247ai.m4256a(arrayList);
                    }
                }
            }
        }
        return new C18979d(m1271a.getDefaultType(), map, AbstractC19026at.f64759a);
    }

    /* renamed from: a */
    public final AbstractC19781g<?> m1269a(KotlinType expectedType, C18702a.C18704a.C18706a.C18709b value, AbstractC18813c nameResolver) {
        C18524p.m3840d(expectedType, "expectedType");
        C18524p.m3840d(value, "value");
        C18524p.m3840d(nameResolver, "nameResolver");
        Boolean mo3059b = C18808b.f64279N.mo3059b(value.f63842l);
        C18524p.m3843b(mo3059b, "IS_UNSIGNED.get(value.flags)");
        boolean booleanValue = mo3059b.booleanValue();
        C18702a.C18704a.C18706a.C18709b.EnumC18712b enumC18712b = value.f63832b;
        switch (enumC18712b == null ? -1 : C19938a.f66234a[enumC18712b.ordinal()]) {
            case 1:
                byte b = (byte) value.f63833c;
                return booleanValue ? new C19802t(b) : new C19778d(b);
            case 2:
                return new C19779e((char) value.f63833c);
            case 3:
                short s = (short) value.f63833c;
                return booleanValue ? new C19805w(s) : new C19800r(s);
            case 4:
                int i = (int) value.f63833c;
                return booleanValue ? new C19803u(i) : new C19791m(i);
            case 5:
                long j = value.f63833c;
                return booleanValue ? new C19804v(j) : new C19798p(j);
            case 6:
                return new C19790l(value.f63834d);
            case 7:
                return new C19785i(value.f63835e);
            case 8:
                return new C19777c(value.f63833c != 0);
            case 9:
                return new C19801s(nameResolver.mo2927a(value.f63836f));
            case 10:
                return new C19793o(C19970u.m1229a(nameResolver, value.f63837g), value.f63841k);
            case 11:
                return new C19786j(C19970u.m1229a(nameResolver, value.f63837g), C19970u.m1228b(nameResolver, value.f63838h));
            case 12:
                C18702a.C18704a c18704a = value.f63839i;
                C18524p.m3843b(c18704a, "value.annotation");
                return new C19775a(m1272a(c18704a, nameResolver));
            case 13:
                C19782h c19782h = C19782h.f65967a;
                List<C18702a.C18704a.C18706a.C18709b> list = value.f63840j;
                C18524p.m3843b(list, "value.arrayElementList");
                List<C18702a.C18704a.C18706a.C18709b> list2 = list;
                ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
                for (C18702a.C18704a.C18706a.C18709b it2 : list2) {
                    SimpleType m2798g = m1274a().m2798g();
                    C18524p.m3843b(m2798g, "builtIns.anyType");
                    C18524p.m3843b(it2, "it");
                    arrayList.add(m1269a(m2798g, it2, nameResolver));
                }
                return C19782h.m1490a(arrayList, expectedType);
            default:
                throw new IllegalStateException(("Unsupported annotation argument type: " + value.f63832b + " (expected " + expectedType + ')').toString());
        }
    }
}
