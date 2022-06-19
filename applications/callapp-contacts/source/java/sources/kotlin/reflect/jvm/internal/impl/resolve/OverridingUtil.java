package kotlin.reflect.jvm.internal.impl.resolve;

import com.google.api.client.googleapis.notifications.C15291b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.C18538n;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.utils.C20028i;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil.class */
public class OverridingUtil {

    /* renamed from: a */
    public static final OverridingUtil f65920a;

    /* renamed from: b */
    static final /* synthetic */ boolean f65921b = true;

    /* renamed from: c */
    private static final List<ExternalOverridabilityCondition> f65922c = C18282n.m4118h(ServiceLoader.load(ExternalOverridabilityCondition.class, ExternalOverridabilityCondition.class.getClassLoader()));

    /* renamed from: d */
    private static final KotlinTypeChecker.TypeConstructorEquality f65923d;

    /* renamed from: e */
    private final KotlinTypeRefiner f65924e;

    /* renamed from: f */
    private final KotlinTypeChecker.TypeConstructorEquality f65925f;

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$8 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$8.class */
    public static final /* synthetic */ class C197458 {

        /* renamed from: a */
        static final /* synthetic */ int[] f65930a;

        /* renamed from: b */
        static final /* synthetic */ int[] f65931b;

        /* renamed from: c */
        static final /* synthetic */ int[] f65932c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:48:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:42:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:58:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:46:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:40:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:50:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:44:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:38:0x0089). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC19222y.values().length];
            f65932c = iArr;
            try {
                iArr[EnumC19222y.FINAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f65932c[EnumC19222y.SEALED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f65932c[EnumC19222y.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f65932c[EnumC19222y.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[C19746a.EnumC19747a.values().length];
            f65931b = iArr2;
            try {
                iArr2[C19746a.EnumC19747a.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f65931b[C19746a.EnumC19747a.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f65931b[C19746a.EnumC19747a.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[ExternalOverridabilityCondition.EnumC19737b.values().length];
            f65930a = iArr3;
            try {
                iArr3[ExternalOverridabilityCondition.EnumC19737b.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f65930a[ExternalOverridabilityCondition.EnumC19737b.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f65930a[ExternalOverridabilityCondition.EnumC19737b.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f65930a[ExternalOverridabilityCondition.EnumC19737b.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext.class */
    public class OverridingUtilTypeCheckerContext extends ClassicTypeCheckerContext {
        private final Map<TypeConstructor, TypeConstructor> matchingTypeConstructors;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            Object[] objArr = new Object[3];
            if (i == 1 || i == 3) {
                objArr[0] = C15291b.f55271a;
            } else {
                objArr[0] = "a";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext";
            if (i == 2 || i == 3) {
                objArr[2] = "areEqualTypeConstructorsByAxioms";
            } else {
                objArr[2] = "areEqualTypeConstructors";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OverridingUtilTypeCheckerContext(Map<TypeConstructor, TypeConstructor> map) {
            super(true, true, true, r7.f65924e);
            OverridingUtil.this = r7;
            this.matchingTypeConstructors = map;
        }

        private boolean areEqualTypeConstructorsByAxioms(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
            if (typeConstructor == null) {
                $$$reportNull$$$0(2);
            }
            if (typeConstructor2 == null) {
                $$$reportNull$$$0(3);
            }
            if (OverridingUtil.this.f65925f.equals(typeConstructor, typeConstructor2)) {
                return true;
            }
            Map<TypeConstructor, TypeConstructor> map = this.matchingTypeConstructors;
            if (map == null) {
                return false;
            }
            TypeConstructor typeConstructor3 = map.get(typeConstructor);
            TypeConstructor typeConstructor4 = this.matchingTypeConstructors.get(typeConstructor2);
            if (typeConstructor3 != null && typeConstructor3.equals(typeConstructor2)) {
                return true;
            }
            return typeConstructor4 != null && typeConstructor4.equals(typeConstructor);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeCheckerContext
        public boolean areEqualTypeConstructors(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
            if (typeConstructor == null) {
                $$$reportNull$$$0(0);
            }
            if (typeConstructor2 == null) {
                $$$reportNull$$$0(1);
            }
            return super.areEqualTypeConstructors(typeConstructor, typeConstructor2) || areEqualTypeConstructorsByAxioms(typeConstructor, typeConstructor2);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a.class */
    public static final class C19746a {

        /* renamed from: a */
        private static final C19746a f65933a = new C19746a(EnumC19747a.OVERRIDABLE, "SUCCESS");

        /* renamed from: b */
        private final EnumC19747a f65934b;

        /* renamed from: c */
        private final String f65935c;

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a.class */
        public enum EnumC19747a {
            OVERRIDABLE,
            INCOMPATIBLE,
            CONFLICT
        }

        public C19746a(EnumC19747a enumC19747a, String str) {
            if (enumC19747a == null) {
                m1552a(3);
            }
            if (str == null) {
                m1552a(4);
            }
            this.f65934b = enumC19747a;
            this.f65935c = str;
        }

        /* renamed from: a */
        public static C19746a m1553a() {
            C19746a c19746a = f65933a;
            if (c19746a == null) {
                m1552a(0);
            }
            return c19746a;
        }

        /* renamed from: a */
        public static C19746a m1551a(String str) {
            return new C19746a(EnumC19747a.INCOMPATIBLE, str);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a4  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00d0  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static /* synthetic */ void m1552a(int r4) {
            /*
                Method dump skipped, instructions count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.C19746a.m1552a(int):void");
        }

        /* renamed from: b */
        public static C19746a m1549b(String str) {
            return new C19746a(EnumC19747a.CONFLICT, str);
        }

        /* renamed from: b */
        public final EnumC19747a m1550b() {
            EnumC19747a enumC19747a = this.f65934b;
            if (enumC19747a == null) {
                m1552a(5);
            }
            return enumC19747a;
        }
    }

    static {
        KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality = new KotlinTypeChecker.TypeConstructorEquality() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.1
            /* renamed from: a */
            private static /* synthetic */ void m1554a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "a";
                } else {
                    objArr[0] = C15291b.f55271a;
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1";
                objArr[2] = "equals";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
            public final boolean equals(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
                if (typeConstructor == null) {
                    m1554a(0);
                }
                if (typeConstructor2 == null) {
                    m1554a(1);
                }
                return typeConstructor.equals(typeConstructor2);
            }
        };
        f65923d = typeConstructorEquality;
        f65920a = new OverridingUtil(typeConstructorEquality, KotlinTypeRefiner.Default.INSTANCE);
    }

    private OverridingUtil(KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality, KotlinTypeRefiner kotlinTypeRefiner) {
        if (typeConstructorEquality == null) {
            m1588a(4);
        }
        if (kotlinTypeRefiner == null) {
            m1588a(5);
        }
        this.f65925f = typeConstructorEquality;
        this.f65924e = kotlinTypeRefiner;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <H> H m1586a(Collection<H> collection, Function1<H, AbstractC18973a> function1) {
        H h;
        if (collection == null) {
            m1588a(76);
        }
        if (function1 == 0) {
            m1588a(77);
        }
        if (f65921b || !collection.isEmpty()) {
            if (collection.size() == 1) {
                H h2 = (H) C18282n.m4153a((Iterable<? extends Object>) collection);
                if (h2 == null) {
                    m1588a(78);
                }
                return h2;
            }
            ArrayList arrayList = new ArrayList(2);
            List b = C18282n.m4137b((Iterable) collection, (Function1) function1);
            Object a = C18282n.m4153a((Iterable<? extends Object>) collection);
            AbstractC18973a abstractC18973a = (AbstractC18973a) function1.invoke(a);
            H h3 = a;
            for (H h4 : collection) {
                AbstractC18973a abstractC18973a2 = (AbstractC18973a) function1.invoke(h4);
                if (m1577a(abstractC18973a2, b)) {
                    arrayList.add(h4);
                }
                if (m1559b(abstractC18973a2, abstractC18973a) && !m1559b(abstractC18973a, abstractC18973a2)) {
                    h3 = h4;
                }
            }
            if (arrayList.isEmpty()) {
                if (h3 == null) {
                    m1588a(79);
                }
                return h3;
            } else if (arrayList.size() == 1) {
                H h5 = (H) C18282n.m4153a((Iterable<? extends Object>) arrayList);
                if (h5 == null) {
                    m1588a(80);
                }
                return h5;
            } else {
                Iterator it2 = arrayList.iterator();
                do {
                    h = null;
                    if (!it2.hasNext()) {
                        break;
                    }
                    h = it2.next();
                } while (FlexibleTypesKt.isFlexible(((AbstractC18973a) function1.invoke(h)).getReturnType()));
                if (h != null) {
                    if (h == null) {
                        m1588a(81);
                    }
                    return h;
                }
                H h6 = (H) C18282n.m4153a((Iterable<? extends Object>) arrayList);
                if (h6 == null) {
                    m1588a(82);
                }
                return h6;
            }
        }
        throw new AssertionError("Should have at least one overridable descriptor");
    }

    /* renamed from: a */
    public static <H> Collection<H> m1587a(H h, Collection<H> collection, Function1<H, AbstractC18973a> function1, Function1<H, C20128v> function12) {
        if (h == null) {
            m1588a(97);
        }
        if (function1 == null) {
            m1588a(99);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(h);
        AbstractC18973a invoke = function1.invoke(h);
        Iterator<H> it2 = collection.iterator();
        while (it2.hasNext()) {
            H next = it2.next();
            AbstractC18973a invoke2 = function1.invoke(next);
            if (h == next) {
                it2.remove();
            } else {
                C19746a.EnumC19747a m1556c = m1556c(invoke, invoke2);
                if (m1556c == C19746a.EnumC19747a.OVERRIDABLE) {
                    arrayList.add(next);
                    it2.remove();
                } else if (m1556c == C19746a.EnumC19747a.CONFLICT) {
                    function12.invoke(next);
                    it2.remove();
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private Collection<AbstractC19039b> m1570a(AbstractC19039b abstractC19039b, Collection<? extends AbstractC19039b> collection, AbstractC19070d abstractC19070d, AbstractC19856h abstractC19856h) {
        if (abstractC19039b == null) {
            m1588a(57);
        }
        if (collection == null) {
            m1588a(58);
        }
        if (abstractC19070d == null) {
            m1588a(59);
        }
        if (abstractC19856h == null) {
            m1588a(60);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        C20028i m1188a = C20028i.m1188a();
        for (AbstractC19039b abstractC19039b2 : collection) {
            C19746a.EnumC19747a m1550b = m1575a(abstractC19039b2, abstractC19039b, abstractC19070d).m1550b();
            if (abstractC19039b == null) {
                m1588a(55);
            }
            if (abstractC19039b2 == null) {
                m1588a(56);
            }
            boolean z = !C19200r.m2517a(abstractC19039b2.getVisibility()) && C19200r.m2518a((AbstractC19197o) abstractC19039b2, (AbstractC19193k) abstractC19039b);
            int i = C197458.f65931b[m1550b.ordinal()];
            if (i == 1) {
                if (z) {
                    m1188a.add(abstractC19039b2);
                }
                arrayList.add(abstractC19039b2);
            } else if (i == 2) {
                if (z) {
                    abstractC19856h.mo1397b(abstractC19039b2, abstractC19039b);
                }
                arrayList.add(abstractC19039b2);
            }
        }
        abstractC19856h.mo1398a(abstractC19039b, m1188a);
        return arrayList;
    }

    /* renamed from: a */
    private static Collection<AbstractC19039b> m1567a(final AbstractC19070d abstractC19070d, Collection<AbstractC19039b> collection) {
        if (abstractC19070d == null) {
            m1588a(94);
        }
        if (collection == null) {
            m1588a(95);
        }
        return C18282n.m4144a((Iterable) collection, (Function1) new Function1<AbstractC19039b, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.5
            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
                AbstractC19039b abstractC19039b2 = abstractC19039b;
                return Boolean.valueOf(!C19200r.m2517a(abstractC19039b2.getVisibility()) && C19200r.m2518a((AbstractC19197o) abstractC19039b2, (AbstractC19193k) abstractC19070d));
            }
        });
    }

    /* renamed from: a */
    private static List<KotlinType> m1578a(AbstractC18973a abstractC18973a) {
        AbstractC19020aq extensionReceiverParameter = abstractC18973a.getExtensionReceiverParameter();
        ArrayList arrayList = new ArrayList();
        if (extensionReceiverParameter != null) {
            arrayList.add(extensionReceiverParameter.mo2593g());
        }
        for (AbstractC19050ba abstractC19050ba : abstractC18973a.getValueParameters()) {
            arrayList.add(abstractC19050ba.mo2593g());
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <D extends AbstractC18973a> Set<D> m1581a(Set<D> set) {
        boolean z = !set.isEmpty() && C19756a.m1529b(C19756a.m1527c(set.iterator().next()));
        Function2<D, D, C18538n<AbstractC18973a, AbstractC18973a>> function2 = new Function2<D, D, C18538n<AbstractC18973a, AbstractC18973a>>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.2
            @Override // kotlin.jvm.functions.Function2
            public final /* synthetic */ C18538n<AbstractC18973a, AbstractC18973a> invoke(Object obj, Object obj2) {
                return new C18538n<>((AbstractC18973a) obj, (AbstractC18973a) obj2);
            }
        };
        if (set.size() <= 1) {
            return set;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (D d : set) {
            Iterator it2 = linkedHashSet.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    linkedHashSet.add(d);
                    break;
                }
                C18538n<AbstractC18973a, AbstractC18973a> invoke = function2.invoke(d, it2.next());
                AbstractC18973a abstractC18973a = (AbstractC18973a) invoke.f63624a;
                AbstractC18973a abstractC18973a2 = (AbstractC18973a) invoke.f63625b;
                if (m1558b(abstractC18973a, abstractC18973a2, z)) {
                    it2.remove();
                } else if (!m1558b(abstractC18973a2, abstractC18973a, z)) {
                }
            }
        }
        if (!f65921b && linkedHashSet.isEmpty()) {
            throw new AssertionError("All candidates filtered out from ".concat(String.valueOf(set)));
        }
        return linkedHashSet;
    }

    /* renamed from: a */
    private static Set<AbstractC19039b> m1571a(AbstractC19039b abstractC19039b) {
        if (abstractC19039b == null) {
            m1588a(13);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        m1569a(abstractC19039b, (Set<AbstractC19039b>) linkedHashSet);
        return linkedHashSet;
    }

    /* renamed from: a */
    private C18538n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> m1582a(List<TypeParameterDescriptor> list, List<TypeParameterDescriptor> list2) {
        if (list == null) {
            m1588a(40);
        }
        if (list2 == null) {
            m1588a(41);
        }
        if (f65921b || list.size() == list2.size()) {
            return new C18538n<>(new NewKotlinTypeCheckerImpl(this.f65924e), m1560b(list, list2));
        }
        throw new AssertionError("Should be the same number of type parameters: " + list + " vs " + list2);
    }

    /* renamed from: a */
    private static EnumC19222y m1585a(Collection<AbstractC19039b> collection, AbstractC19070d abstractC19070d) {
        if (collection == null) {
            m1588a(86);
        }
        if (abstractC19070d == null) {
            m1588a(87);
        }
        boolean z = false;
        boolean z2 = false;
        for (AbstractC19039b abstractC19039b : collection) {
            int i = C197458.f65932c[abstractC19039b.getModality().ordinal()];
            if (i == 1) {
                EnumC19222y enumC19222y = EnumC19222y.FINAL;
                if (enumC19222y == null) {
                    m1588a(88);
                }
                return enumC19222y;
            } else if (i == 2) {
                throw new IllegalStateException("Member cannot have SEALED modality: ".concat(String.valueOf(abstractC19039b)));
            } else {
                if (i == 3) {
                    z = true;
                } else if (i == 4) {
                    z2 = true;
                }
            }
        }
        boolean z3 = false;
        if (abstractC19070d.isExpect()) {
            z3 = false;
            if (abstractC19070d.getModality() != EnumC19222y.ABSTRACT) {
                z3 = false;
                if (abstractC19070d.getModality() != EnumC19222y.SEALED) {
                    z3 = true;
                }
            }
        }
        if (z && !z2) {
            EnumC19222y enumC19222y2 = EnumC19222y.OPEN;
            if (enumC19222y2 == null) {
                m1588a(89);
            }
            return enumC19222y2;
        } else if (!z && z2) {
            EnumC19222y modality = z3 ? abstractC19070d.getModality() : EnumC19222y.ABSTRACT;
            if (modality == null) {
                m1588a(90);
            }
            return modality;
        } else {
            HashSet hashSet = new HashSet();
            for (AbstractC19039b abstractC19039b2 : collection) {
                hashSet.addAll(m1571a(abstractC19039b2));
            }
            return m1583a(m1581a(hashSet), z3, abstractC19070d.getModality());
        }
    }

    /* renamed from: a */
    private static EnumC19222y m1583a(Collection<AbstractC19039b> collection, boolean z, EnumC19222y enumC19222y) {
        if (collection == null) {
            m1588a(91);
        }
        if (enumC19222y == null) {
            m1588a(92);
        }
        EnumC19222y enumC19222y2 = EnumC19222y.ABSTRACT;
        for (AbstractC19039b abstractC19039b : collection) {
            EnumC19222y modality = (!z || abstractC19039b.getModality() != EnumC19222y.ABSTRACT) ? abstractC19039b.getModality() : enumC19222y;
            if (modality.compareTo(enumC19222y2) < 0) {
                enumC19222y2 = modality;
            }
        }
        if (enumC19222y2 == null) {
            m1588a(93);
        }
        return enumC19222y2;
    }

    /* renamed from: a */
    public static C19746a m1576a(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2) {
        boolean z;
        if (abstractC18973a == null) {
            m1588a(38);
        }
        if (abstractC18973a2 == null) {
            m1588a(39);
        }
        boolean z2 = abstractC18973a instanceof AbstractC19219w;
        if ((!z2 || (abstractC18973a2 instanceof AbstractC19219w)) && (!((z = abstractC18973a instanceof AbstractC19017an)) || (abstractC18973a2 instanceof AbstractC19017an))) {
            if (!z2 && !z) {
                throw new IllegalArgumentException("This type of CallableDescriptor cannot be checked for overridability: ".concat(String.valueOf(abstractC18973a)));
            }
            if (!abstractC18973a.getName().equals(abstractC18973a2.getName())) {
                return C19746a.m1551a("Name mismatch");
            }
            C19746a m1555d = m1555d(abstractC18973a, abstractC18973a2);
            if (m1555d == null) {
                return null;
            }
            return m1555d;
        }
        return C19746a.m1551a("Member kind mismatch");
    }

    /* renamed from: a */
    private C19746a m1575a(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2, AbstractC19070d abstractC19070d) {
        if (abstractC18973a == null) {
            m1588a(17);
        }
        if (abstractC18973a2 == null) {
            m1588a(18);
        }
        C19746a m1574a = m1574a(abstractC18973a, abstractC18973a2, abstractC19070d, false);
        if (m1574a == null) {
            m1588a(19);
        }
        return m1574a;
    }

    /* renamed from: a */
    public static OverridingUtil m1562a(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            m1588a(1);
        }
        return new OverridingUtil(f65923d, kotlinTypeRefiner);
    }

    /* renamed from: a */
    public static OverridingUtil m1561a(KotlinTypeRefiner kotlinTypeRefiner, KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality) {
        if (kotlinTypeRefiner == null) {
            m1588a(2);
        }
        return new OverridingUtil(typeConstructorEquality, kotlinTypeRefiner);
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x07a8  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x07b1  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x07ba  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x07c3  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x07cc  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x07d5  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x07de  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x07e7  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x07f0  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x07f9  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0802  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x080b  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0814  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x081d  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0826  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x082f  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0838  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0841  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x084a  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0853  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x085c  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0865  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x086e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0877  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0880  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0889  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0892  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x089b  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x08a4  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x08ad  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x08b6  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x08bf  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x08c8  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x08d1  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x08e3  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0930  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x09ac A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c7 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0191 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04da  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void m1588a(int r4) {
        /*
            Method dump skipped, instructions count: 2487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.m1588a(int):void");
    }

    /* renamed from: a */
    private static void m1584a(Collection<AbstractC19039b> collection, AbstractC19070d abstractC19070d, AbstractC19856h abstractC19856h) {
        if (collection == null) {
            m1588a(83);
        }
        if (abstractC19070d == null) {
            m1588a(84);
        }
        if (abstractC19856h == null) {
            m1588a(85);
        }
        Collection<AbstractC19039b> m1567a = m1567a(abstractC19070d, collection);
        boolean isEmpty = m1567a.isEmpty();
        if (!isEmpty) {
            collection = m1567a;
        }
        AbstractC19039b copy = ((AbstractC19039b) m1586a(collection, new Function1<AbstractC19039b, AbstractC18973a>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.4
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ AbstractC18973a invoke(AbstractC19039b abstractC19039b) {
                return abstractC19039b;
            }
        })).copy(abstractC19070d, m1585a(collection, abstractC19070d), isEmpty ? C19200r.f65009h : C19200r.f65008g, AbstractC19039b.EnumC19040a.FAKE_OVERRIDE, false);
        abstractC19856h.mo1398a(copy, collection);
        if (f65921b || !copy.getOverriddenDescriptors().isEmpty()) {
            abstractC19856h.mo1343a(copy);
            return;
        }
        throw new AssertionError("Overridden descriptors should be set for " + AbstractC19039b.EnumC19040a.FAKE_OVERRIDE);
    }

    /* renamed from: a */
    private static void m1569a(AbstractC19039b abstractC19039b, Set<AbstractC19039b> set) {
        if (abstractC19039b == null) {
            m1588a(15);
        }
        if (set == null) {
            m1588a(16);
        }
        if (abstractC19039b.getKind().isReal()) {
            set.add(abstractC19039b);
        } else if (abstractC19039b.getOverriddenDescriptors().isEmpty()) {
            throw new IllegalStateException("No overridden descriptors found for (fake override) ".concat(String.valueOf(abstractC19039b)));
        } else {
            for (AbstractC19039b abstractC19039b2 : abstractC19039b.getOverriddenDescriptors()) {
                m1569a(abstractC19039b2, set);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01e7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1568a(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b r5, kotlin.jvm.functions.Function1<kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b, kotlin.C20128v> r6) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.m1568a(kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.jvm.functions.Function1):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static void m1566a(AbstractC19070d abstractC19070d, Collection<AbstractC19039b> all, final AbstractC19856h abstractC19856h) {
        boolean z;
        if (abstractC19070d == null) {
            m1588a(62);
        }
        if (abstractC19856h == null) {
            m1588a(64);
        }
        if (all.size() >= 2) {
            final AbstractC19193k containingDeclaration = all.iterator().next().getContainingDeclaration();
            Function1<AbstractC19039b, Boolean> predicate = new Function1<AbstractC19039b, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.3
                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
                    return Boolean.valueOf(abstractC19039b.getContainingDeclaration() == containingDeclaration);
                }
            };
            C18524p.m3840d(all, "$this$all");
            C18524p.m3840d(predicate, "predicate");
            if (!all.isEmpty()) {
                for (Object obj : all) {
                    if (!((Boolean) predicate.invoke(obj)).booleanValue()) {
                        z = false;
                        break;
                    }
                }
            }
        }
        z = true;
        if (z) {
            for (AbstractC19039b abstractC19039b : all) {
                m1584a(Collections.singleton(abstractC19039b), abstractC19070d, abstractC19856h);
            }
            return;
        }
        LinkedList linkedList = new LinkedList(all);
        while (!linkedList.isEmpty()) {
            final AbstractC19039b m1392a = C19864m.m1392a(linkedList);
            if (m1392a == null) {
                m1588a(102);
            }
            if (abstractC19856h == null) {
                m1588a(104);
            }
            m1584a(m1587a(m1392a, linkedList, new Function1<AbstractC19039b, AbstractC18973a>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.6
                @Override // kotlin.jvm.functions.Function1
                public final /* bridge */ /* synthetic */ AbstractC18973a invoke(AbstractC19039b abstractC19039b2) {
                    return abstractC19039b2;
                }
            }, new Function1<AbstractC19039b, C20128v>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.7
                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ C20128v invoke(AbstractC19039b abstractC19039b2) {
                    abstractC19856h.mo1396c(m1392a, abstractC19039b2);
                    return C20128v.f66529a;
                }
            }), abstractC19070d, abstractC19856h);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
        r0.remove();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m1579a(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r4, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r5, kotlin.C18538n<kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl, kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeCheckerContext> r6) {
        /*
            r0 = r4
            if (r0 != 0) goto L9
            r0 = 47
            m1588a(r0)
        L9:
            r0 = r5
            if (r0 != 0) goto L12
            r0 = 48
            m1588a(r0)
        L12:
            r0 = r6
            if (r0 != 0) goto L1b
            r0 = 49
            m1588a(r0)
        L1b:
            r0 = r4
            java.util.List r0 = r0.getUpperBounds()
            r7 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r5
            java.util.List r2 = r2.getUpperBounds()
            r1.<init>(r2)
            r4 = r0
            r0 = r7
            int r0 = r0.size()
            r1 = r4
            int r1 = r1.size()
            if (r0 == r1) goto L41
            r0 = 0
            return r0
        L41:
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L49:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L8a
            r0 = r8
            java.lang.Object r0 = r0.next()
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r0
            r5 = r0
            r0 = r4
            java.util.ListIterator r0 = r0.listIterator()
            r7 = r0
        L65:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L88
            r0 = r5
            r1 = r7
            java.lang.Object r1 = r1.next()
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r1
            r2 = r6
            boolean r0 = m1563a(r0, r1, r2)
            if (r0 == 0) goto L65
            r0 = r7
            r0.remove()
            goto L49
        L88:
            r0 = 0
            return r0
        L8a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.m1579a(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.n):boolean");
    }

    /* renamed from: a */
    private static boolean m1577a(AbstractC18973a abstractC18973a, Collection<AbstractC18973a> collection) {
        if (abstractC18973a == null) {
            m1588a(69);
        }
        if (collection == null) {
            m1588a(70);
        }
        for (AbstractC18973a abstractC18973a2 : collection) {
            if (!m1559b(abstractC18973a, abstractC18973a2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m1572a(AbstractC18973a abstractC18973a, KotlinType kotlinType, AbstractC18973a abstractC18973a2, KotlinType kotlinType2, C18538n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> c18538n) {
        if (abstractC18973a == null) {
            m1588a(71);
        }
        if (kotlinType == null) {
            m1588a(72);
        }
        if (abstractC18973a2 == null) {
            m1588a(73);
        }
        if (kotlinType2 == null) {
            m1588a(74);
        }
        if (c18538n == null) {
            m1588a(75);
        }
        return c18538n.f63624a.isSubtypeOf(c18538n.f63625b, kotlinType.unwrap(), kotlinType2.unwrap());
    }

    /* renamed from: a */
    private static boolean m1565a(AbstractC19197o abstractC19197o, AbstractC19197o abstractC19197o2) {
        if (abstractC19197o == null) {
            m1588a(67);
        }
        if (abstractC19197o2 == null) {
            m1588a(68);
        }
        Integer m2516a = C19200r.m2516a(abstractC19197o.getVisibility(), abstractC19197o2.getVisibility());
        return m2516a == null || m2516a.intValue() >= 0;
    }

    /* renamed from: a */
    private static boolean m1563a(KotlinType kotlinType, KotlinType kotlinType2, C18538n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> c18538n) {
        if (kotlinType == null) {
            m1588a(44);
        }
        if (kotlinType2 == null) {
            m1588a(45);
        }
        if (c18538n == null) {
            m1588a(46);
        }
        if (KotlinTypeKt.isError(kotlinType) && KotlinTypeKt.isError(kotlinType2)) {
            return true;
        }
        return c18538n.f63624a.equalTypes(c18538n.f63625b, kotlinType.unwrap(), kotlinType2.unwrap());
    }

    /* renamed from: b */
    private OverridingUtilTypeCheckerContext m1560b(List<TypeParameterDescriptor> list, List<TypeParameterDescriptor> list2) {
        if (list == null) {
            m1588a(42);
        }
        if (list2 == null) {
            m1588a(43);
        }
        if (list.isEmpty()) {
            return new OverridingUtilTypeCheckerContext(null);
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            hashMap.put(list.get(i).getTypeConstructor(), list2.get(i).getTypeConstructor());
        }
        return new OverridingUtilTypeCheckerContext(hashMap);
    }

    /* renamed from: b */
    public static boolean m1559b(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2) {
        if (abstractC18973a == null) {
            m1588a(65);
        }
        if (abstractC18973a2 == null) {
            m1588a(66);
        }
        KotlinType returnType = abstractC18973a.getReturnType();
        KotlinType returnType2 = abstractC18973a2.getReturnType();
        boolean z = f65921b;
        if (!z && returnType == null) {
            throw new AssertionError("Return type of " + abstractC18973a + " is null");
        } else if (!z && returnType2 == null) {
            throw new AssertionError("Return type of " + abstractC18973a2 + " is null");
        } else if (!m1565a((AbstractC19197o) abstractC18973a, (AbstractC19197o) abstractC18973a2)) {
            return false;
        } else {
            C18538n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> m1582a = f65920a.m1582a(abstractC18973a.getTypeParameters(), abstractC18973a2.getTypeParameters());
            if (abstractC18973a instanceof AbstractC19219w) {
                if (z || (abstractC18973a2 instanceof AbstractC19219w)) {
                    return m1572a(abstractC18973a, returnType, abstractC18973a2, returnType2, m1582a);
                }
                throw new AssertionError("b is " + abstractC18973a2.getClass());
            } else if (!(abstractC18973a instanceof AbstractC19017an)) {
                throw new IllegalArgumentException("Unexpected callable: " + abstractC18973a.getClass());
            } else if (!z && !(abstractC18973a2 instanceof AbstractC19017an)) {
                throw new AssertionError("b is " + abstractC18973a2.getClass());
            } else {
                AbstractC19017an abstractC19017an = (AbstractC19017an) abstractC18973a;
                AbstractC19017an abstractC19017an2 = (AbstractC19017an) abstractC18973a2;
                AbstractC19019ap mo2623b = abstractC19017an.mo2623b();
                AbstractC19019ap mo2623b2 = abstractC19017an2.mo2623b();
                if (!((mo2623b == null || mo2623b2 == null) ? true : m1565a((AbstractC19197o) mo2623b, (AbstractC19197o) mo2623b2))) {
                    return false;
                }
                return (!abstractC19017an.at_() || !abstractC19017an2.at_()) ? (abstractC19017an.at_() || !abstractC19017an2.at_()) && m1572a(abstractC18973a, returnType, abstractC18973a2, returnType2, m1582a) : m1582a.f63624a.equalTypes(m1582a.f63625b, returnType.unwrap(), returnType2.unwrap());
            }
        }
    }

    /* renamed from: b */
    private static <D extends AbstractC18973a> boolean m1558b(D d, D d2, boolean z) {
        if (d == null) {
            m1588a(11);
        }
        if (d2 == null) {
            m1588a(12);
        }
        if (d.equals(d2) || !C19751b.f65938a.m1542a((AbstractC19193k) d.getOriginal(), (AbstractC19193k) d2.getOriginal(), z, true)) {
            AbstractC18973a original = d2.getOriginal();
            for (AbstractC18973a abstractC18973a : C19807d.m1483a((AbstractC18973a) d)) {
                if (C19751b.f65938a.m1542a((AbstractC19193k) original, (AbstractC19193k) abstractC18973a, z, true)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: c */
    public static C19746a.EnumC19747a m1556c(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2) {
        OverridingUtil overridingUtil = f65920a;
        C19746a.EnumC19747a m1550b = overridingUtil.m1575a(abstractC18973a2, abstractC18973a, (AbstractC19070d) null).m1550b();
        C19746a.EnumC19747a m1550b2 = overridingUtil.m1575a(abstractC18973a, abstractC18973a2, (AbstractC19070d) null).m1550b();
        return (m1550b == C19746a.EnumC19747a.OVERRIDABLE && m1550b2 == C19746a.EnumC19747a.OVERRIDABLE) ? C19746a.EnumC19747a.OVERRIDABLE : (m1550b == C19746a.EnumC19747a.CONFLICT || m1550b2 == C19746a.EnumC19747a.CONFLICT) ? C19746a.EnumC19747a.CONFLICT : C19746a.EnumC19747a.INCOMPATIBLE;
    }

    /* renamed from: d */
    private static C19746a m1555d(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2) {
        boolean z = true;
        boolean z2 = abstractC18973a.getExtensionReceiverParameter() == null;
        if (abstractC18973a2.getExtensionReceiverParameter() != null) {
            z = false;
        }
        if (z2 != z) {
            return C19746a.m1551a("Receiver presence mismatch");
        }
        if (abstractC18973a.getValueParameters().size() == abstractC18973a2.getValueParameters().size()) {
            return null;
        }
        return C19746a.m1551a("Value parameter number mismatch");
    }

    /* renamed from: a */
    public final C19746a m1574a(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2, AbstractC19070d abstractC19070d, boolean z) {
        if (abstractC18973a == null) {
            m1588a(20);
        }
        if (abstractC18973a2 == null) {
            m1588a(21);
        }
        C19746a m1573a = m1573a(abstractC18973a, abstractC18973a2, z);
        boolean z2 = m1573a.m1550b() == C19746a.EnumC19747a.OVERRIDABLE;
        for (ExternalOverridabilityCondition externalOverridabilityCondition : f65922c) {
            if (externalOverridabilityCondition.getContract() != ExternalOverridabilityCondition.EnumC19736a.CONFLICTS_ONLY && (!z2 || externalOverridabilityCondition.getContract() != ExternalOverridabilityCondition.EnumC19736a.SUCCESS_ONLY)) {
                int i = C197458.f65930a[externalOverridabilityCondition.isOverridable(abstractC18973a, abstractC18973a2, abstractC19070d).ordinal()];
                if (i == 1) {
                    z2 = true;
                } else if (i == 2) {
                    return C19746a.m1549b("External condition failed");
                } else {
                    if (i == 3) {
                        return C19746a.m1551a("External condition");
                    }
                }
            }
        }
        if (!z2) {
            if (m1573a == null) {
                m1588a(24);
            }
            return m1573a;
        }
        for (ExternalOverridabilityCondition externalOverridabilityCondition2 : f65922c) {
            if (externalOverridabilityCondition2.getContract() == ExternalOverridabilityCondition.EnumC19736a.CONFLICTS_ONLY) {
                int i2 = C197458.f65930a[externalOverridabilityCondition2.isOverridable(abstractC18973a, abstractC18973a2, abstractC19070d).ordinal()];
                if (i2 == 1) {
                    throw new IllegalStateException("Contract violation in " + externalOverridabilityCondition2.getClass().getName() + " condition. It's not supposed to end with success");
                } else if (i2 == 2) {
                    return C19746a.m1549b("External condition failed");
                } else {
                    if (i2 == 3) {
                        return C19746a.m1551a("External condition");
                    }
                }
            }
        }
        C19746a m1553a = C19746a.m1553a();
        if (m1553a == null) {
            m1588a(27);
        }
        return m1553a;
    }

    /* renamed from: a */
    public final C19746a m1573a(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2, boolean z) {
        if (abstractC18973a == null) {
            m1588a(28);
        }
        if (abstractC18973a2 == null) {
            m1588a(29);
        }
        C19746a m1576a = m1576a(abstractC18973a, abstractC18973a2);
        if (m1576a != null) {
            if (m1576a == null) {
                m1588a(30);
            }
            return m1576a;
        }
        List<KotlinType> m1578a = m1578a(abstractC18973a);
        List<KotlinType> m1578a2 = m1578a(abstractC18973a2);
        List<TypeParameterDescriptor> typeParameters = abstractC18973a.getTypeParameters();
        List<TypeParameterDescriptor> typeParameters2 = abstractC18973a2.getTypeParameters();
        if (typeParameters.size() != typeParameters2.size()) {
            for (int i = 0; i < m1578a.size(); i++) {
                if (!KotlinTypeChecker.DEFAULT.equalTypes(m1578a.get(i), m1578a2.get(i))) {
                    return C19746a.m1551a("Type parameter number mismatch");
                }
            }
            return C19746a.m1549b("Type parameter number mismatch");
        }
        C18538n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> m1582a = m1582a(typeParameters, typeParameters2);
        for (int i2 = 0; i2 < typeParameters.size(); i2++) {
            if (!m1579a(typeParameters.get(i2), typeParameters2.get(i2), m1582a)) {
                return C19746a.m1551a("Type parameter bounds mismatch");
            }
        }
        for (int i3 = 0; i3 < m1578a.size(); i3++) {
            if (!m1563a(m1578a.get(i3), m1578a2.get(i3), m1582a)) {
                return C19746a.m1551a("Value parameter type mismatch");
            }
        }
        if ((abstractC18973a instanceof AbstractC19219w) && (abstractC18973a2 instanceof AbstractC19219w) && ((AbstractC19219w) abstractC18973a).isSuspend() != ((AbstractC19219w) abstractC18973a2).isSuspend()) {
            return C19746a.m1549b("Incompatible suspendability");
        }
        if (z) {
            KotlinType returnType = abstractC18973a.getReturnType();
            KotlinType returnType2 = abstractC18973a2.getReturnType();
            if (returnType != null && returnType2 != null) {
                boolean z2 = false;
                if (KotlinTypeKt.isError(returnType2)) {
                    z2 = false;
                    if (KotlinTypeKt.isError(returnType)) {
                        z2 = true;
                    }
                }
                if (!z2 && !m1582a.f63624a.isSubtypeOf(m1582a.f63625b, returnType2.unwrap(), returnType.unwrap())) {
                    return C19746a.m1549b("Return type mismatch");
                }
            }
        }
        C19746a m1553a = C19746a.m1553a();
        if (m1553a == null) {
            m1588a(37);
        }
        return m1553a;
    }

    /* renamed from: a */
    public final void m1580a(C18966e c18966e, Collection<? extends AbstractC19039b> collection, Collection<? extends AbstractC19039b> collection2, AbstractC19070d abstractC19070d, AbstractC19856h abstractC19856h) {
        if (c18966e == null) {
            m1588a(50);
        }
        if (collection == null) {
            m1588a(51);
        }
        if (collection2 == null) {
            m1588a(52);
        }
        if (abstractC19070d == null) {
            m1588a(53);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        for (AbstractC19039b abstractC19039b : collection2) {
            linkedHashSet.removeAll(m1570a(abstractC19039b, collection, abstractC19070d, abstractC19856h));
        }
        m1566a(abstractC19070d, linkedHashSet, abstractC19856h);
    }
}
