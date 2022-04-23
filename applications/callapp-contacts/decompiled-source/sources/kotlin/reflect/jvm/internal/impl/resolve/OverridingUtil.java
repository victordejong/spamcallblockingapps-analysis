package kotlin.reflect.jvm.internal.impl.resolve;

import com.google.api.client.googleapis.notifications.b;
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
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.utils.i;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil.class */
public class OverridingUtil {

    /* renamed from: a  reason: collision with root package name */
    public static final OverridingUtil f38207a;

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f38208b = true;

    /* renamed from: c  reason: collision with root package name */
    private static final List<ExternalOverridabilityCondition> f38209c = n.h(ServiceLoader.load(ExternalOverridabilityCondition.class, ExternalOverridabilityCondition.class.getClassLoader()));

    /* renamed from: d  reason: collision with root package name */
    private static final KotlinTypeChecker.TypeConstructorEquality f38210d;
    private final KotlinTypeRefiner e;
    private final KotlinTypeChecker.TypeConstructorEquality f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$8  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$8.class */
    public static final /* synthetic */ class AnonymousClass8 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38215a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f38216b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f38217c;

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
            int[] iArr = new int[y.values().length];
            f38217c = iArr;
            try {
                iArr[y.FINAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38217c[y.SEALED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f38217c[y.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f38217c[y.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[a.EnumC0703a.values().length];
            f38216b = iArr2;
            try {
                iArr2[a.EnumC0703a.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f38216b[a.EnumC0703a.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f38216b[a.EnumC0703a.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[ExternalOverridabilityCondition.b.values().length];
            f38215a = iArr3;
            try {
                iArr3[ExternalOverridabilityCondition.b.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f38215a[ExternalOverridabilityCondition.b.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f38215a[ExternalOverridabilityCondition.b.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f38215a[ExternalOverridabilityCondition.b.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverridingUtilTypeCheckerContext.class */
    public class OverridingUtilTypeCheckerContext extends ClassicTypeCheckerContext {
        private final Map<TypeConstructor, TypeConstructor> matchingTypeConstructors;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            Object[] objArr = new Object[3];
            if (i == 1 || i == 3) {
                objArr[0] = b.f31754a;
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

        public OverridingUtilTypeCheckerContext(Map<TypeConstructor, TypeConstructor> map) {
            super(true, true, true, OverridingUtil.this.e);
            this.matchingTypeConstructors = map;
        }

        private boolean areEqualTypeConstructorsByAxioms(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
            if (typeConstructor == null) {
                $$$reportNull$$$0(2);
            }
            if (typeConstructor2 == null) {
                $$$reportNull$$$0(3);
            }
            if (OverridingUtil.this.f.equals(typeConstructor, typeConstructor2)) {
                return true;
            }
            Map<TypeConstructor, TypeConstructor> map = this.matchingTypeConstructors;
            if (map == null) {
                return false;
            }
            TypeConstructor typeConstructor3 = map.get(typeConstructor);
            TypeConstructor typeConstructor4 = this.matchingTypeConstructors.get(typeConstructor2);
            if (typeConstructor3 == null || !typeConstructor3.equals(typeConstructor2)) {
                return typeConstructor4 != null && typeConstructor4.equals(typeConstructor);
            }
            return true;
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

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f38218a = new a(EnumC0703a.OVERRIDABLE, "SUCCESS");

        /* renamed from: b  reason: collision with root package name */
        private final EnumC0703a f38219b;

        /* renamed from: c  reason: collision with root package name */
        private final String f38220c;

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a.class */
        public enum EnumC0703a {
            OVERRIDABLE,
            INCOMPATIBLE,
            CONFLICT
        }

        public a(EnumC0703a aVar, String str) {
            if (aVar == null) {
                a(3);
            }
            if (str == null) {
                a(4);
            }
            this.f38219b = aVar;
            this.f38220c = str;
        }

        public static a a() {
            a aVar = f38218a;
            if (aVar == null) {
                a(0);
            }
            return aVar;
        }

        public static a a(String str) {
            return new a(EnumC0703a.INCOMPATIBLE, str);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a4  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00d0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static /* synthetic */ void a(int r4) {
            /*
                Method dump skipped, instructions count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.a.a(int):void");
        }

        public static a b(String str) {
            return new a(EnumC0703a.CONFLICT, str);
        }

        public final EnumC0703a b() {
            EnumC0703a aVar = this.f38219b;
            if (aVar == null) {
                a(5);
            }
            return aVar;
        }
    }

    static {
        KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality = new KotlinTypeChecker.TypeConstructorEquality() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.1
            private static /* synthetic */ void a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "a";
                } else {
                    objArr[0] = b.f31754a;
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1";
                objArr[2] = "equals";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
            public final boolean equals(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
                if (typeConstructor == null) {
                    a(0);
                }
                if (typeConstructor2 == null) {
                    a(1);
                }
                return typeConstructor.equals(typeConstructor2);
            }
        };
        f38210d = typeConstructorEquality;
        f38207a = new OverridingUtil(typeConstructorEquality, KotlinTypeRefiner.Default.INSTANCE);
    }

    private OverridingUtil(KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality, KotlinTypeRefiner kotlinTypeRefiner) {
        if (typeConstructorEquality == null) {
            a(4);
        }
        if (kotlinTypeRefiner == null) {
            a(5);
        }
        this.f = typeConstructorEquality;
        this.e = kotlinTypeRefiner;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <H> H a(Collection<H> collection, Function1<H, kotlin.reflect.jvm.internal.impl.descriptors.a> function1) {
        if (collection == null) {
            a(76);
        }
        if (function1 == 0) {
            a(77);
        }
        if (!f38208b && collection.isEmpty()) {
            throw new AssertionError("Should have at least one overridable descriptor");
        } else if (collection.size() == 1) {
            H h = (H) n.a((Iterable<? extends Object>) collection);
            if (h == null) {
                a(78);
            }
            return h;
        } else {
            ArrayList<H> arrayList = new ArrayList(2);
            List b2 = n.b((Iterable) collection, (Function1) function1);
            Object a2 = n.a((Iterable<? extends Object>) collection);
            kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) function1.invoke(a2);
            H h2 = a2;
            for (H h3 : collection) {
                kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) function1.invoke(h3);
                if (a(aVar2, b2)) {
                    arrayList.add(h3);
                }
                if (b(aVar2, aVar) && !b(aVar, aVar2)) {
                    h2 = h3;
                }
            }
            if (arrayList.isEmpty()) {
                if (h2 == null) {
                    a(79);
                }
                return h2;
            } else if (arrayList.size() == 1) {
                H h4 = (H) n.a((Iterable<? extends Object>) arrayList);
                if (h4 == null) {
                    a(80);
                }
                return h4;
            } else {
                r4 = null;
                for (H h5 : arrayList) {
                    if (!FlexibleTypesKt.isFlexible(((kotlin.reflect.jvm.internal.impl.descriptors.a) function1.invoke(h5)).getReturnType())) {
                        break;
                    }
                }
                if (h5 != null) {
                    if (h5 == null) {
                        a(81);
                    }
                    return h5;
                }
                H h6 = (H) n.a((Iterable<? extends Object>) arrayList);
                if (h6 == null) {
                    a(82);
                }
                return h6;
            }
        }
    }

    public static <H> Collection<H> a(H h, Collection<H> collection, Function1<H, kotlin.reflect.jvm.internal.impl.descriptors.a> function1, Function1<H, v> function12) {
        if (h == null) {
            a(97);
        }
        if (function1 == null) {
            a(99);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(h);
        kotlin.reflect.jvm.internal.impl.descriptors.a invoke = function1.invoke(h);
        Iterator<H> it2 = collection.iterator();
        while (it2.hasNext()) {
            H next = it2.next();
            kotlin.reflect.jvm.internal.impl.descriptors.a invoke2 = function1.invoke(next);
            if (h == next) {
                it2.remove();
            } else {
                a.EnumC0703a c2 = c(invoke, invoke2);
                if (c2 == a.EnumC0703a.OVERRIDABLE) {
                    arrayList.add(next);
                    it2.remove();
                } else if (c2 == a.EnumC0703a.CONFLICT) {
                    function12.invoke(next);
                    it2.remove();
                }
            }
        }
        return arrayList;
    }

    private Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar, Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> collection, d dVar, h hVar) {
        if (bVar == null) {
            a(57);
        }
        if (collection == null) {
            a(58);
        }
        if (dVar == null) {
            a(59);
        }
        if (hVar == null) {
            a(60);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        i a2 = i.a();
        for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 : collection) {
            a.EnumC0703a b2 = a(bVar2, bVar, dVar).b();
            if (bVar == null) {
                a(55);
            }
            if (bVar2 == null) {
                a(56);
            }
            boolean z = !r.a(bVar2.getVisibility()) && r.a((o) bVar2, (k) bVar);
            int i = AnonymousClass8.f38216b[b2.ordinal()];
            if (i == 1) {
                if (z) {
                    a2.add(bVar2);
                }
                arrayList.add(bVar2);
            } else if (i == 2) {
                if (z) {
                    hVar.b(bVar2, bVar);
                }
                arrayList.add(bVar2);
            }
        }
        hVar.a(bVar, a2);
        return arrayList;
    }

    private static Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> a(final d dVar, Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> collection) {
        if (dVar == null) {
            a(94);
        }
        if (collection == null) {
            a(95);
        }
        return n.a((Iterable) collection, (Function1) new Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.5
            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
                kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 = bVar;
                return Boolean.valueOf(!r.a(bVar2.getVisibility()) && r.a((o) bVar2, (k) d.this));
            }
        });
    }

    private static List<KotlinType> a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        aq extensionReceiverParameter = aVar.getExtensionReceiverParameter();
        ArrayList arrayList = new ArrayList();
        if (extensionReceiverParameter != null) {
            arrayList.add(extensionReceiverParameter.g());
        }
        for (ba baVar : aVar.getValueParameters()) {
            arrayList.add(baVar.g());
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> Set<D> a(Set<D> set) {
        boolean z = !set.isEmpty() && kotlin.reflect.jvm.internal.impl.resolve.b.a.b(kotlin.reflect.jvm.internal.impl.resolve.b.a.c(set.iterator().next()));
        Function2<D, D, kotlin.n<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a>> function2 = new Function2<D, D, kotlin.n<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a>>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.2
            @Override // kotlin.jvm.functions.Function2
            public final /* synthetic */ kotlin.n<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a> invoke(Object obj, Object obj2) {
                return new kotlin.n<>((kotlin.reflect.jvm.internal.impl.descriptors.a) obj, (kotlin.reflect.jvm.internal.impl.descriptors.a) obj2);
            }
        };
        if (set.size() <= 1) {
            return set;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (D d2 : set) {
            Iterator it2 = linkedHashSet.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    linkedHashSet.add(d2);
                    break;
                }
                kotlin.n<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a> invoke = function2.invoke(d2, it2.next());
                kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) invoke.f36810a;
                kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) invoke.f36811b;
                if (b(aVar, aVar2, z)) {
                    it2.remove();
                } else if (!b(aVar2, aVar, z)) {
                }
            }
        }
        if (f38208b || !linkedHashSet.isEmpty()) {
            return linkedHashSet;
        }
        throw new AssertionError("All candidates filtered out from ".concat(String.valueOf(set)));
    }

    private static Set<kotlin.reflect.jvm.internal.impl.descriptors.b> a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        if (bVar == null) {
            a(13);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        a(bVar, (Set<kotlin.reflect.jvm.internal.impl.descriptors.b>) linkedHashSet);
        return linkedHashSet;
    }

    private kotlin.n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> a(List<TypeParameterDescriptor> list, List<TypeParameterDescriptor> list2) {
        if (list == null) {
            a(40);
        }
        if (list2 == null) {
            a(41);
        }
        if (f38208b || list.size() == list2.size()) {
            return new kotlin.n<>(new NewKotlinTypeCheckerImpl(this.e), b(list, list2));
        }
        throw new AssertionError("Should be the same number of type parameters: " + list + " vs " + list2);
    }

    private static y a(Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> collection, d dVar) {
        if (collection == null) {
            a(86);
        }
        if (dVar == null) {
            a(87);
        }
        boolean z = false;
        boolean z2 = false;
        for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar : collection) {
            int i = AnonymousClass8.f38217c[bVar.getModality().ordinal()];
            if (i == 1) {
                y yVar = y.FINAL;
                if (yVar == null) {
                    a(88);
                }
                return yVar;
            } else if (i == 2) {
                throw new IllegalStateException("Member cannot have SEALED modality: ".concat(String.valueOf(bVar)));
            } else if (i == 3) {
                z = true;
            } else if (i == 4) {
                z2 = true;
            }
        }
        boolean z3 = false;
        if (dVar.isExpect()) {
            z3 = false;
            if (dVar.getModality() != y.ABSTRACT) {
                z3 = false;
                if (dVar.getModality() != y.SEALED) {
                    z3 = true;
                }
            }
        }
        if (z && !z2) {
            y yVar2 = y.OPEN;
            if (yVar2 == null) {
                a(89);
            }
            return yVar2;
        } else if (z || !z2) {
            HashSet hashSet = new HashSet();
            for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 : collection) {
                hashSet.addAll(a(bVar2));
            }
            return a(a(hashSet), z3, dVar.getModality());
        } else {
            y modality = z3 ? dVar.getModality() : y.ABSTRACT;
            if (modality == null) {
                a(90);
            }
            return modality;
        }
    }

    private static y a(Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> collection, boolean z, y yVar) {
        if (collection == null) {
            a(91);
        }
        if (yVar == null) {
            a(92);
        }
        y yVar2 = y.ABSTRACT;
        for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar : collection) {
            y modality = (!z || bVar.getModality() != y.ABSTRACT) ? bVar.getModality() : yVar;
            if (modality.compareTo(yVar2) < 0) {
                yVar2 = modality;
            }
        }
        if (yVar2 == null) {
            a(93);
        }
        return yVar2;
    }

    public static a a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        boolean z;
        if (aVar == null) {
            a(38);
        }
        if (aVar2 == null) {
            a(39);
        }
        boolean z2 = aVar instanceof w;
        if ((z2 && !(aVar2 instanceof w)) || (((z = aVar instanceof an)) && !(aVar2 instanceof an))) {
            return a.a("Member kind mismatch");
        }
        if (!z2 && !z) {
            throw new IllegalArgumentException("This type of CallableDescriptor cannot be checked for overridability: ".concat(String.valueOf(aVar)));
        } else if (!aVar.getName().equals(aVar2.getName())) {
            return a.a("Name mismatch");
        } else {
            a d2 = d(aVar, aVar2);
            if (d2 != null) {
                return d2;
            }
            return null;
        }
    }

    private a a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, d dVar) {
        if (aVar == null) {
            a(17);
        }
        if (aVar2 == null) {
            a(18);
        }
        a a2 = a(aVar, aVar2, dVar, false);
        if (a2 == null) {
            a(19);
        }
        return a2;
    }

    public static OverridingUtil a(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            a(1);
        }
        return new OverridingUtil(f38210d, kotlinTypeRefiner);
    }

    public static OverridingUtil a(KotlinTypeRefiner kotlinTypeRefiner, KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality) {
        if (kotlinTypeRefiner == null) {
            a(2);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void a(int r4) {
        /*
            Method dump skipped, instructions count: 2487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.a(int):void");
    }

    private static void a(Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> collection, d dVar, h hVar) {
        if (collection == null) {
            a(83);
        }
        if (dVar == null) {
            a(84);
        }
        if (hVar == null) {
            a(85);
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> a2 = a(dVar, collection);
        boolean isEmpty = a2.isEmpty();
        if (!isEmpty) {
            collection = a2;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.b copy = ((kotlin.reflect.jvm.internal.impl.descriptors.b) a(collection, new Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.4
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
                return bVar;
            }
        })).copy(dVar, a(collection, dVar), isEmpty ? r.h : r.g, b.a.FAKE_OVERRIDE, false);
        hVar.a(copy, collection);
        if (f38208b || !copy.getOverriddenDescriptors().isEmpty()) {
            hVar.a(copy);
            return;
        }
        throw new AssertionError("Overridden descriptors should be set for " + b.a.FAKE_OVERRIDE);
    }

    private static void a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar, Set<kotlin.reflect.jvm.internal.impl.descriptors.b> set) {
        if (bVar == null) {
            a(15);
        }
        if (set == null) {
            a(16);
        }
        if (bVar.getKind().isReal()) {
            set.add(bVar);
        } else if (!bVar.getOverriddenDescriptors().isEmpty()) {
            for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 : bVar.getOverriddenDescriptors()) {
                a(bVar2, set);
            }
        } else {
            throw new IllegalStateException("No overridden descriptors found for (fake override) ".concat(String.valueOf(bVar)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(kotlin.reflect.jvm.internal.impl.descriptors.b r5, kotlin.jvm.functions.Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.v> r6) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.a(kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.jvm.functions.Function1):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void a(d dVar, Collection<kotlin.reflect.jvm.internal.impl.descriptors.b> all, final h hVar) {
        boolean z;
        if (dVar == null) {
            a(62);
        }
        if (hVar == null) {
            a(64);
        }
        if (all.size() >= 2) {
            final k containingDeclaration = all.iterator().next().getContainingDeclaration();
            Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> predicate = new Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.3
                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
                    return Boolean.valueOf(bVar.getContainingDeclaration() == k.this);
                }
            };
            p.d(all, "$this$all");
            p.d(predicate, "predicate");
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
            for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar : all) {
                a(Collections.singleton(bVar), dVar, hVar);
            }
            return;
        }
        LinkedList linkedList = new LinkedList(all);
        while (!linkedList.isEmpty()) {
            final kotlin.reflect.jvm.internal.impl.descriptors.b a2 = m.a(linkedList);
            if (a2 == null) {
                a(102);
            }
            if (hVar == null) {
                a(104);
            }
            a(a(a2, linkedList, new Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.6
                @Override // kotlin.jvm.functions.Function1
                public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar2) {
                    return bVar2;
                }
            }, new Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, v>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.7
                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar2) {
                    h.this.c(a2, bVar2);
                    return v.f38654a;
                }
            }), dVar, hVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
        r0.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r4, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r5, kotlin.n<kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl, kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeCheckerContext> r6) {
        /*
            r0 = r4
            if (r0 != 0) goto L_0x0009
            r0 = 47
            a(r0)
        L_0x0009:
            r0 = r5
            if (r0 != 0) goto L_0x0012
            r0 = 48
            a(r0)
        L_0x0012:
            r0 = r6
            if (r0 != 0) goto L_0x001b
            r0 = 49
            a(r0)
        L_0x001b:
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
            if (r0 == r1) goto L_0x0041
            r0 = 0
            return r0
        L_0x0041:
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L_0x0049:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x008a
            r0 = r8
            java.lang.Object r0 = r0.next()
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r0
            r5 = r0
            r0 = r4
            java.util.ListIterator r0 = r0.listIterator()
            r7 = r0
        L_0x0065:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0088
            r0 = r5
            r1 = r7
            java.lang.Object r1 = r1.next()
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r1
            r2 = r6
            boolean r0 = a(r0, r1, r2)
            if (r0 == 0) goto L_0x0065
            r0 = r7
            r0.remove()
            goto L_0x0049
        L_0x0088:
            r0 = 0
            return r0
        L_0x008a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.a(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.n):boolean");
    }

    private static boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, Collection<kotlin.reflect.jvm.internal.impl.descriptors.a> collection) {
        if (aVar == null) {
            a(69);
        }
        if (collection == null) {
            a(70);
        }
        for (kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 : collection) {
            if (!b(aVar, aVar2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, KotlinType kotlinType, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, KotlinType kotlinType2, kotlin.n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> nVar) {
        if (aVar == null) {
            a(71);
        }
        if (kotlinType == null) {
            a(72);
        }
        if (aVar2 == null) {
            a(73);
        }
        if (kotlinType2 == null) {
            a(74);
        }
        if (nVar == null) {
            a(75);
        }
        return nVar.f36810a.isSubtypeOf(nVar.f36811b, kotlinType.unwrap(), kotlinType2.unwrap());
    }

    private static boolean a(o oVar, o oVar2) {
        if (oVar == null) {
            a(67);
        }
        if (oVar2 == null) {
            a(68);
        }
        Integer a2 = r.a(oVar.getVisibility(), oVar2.getVisibility());
        return a2 == null || a2.intValue() >= 0;
    }

    private static boolean a(KotlinType kotlinType, KotlinType kotlinType2, kotlin.n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> nVar) {
        if (kotlinType == null) {
            a(44);
        }
        if (kotlinType2 == null) {
            a(45);
        }
        if (nVar == null) {
            a(46);
        }
        if (KotlinTypeKt.isError(kotlinType) && KotlinTypeKt.isError(kotlinType2)) {
            return true;
        }
        return nVar.f36810a.equalTypes(nVar.f36811b, kotlinType.unwrap(), kotlinType2.unwrap());
    }

    private OverridingUtilTypeCheckerContext b(List<TypeParameterDescriptor> list, List<TypeParameterDescriptor> list2) {
        if (list == null) {
            a(42);
        }
        if (list2 == null) {
            a(43);
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

    public static boolean b(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        if (aVar == null) {
            a(65);
        }
        if (aVar2 == null) {
            a(66);
        }
        KotlinType returnType = aVar.getReturnType();
        KotlinType returnType2 = aVar2.getReturnType();
        boolean z = f38208b;
        if (!z && returnType == null) {
            throw new AssertionError("Return type of " + aVar + " is null");
        } else if (!z && returnType2 == null) {
            throw new AssertionError("Return type of " + aVar2 + " is null");
        } else if (!a((o) aVar, (o) aVar2)) {
            return false;
        } else {
            kotlin.n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> a2 = f38207a.a(aVar.getTypeParameters(), aVar2.getTypeParameters());
            if (aVar instanceof w) {
                if (z || (aVar2 instanceof w)) {
                    return a(aVar, returnType, aVar2, returnType2, a2);
                }
                throw new AssertionError("b is " + aVar2.getClass());
            } else if (!(aVar instanceof an)) {
                throw new IllegalArgumentException("Unexpected callable: " + aVar.getClass());
            } else if (z || (aVar2 instanceof an)) {
                an anVar = (an) aVar;
                an anVar2 = (an) aVar2;
                ap b2 = anVar.b();
                ap b3 = anVar2.b();
                if (!((b2 == null || b3 == null) ? true : a((o) b2, (o) b3))) {
                    return false;
                }
                return (!anVar.at_() || !anVar2.at_()) ? (anVar.at_() || !anVar2.at_()) && a(aVar, returnType, aVar2, returnType2, a2) : a2.f36810a.equalTypes(a2.f36811b, returnType.unwrap(), returnType2.unwrap());
            } else {
                throw new AssertionError("b is " + aVar2.getClass());
            }
        }
    }

    private static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> boolean b(D d2, D d3, boolean z) {
        if (d2 == null) {
            a(11);
        }
        if (d3 == null) {
            a(12);
        }
        if (!d2.equals(d3) && b.f38223a.a((k) d2.getOriginal(), (k) d3.getOriginal(), z, true)) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a original = d3.getOriginal();
        for (kotlin.reflect.jvm.internal.impl.descriptors.a aVar : d.a((kotlin.reflect.jvm.internal.impl.descriptors.a) d2)) {
            if (b.f38223a.a((k) original, (k) aVar, z, true)) {
                return true;
            }
        }
        return false;
    }

    public static a.EnumC0703a c(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        OverridingUtil overridingUtil = f38207a;
        a.EnumC0703a b2 = overridingUtil.a(aVar2, aVar, (d) null).b();
        a.EnumC0703a b3 = overridingUtil.a(aVar, aVar2, (d) null).b();
        return (b2 == a.EnumC0703a.OVERRIDABLE && b3 == a.EnumC0703a.OVERRIDABLE) ? a.EnumC0703a.OVERRIDABLE : (b2 == a.EnumC0703a.CONFLICT || b3 == a.EnumC0703a.CONFLICT) ? a.EnumC0703a.CONFLICT : a.EnumC0703a.INCOMPATIBLE;
    }

    private static a d(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        boolean z = true;
        boolean z2 = aVar.getExtensionReceiverParameter() == null;
        if (aVar2.getExtensionReceiverParameter() != null) {
            z = false;
        }
        if (z2 != z) {
            return a.a("Receiver presence mismatch");
        }
        if (aVar.getValueParameters().size() != aVar2.getValueParameters().size()) {
            return a.a("Value parameter number mismatch");
        }
        return null;
    }

    public final a a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, d dVar, boolean z) {
        if (aVar == null) {
            a(20);
        }
        if (aVar2 == null) {
            a(21);
        }
        a a2 = a(aVar, aVar2, z);
        boolean z2 = a2.b() == a.EnumC0703a.OVERRIDABLE;
        for (ExternalOverridabilityCondition externalOverridabilityCondition : f38209c) {
            if (externalOverridabilityCondition.getContract() != ExternalOverridabilityCondition.a.CONFLICTS_ONLY && (!z2 || externalOverridabilityCondition.getContract() != ExternalOverridabilityCondition.a.SUCCESS_ONLY)) {
                int i = AnonymousClass8.f38215a[externalOverridabilityCondition.isOverridable(aVar, aVar2, dVar).ordinal()];
                if (i == 1) {
                    z2 = true;
                } else if (i == 2) {
                    return a.b("External condition failed");
                } else {
                    if (i == 3) {
                        return a.a("External condition");
                    }
                }
            }
        }
        if (!z2) {
            if (a2 == null) {
                a(24);
            }
            return a2;
        }
        for (ExternalOverridabilityCondition externalOverridabilityCondition2 : f38209c) {
            if (externalOverridabilityCondition2.getContract() == ExternalOverridabilityCondition.a.CONFLICTS_ONLY) {
                int i2 = AnonymousClass8.f38215a[externalOverridabilityCondition2.isOverridable(aVar, aVar2, dVar).ordinal()];
                if (i2 == 1) {
                    throw new IllegalStateException("Contract violation in " + externalOverridabilityCondition2.getClass().getName() + " condition. It's not supposed to end with success");
                } else if (i2 == 2) {
                    return a.b("External condition failed");
                } else {
                    if (i2 == 3) {
                        return a.a("External condition");
                    }
                }
            }
        }
        a a3 = a.a();
        if (a3 == null) {
            a(27);
        }
        return a3;
    }

    public final a a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, boolean z) {
        if (aVar == null) {
            a(28);
        }
        if (aVar2 == null) {
            a(29);
        }
        a a2 = a(aVar, aVar2);
        if (a2 != null) {
            if (a2 == null) {
                a(30);
            }
            return a2;
        }
        List<KotlinType> a3 = a(aVar);
        List<KotlinType> a4 = a(aVar2);
        List<TypeParameterDescriptor> typeParameters = aVar.getTypeParameters();
        List<TypeParameterDescriptor> typeParameters2 = aVar2.getTypeParameters();
        if (typeParameters.size() != typeParameters2.size()) {
            for (int i = 0; i < a3.size(); i++) {
                if (!KotlinTypeChecker.DEFAULT.equalTypes(a3.get(i), a4.get(i))) {
                    return a.a("Type parameter number mismatch");
                }
            }
            return a.b("Type parameter number mismatch");
        }
        kotlin.n<NewKotlinTypeCheckerImpl, ClassicTypeCheckerContext> a5 = a(typeParameters, typeParameters2);
        for (int i2 = 0; i2 < typeParameters.size(); i2++) {
            if (!a(typeParameters.get(i2), typeParameters2.get(i2), a5)) {
                return a.a("Type parameter bounds mismatch");
            }
        }
        for (int i3 = 0; i3 < a3.size(); i3++) {
            if (!a(a3.get(i3), a4.get(i3), a5)) {
                return a.a("Value parameter type mismatch");
            }
        }
        if ((aVar instanceof w) && (aVar2 instanceof w) && ((w) aVar).isSuspend() != ((w) aVar2).isSuspend()) {
            return a.b("Incompatible suspendability");
        }
        if (z) {
            KotlinType returnType = aVar.getReturnType();
            KotlinType returnType2 = aVar2.getReturnType();
            if (!(returnType == null || returnType2 == null)) {
                boolean z2 = false;
                if (KotlinTypeKt.isError(returnType2)) {
                    z2 = false;
                    if (KotlinTypeKt.isError(returnType)) {
                        z2 = true;
                    }
                }
                if (!z2 && !a5.f36810a.isSubtypeOf(a5.f36811b, returnType2.unwrap(), returnType.unwrap())) {
                    return a.b("Return type mismatch");
                }
            }
        }
        a a6 = a.a();
        if (a6 == null) {
            a(37);
        }
        return a6;
    }

    public final void a(e eVar, Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> collection, Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> collection2, d dVar, h hVar) {
        if (eVar == null) {
            a(50);
        }
        if (collection == null) {
            a(51);
        }
        if (collection2 == null) {
            a(52);
        }
        if (dVar == null) {
            a(53);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar : collection2) {
            linkedHashSet.removeAll(a(bVar, collection, dVar, hVar));
        }
        a(dVar, linkedHashSet, hVar);
    }
}
