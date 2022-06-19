package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.C18538n;
import kotlin.C20130x;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p530f.C18363d;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19159e;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19148ae;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19166l;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19189x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19190y;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractC19510n;
import kotlin.reflect.jvm.internal.impl.load.java.C19387d;
import kotlin.reflect.jvm.internal.impl.load.java.C19418e;
import kotlin.reflect.jvm.internal.impl.load.java.C19423h;
import kotlin.reflect.jvm.internal.impl.load.java.C19516r;
import kotlin.reflect.jvm.internal.impl.load.java.C19521t;
import kotlin.reflect.jvm.internal.impl.load.java.C19585u;
import kotlin.reflect.jvm.internal.impl.load.java.C19588x;
import kotlin.reflect.jvm.internal.impl.load.java.C19598z;
import kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19429a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19498e;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19362j;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.C19344a;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.EnumC19365k;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19369c;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19371e;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19372f;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19375g;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19379k;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19380l;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19397f;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19402k;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19405n;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19407p;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19415x;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t;
import kotlin.reflect.jvm.internal.impl.p537a.C18693a;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
import kotlin.reflect.jvm.internal.impl.utils.C20028i;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f.class */
public final class C19455f extends AbstractC19480i {

    /* renamed from: a */
    final AbstractC19070d f65395a;

    /* renamed from: b */
    final AbstractC19296i<List<AbstractC19065c>> f65396b;

    /* renamed from: h */
    private final AbstractC19398g f65397h;

    /* renamed from: i */
    private final boolean f65398i;

    /* renamed from: j */
    private final AbstractC19296i<Set<C18966e>> f65399j;

    /* renamed from: k */
    private final AbstractC19296i<Map<C18966e, AbstractC19405n>> f65400k;

    /* renamed from: l */
    private final AbstractC19295h<C18966e, AbstractC19159e> f65401l;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$a.class */
    static final class C19456a extends AbstractC18526r implements Function1<AbstractC19407p, Boolean> {

        /* renamed from: a */
        public static final C19456a f65402a = new C19456a();

        C19456a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19407p abstractC19407p) {
            AbstractC19407p it2 = abstractC19407p;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(!it2.mo2185p());
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$b.class */
    final /* synthetic */ class C19457b extends C18521m implements Function1<C18966e, Collection<? extends AbstractC19025as>> {
        C19457b(C19455f c19455f) {
            super(1, c19455f);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "searchMethodsByNameWithoutBuiltinMagic";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19455f.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
            C18966e p0 = c18966e;
            C18524p.m3840d(p0, "p0");
            return C19455f.m2117a((C19455f) this.receiver, p0);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$c.class */
    final /* synthetic */ class C19458c extends C18521m implements Function1<C18966e, Collection<? extends AbstractC19025as>> {
        C19458c(C19455f c19455f) {
            super(1, c19455f);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "searchMethodsInSupertypesWithoutBuiltinMagic";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19455f.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
            C18966e p0 = c18966e;
            C18524p.m3840d(p0, "p0");
            return C19455f.m2110b((C19455f) this.receiver, p0);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$d.class */
    static final class C19459d extends AbstractC18526r implements Function1<C18966e, Collection<? extends AbstractC19025as>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19459d() {
            super(1);
            C19455f.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
            C18966e it2 = c18966e;
            C18524p.m3840d(it2, "it");
            return C19455f.m2117a(C19455f.this, it2);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$e.class */
    static final class C19460e extends AbstractC18526r implements Function1<C18966e, Collection<? extends AbstractC19025as>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19460e() {
            super(1);
            C19455f.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
            C18966e it2 = c18966e;
            C18524p.m3840d(it2, "it");
            return C19455f.m2110b(C19455f.this, it2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$f.class */
    public static final class C19461f extends AbstractC18526r implements Function0<List<? extends AbstractC19065c>> {

        /* renamed from: b */
        final /* synthetic */ C19501g f65406b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19461f(C19501g c19501g) {
            super(0);
            C19455f.this = r4;
            this.f65406b = c19501g;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v32, types: [java.util.Collection] */
        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC19065c> invoke() {
            Collection<AbstractC19402k> mo2205v = C19455f.this.f65397h.mo2205v();
            ArrayList arrayList = new ArrayList(mo2205v.size());
            for (AbstractC19402k abstractC19402k : mo2205v) {
                arrayList.add(C19455f.m2116a(C19455f.this, abstractC19402k));
            }
            AbstractC19398g unused = C19455f.this.f65397h;
            C19563k c19563k = this.f65406b.f65480a.f65335r;
            C19501g c19501g = this.f65406b;
            ArrayList arrayList2 = arrayList;
            C19455f c19455f = C19455f.this;
            ArrayList arrayList3 = arrayList2;
            if (arrayList2.isEmpty()) {
                arrayList3 = C18282n.m4169b(C19455f.m2111b(c19455f));
            }
            return C18282n.m4118h(c19563k.m2017a(c19501g, arrayList3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$g.class */
    public static final class C19462g extends AbstractC18526r implements Function0<Map<C18966e, ? extends AbstractC19405n>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19462g() {
            super(0);
            C19455f.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<C18966e, ? extends AbstractC19405n> invoke() {
            Collection<AbstractC19405n> mo2206u = C19455f.this.f65397h.mo2206u();
            ArrayList arrayList = new ArrayList();
            for (Object obj : mo2206u) {
                if (((AbstractC19405n) obj).mo2195e()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a((Iterable) arrayList2, 10)), 16));
            for (Object obj2 : arrayList2) {
                linkedHashMap.put(((AbstractC19405n) obj2).mo2183h(), obj2);
            }
            return linkedHashMap;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$h.class */
    public static final class C19463h extends AbstractC18526r implements Function1<C18966e, Collection<? extends AbstractC19025as>> {

        /* renamed from: a */
        final /* synthetic */ AbstractC19025as f65408a;

        /* renamed from: b */
        final /* synthetic */ C19455f f65409b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19463h(AbstractC19025as abstractC19025as, C19455f c19455f) {
            super(1);
            this.f65408a = abstractC19025as;
            this.f65409b = c19455f;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
            C18966e accessorName = c18966e;
            C18524p.m3840d(accessorName, "accessorName");
            return C18524p.m3850a(this.f65408a.getName(), accessorName) ? C18282n.m4176a(this.f65408a) : C18282n.m4135b(C19455f.m2117a(this.f65409b, accessorName), (Iterable) C19455f.m2110b(this.f65409b, accessorName));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$i */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$i.class */
    public static final class C19464i extends AbstractC18526r implements Function0<Set<? extends C18966e>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19464i() {
            super(0);
            C19455f.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends C18966e> invoke() {
            return C18282n.m4114j(C19455f.this.f65397h.mo2209r());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$j */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j.class */
    public static final class C19465j extends AbstractC18526r implements Function1<C18966e, AbstractC19159e> {

        /* renamed from: b */
        final /* synthetic */ C19501g f65412b;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$j$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j$a.class */
        static final class C19466a extends AbstractC18526r implements Function0<Set<? extends C18966e>> {

            /* renamed from: a */
            final /* synthetic */ C19455f f65413a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19466a(C19455f c19455f) {
                super(0);
                this.f65413a = c19455f;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends C18966e> invoke() {
                return C18255ap.m4238a((Set) this.f65413a.getFunctionNames(), (Iterable) this.f65413a.getVariableNames());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19465j(C19501g c19501g) {
            super(1);
            C19455f.this = r4;
            this.f65412b = c19501g;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19159e invoke(C18966e c18966e) {
            C18966e name = c18966e;
            C18524p.m3840d(name, "name");
            LazyJavaClassDescriptor lazyJavaClassDescriptor = null;
            if (!((Set) C19455f.this.f65399j.invoke()).contains(name)) {
                AbstractC19405n abstractC19405n = (AbstractC19405n) ((Map) C19455f.this.f65400k.invoke()).get(name);
                C19166l c19166l = null;
                if (abstractC19405n != null) {
                    c19166l = C19166l.m2580a(this.f65412b.f65480a.f65318a, C19455f.this.f65395a, name, this.f65412b.f65480a.f65318a.mo2313a(new C19466a(C19455f.this)), C19498e.m2071a(this.f65412b, abstractC19405n), this.f65412b.f65480a.f65327j.mo2236a(abstractC19405n));
                }
                return c19166l;
            }
            AbstractC19510n abstractC19510n = this.f65412b.f65480a.f65319b;
            C18960a m1532a = C19756a.m1532a((AbstractC19129g) C19455f.this.f65395a);
            C18524p.m3851a(m1532a);
            C18960a m2753a = m1532a.m2753a(name);
            C18524p.m3843b(m2753a, "ownerDescriptor.classId!!.createNestedClassId(name)");
            AbstractC19398g mo2062a = abstractC19510n.mo2062a(new AbstractC19510n.C19511a(m2753a, null, C19455f.this.f65397h, 2, null));
            if (mo2062a != null) {
                C19501g c19501g = this.f65412b;
                lazyJavaClassDescriptor = new LazyJavaClassDescriptor(c19501g, C19455f.this.f65395a, mo2062a, null, 8, null);
                c19501g.f65480a.f65336s.mo2060a(lazyJavaClassDescriptor);
            }
            return lazyJavaClassDescriptor;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19455f(C19501g c, AbstractC19070d ownerDescriptor, AbstractC19398g jClass, boolean z, C19455f c19455f) {
        super(c, c19455f);
        C18524p.m3840d(c, "c");
        C18524p.m3840d(ownerDescriptor, "ownerDescriptor");
        C18524p.m3840d(jClass, "jClass");
        this.f65395a = ownerDescriptor;
        this.f65397h = jClass;
        this.f65398i = z;
        this.f65396b = c.f65480a.f65318a.mo2313a(new C19461f(c));
        this.f65399j = c.f65480a.f65318a.mo2313a(new C19464i());
        this.f65400k = c.f65480a.f65318a.mo2313a(new C19462g());
        this.f65401l = c.f65480a.f65318a.mo2307b(new C19465j(c));
    }

    public /* synthetic */ C19455f(C19501g c19501g, AbstractC19070d abstractC19070d, AbstractC19398g abstractC19398g, boolean z, C19455f c19455f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c19501g, abstractC19070d, abstractC19398g, z, (i & 16) != 0 ? null : c19455f);
    }

    /* renamed from: a */
    public static final /* synthetic */ Collection m2117a(C19455f c19455f, C18966e c18966e) {
        Collection<AbstractC19408q> mo2147a = c19455f.f65444f.invoke().mo2147a(c18966e);
        ArrayList arrayList = new ArrayList(C18282n.m4163a(mo2147a, 10));
        for (AbstractC19408q abstractC19408q : mo2147a) {
            arrayList.add(c19455f.m2091a(abstractC19408q));
        }
        return arrayList;
    }

    /* renamed from: a */
    private final Set<AbstractC19025as> m2128a(C18966e c18966e) {
        Collection<KotlinType> m2103e = m2103e();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (KotlinType kotlinType : m2103e) {
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getContributedFunctions(c18966e, EnumC18698d.WHEN_GET_SUPER_MEMBERS));
        }
        return linkedHashSet;
    }

    /* renamed from: a */
    private static AbstractC19025as m2125a(AbstractC19017an abstractC19017an, String str, Function1<? super C18966e, ? extends Collection<? extends AbstractC19025as>> function1) {
        AbstractC19025as abstractC19025as;
        C18966e m2719a = C18966e.m2719a(str);
        C18524p.m3843b(m2719a, "identifier(getterName)");
        Iterator<T> it2 = function1.invoke(m2719a).iterator();
        do {
            abstractC19025as = null;
            if (!it2.hasNext()) {
                break;
            }
            AbstractC19025as abstractC19025as2 = (AbstractC19025as) it2.next();
            abstractC19025as = null;
            if (abstractC19025as2.getValueParameters().size() == 0) {
                KotlinTypeChecker kotlinTypeChecker = KotlinTypeChecker.DEFAULT;
                KotlinType returnType = abstractC19025as2.getReturnType();
                abstractC19025as = null;
                if (returnType == null ? false : kotlinTypeChecker.isSubtypeOf(returnType, abstractC19017an.mo2593g())) {
                    abstractC19025as = abstractC19025as2;
                }
            }
        } while (abstractC19025as == null);
        return abstractC19025as;
    }

    /* renamed from: a */
    private final AbstractC19025as m2124a(AbstractC19017an abstractC19017an, Function1<? super C18966e, ? extends Collection<? extends AbstractC19025as>> function1) {
        AbstractC19018ao mo2635a = abstractC19017an.mo2635a();
        String str = null;
        AbstractC19018ao abstractC19018ao = mo2635a == null ? null : (AbstractC19018ao) C19588x.m1971a(mo2635a);
        if (abstractC19018ao != null) {
            str = C19423h.f65309a.m2163a(abstractC19018ao);
        }
        if (str == null || C19588x.m1970a(this.f65395a, abstractC19018ao)) {
            C19521t c19521t = C19521t.f65508a;
            String m2721a = abstractC19017an.getName().m2721a();
            C18524p.m3843b(m2721a, "name.asString()");
            return m2125a(abstractC19017an, C19521t.m2046c(m2721a), function1);
        }
        return m2125a(abstractC19017an, str, function1);
    }

    /* renamed from: a */
    private final AbstractC19025as m2122a(AbstractC19025as abstractC19025as, Function1<? super C18966e, ? extends Collection<? extends AbstractC19025as>> function1) {
        if (!abstractC19025as.isSuspend()) {
            return null;
        }
        C18966e name = abstractC19025as.getName();
        C18524p.m3843b(name, "descriptor.name");
        for (AbstractC19025as abstractC19025as2 : function1.invoke(name)) {
            AbstractC19025as m2102e = m2102e(abstractC19025as2);
            if (m2102e == null || !m2126a((AbstractC18973a) m2102e, (AbstractC18973a) abstractC19025as)) {
                m2102e = null;
            }
            if (m2102e != null) {
                return m2102e;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static AbstractC19025as m2121a(AbstractC19025as abstractC19025as, C18966e c18966e) {
        AbstractC19219w.AbstractC19220a<? extends AbstractC19025as> newCopyBuilder = abstractC19025as.newCopyBuilder();
        newCopyBuilder.setName(c18966e);
        newCopyBuilder.setSignatureChange();
        newCopyBuilder.setPreserveSourceElement();
        AbstractC19025as build = newCopyBuilder.build();
        C18524p.m3851a(build);
        return build;
    }

    /* renamed from: a */
    private static AbstractC19025as m2120a(AbstractC19025as abstractC19025as, AbstractC18973a abstractC18973a, Collection<? extends AbstractC19025as> collection) {
        boolean z;
        Collection<? extends AbstractC19025as> collection2 = collection;
        if (!(collection2 instanceof Collection) || !collection2.isEmpty()) {
            for (AbstractC19025as abstractC19025as2 : collection2) {
                if (!C18524p.m3850a(abstractC19025as, abstractC19025as2) && abstractC19025as2.getInitialSignatureDescriptor() == null && m2126a(abstractC19025as2, abstractC18973a)) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z) {
            return abstractC19025as;
        }
        AbstractC19025as build = abstractC19025as.newCopyBuilder().setHiddenToOvercomeSignatureClash().build();
        C18524p.m3851a(build);
        return build;
    }

    /* renamed from: a */
    public static final /* synthetic */ C19369c m2116a(C19455f c19455f, AbstractC19402k abstractC19402k) {
        AbstractC19070d abstractC19070d = c19455f.f65395a;
        AbstractC19402k abstractC19402k2 = abstractC19402k;
        C19369c m2256a = C19369c.m2256a(abstractC19070d, C19498e.m2071a(c19455f.f65442d, abstractC19402k), false, (AbstractC19026at) c19455f.f65442d.f65480a.f65327j.mo2236a(abstractC19402k2));
        C18524p.m3843b(m2256a, "createJavaConstructor(\n            classDescriptor,\n            c.resolveAnnotations(constructor), /* isPrimary = */\n            false,\n            c.components.sourceElementFactory.source(constructor)\n        )");
        C19501g m2158a = C19429a.m2158a(c19455f.f65442d, m2256a, abstractC19402k, abstractC19070d.getDeclaredTypeParameters().size());
        AbstractC19480i.C19482b a = m2087a(m2158a, m2256a, abstractC19402k.mo2198e());
        List<TypeParameterDescriptor> declaredTypeParameters = abstractC19070d.getDeclaredTypeParameters();
        C18524p.m3843b(declaredTypeParameters, "classDescriptor.declaredTypeParameters");
        List<TypeParameterDescriptor> list = declaredTypeParameters;
        List<AbstractC19415x> i = abstractC19402k.mo2177i();
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) i, 10));
        for (AbstractC19415x abstractC19415x : i) {
            TypeParameterDescriptor mo2067a = m2158a.f65481b.mo2067a(abstractC19415x);
            C18524p.m3851a(mo2067a);
            arrayList.add(mo2067a);
        }
        m2256a.m2587a(a.f65457a, C19598z.m1955a(abstractC19402k.mo2184q()), C18282n.m4135b((Collection) list, (Iterable) arrayList));
        m2256a.setHasStableParameterNames(false);
        m2256a.setHasSynthesizedParameterNames(a.f65458b);
        m2256a.setReturnType(abstractC19070d.getDefaultType());
        m2158a.f65480a.f65324g.mo2271a(abstractC19402k2, m2256a);
        return m2256a;
    }

    /* renamed from: a */
    private final void m2131a(Collection<AbstractC19025as> collection, C18966e c18966e, Collection<? extends AbstractC19025as> collection2, boolean z) {
        Collection<? extends AbstractC19025as> m2287a = C19344a.m2287a(c18966e, collection2, collection, this.f65395a, this.f65442d.f65480a.f65323f, this.f65442d.f65480a.f65338u.getOverridingUtil());
        C18524p.m3843b(m2287a, "resolveOverridesForNonStaticMembers(\n            name, functionsFromSupertypes, result, ownerDescriptor, c.components.errorReporter,\n            c.components.kotlinTypeChecker.overridingUtil\n        )");
        if (!z) {
            collection.addAll(m2287a);
            return;
        }
        Collection<? extends AbstractC19025as> collection3 = m2287a;
        List b = C18282n.m4135b((Collection) collection, (Iterable) collection3);
        ArrayList arrayList = new ArrayList(C18282n.m4163a(collection3, 10));
        for (AbstractC19025as resolvedOverride : collection3) {
            AbstractC19025as abstractC19025as = (AbstractC19025as) C19588x.m1968c(resolvedOverride);
            if (abstractC19025as == null) {
                C18524p.m3843b(resolvedOverride, "resolvedOverride");
            } else {
                C18524p.m3843b(resolvedOverride, "resolvedOverride");
                resolvedOverride = m2120a(resolvedOverride, abstractC19025as, b);
            }
            arrayList.add(resolvedOverride);
        }
        collection.addAll(arrayList);
    }

    /* renamed from: a */
    private final void m2130a(List<AbstractC19050ba> list, AbstractC19192j abstractC19192j, int i, AbstractC19408q abstractC19408q, KotlinType kotlinType, KotlinType kotlinType2) {
        AbstractC19192j abstractC19192j2 = abstractC19192j;
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
        C18966e h = abstractC19408q.mo2183h();
        KotlinType makeNotNullable = TypeUtils.makeNotNullable(kotlinType);
        C18524p.m3843b(makeNotNullable, "makeNotNullable(returnType)");
        list.add(new C19148ae(abstractC19192j2, null, i, m2705a, h, makeNotNullable, abstractC19408q.mo2189k(), false, false, kotlinType2 == null ? null : TypeUtils.makeNotNullable(kotlinType2), this.f65442d.f65480a.f65327j.mo2236a(abstractC19408q)));
    }

    /* renamed from: a */
    private final void m2129a(Set<? extends AbstractC19017an> set, Collection<AbstractC19017an> collection, Set<AbstractC19017an> set2, Function1<? super C18966e, ? extends Collection<? extends AbstractC19025as>> function1) {
        for (AbstractC19017an abstractC19017an : set) {
            C19375g m2106d = m2106d(abstractC19017an, function1);
            if (m2106d != null) {
                collection.add(m2106d);
                if (set2 == null) {
                    return;
                }
                set2.add(abstractC19017an);
                return;
            }
        }
    }

    /* renamed from: a */
    private final void m2127a(C18966e c18966e, Collection<? extends AbstractC19025as> collection, Collection<? extends AbstractC19025as> collection2, Collection<AbstractC19025as> collection3, Function1<? super C18966e, ? extends Collection<? extends AbstractC19025as>> function1) {
        AbstractC19025as abstractC19025as;
        AbstractC19025as abstractC19025as2;
        Object obj;
        AbstractC19025as abstractC19025as3;
        for (AbstractC19025as abstractC19025as4 : collection2) {
            AbstractC19025as abstractC19025as5 = (AbstractC19025as) C19588x.m1971a(abstractC19025as4);
            if (abstractC19025as5 != null) {
                String m1967d = C19588x.m1967d(abstractC19025as5);
                C18524p.m3851a((Object) m1967d);
                C18966e m2719a = C18966e.m2719a(m1967d);
                C18524p.m3843b(m2719a, "identifier(nameInJava)");
                for (AbstractC19025as abstractC19025as6 : function1.invoke(m2719a)) {
                    AbstractC19025as m2121a = m2121a(abstractC19025as6, c18966e);
                    if (m2119a(abstractC19025as5, (AbstractC19219w) m2121a)) {
                        abstractC19025as = m2120a(m2121a, abstractC19025as5, collection);
                        break;
                    }
                }
            }
            abstractC19025as = null;
            C19999a.m1208a(collection3, abstractC19025as);
            C19418e c19418e = C19418e.f65301a;
            AbstractC19219w m2171a = C19418e.m2171a((AbstractC19219w) abstractC19025as4);
            if (m2171a != null) {
                C18966e name = m2171a.getName();
                C18524p.m3843b(name, "overridden.name");
                Iterator<T> it2 = function1.invoke(name).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    if (m2112b((AbstractC19025as) obj, m2171a)) {
                        break;
                    }
                }
                AbstractC19025as abstractC19025as7 = (AbstractC19025as) obj;
                if (abstractC19025as7 == null) {
                    abstractC19025as3 = null;
                } else {
                    AbstractC19219w.AbstractC19220a<? extends AbstractC19025as> newCopyBuilder = abstractC19025as7.newCopyBuilder();
                    List<AbstractC19050ba> valueParameters = m2171a.getValueParameters();
                    C18524p.m3843b(valueParameters, "overridden.valueParameters");
                    List<AbstractC19050ba> list = valueParameters;
                    ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
                    for (AbstractC19050ba abstractC19050ba : list) {
                        KotlinType g = abstractC19050ba.mo2593g();
                        C18524p.m3843b(g, "it.type");
                        arrayList.add(new C19380l(g, abstractC19050ba.mo2609c()));
                    }
                    ArrayList arrayList2 = arrayList;
                    List<AbstractC19050ba> valueParameters2 = abstractC19025as7.getValueParameters();
                    C18524p.m3843b(valueParameters2, "override.valueParameters");
                    newCopyBuilder.setValueParameters(C19379k.m2248a(arrayList2, valueParameters2, m2171a));
                    newCopyBuilder.setSignatureChange();
                    newCopyBuilder.setPreserveSourceElement();
                    abstractC19025as3 = newCopyBuilder.build();
                }
                if (abstractC19025as3 != null) {
                    if (!m2123a(abstractC19025as3)) {
                        abstractC19025as3 = null;
                    }
                    if (abstractC19025as3 != null) {
                        abstractC19025as2 = m2120a(abstractC19025as3, m2171a, collection);
                        C19999a.m1208a(collection3, abstractC19025as2);
                        C19999a.m1208a(collection3, m2122a(abstractC19025as4, function1));
                    }
                }
            }
            abstractC19025as2 = null;
            C19999a.m1208a(collection3, abstractC19025as2);
            C19999a.m1208a(collection3, m2122a(abstractC19025as4, function1));
        }
    }

    /* renamed from: a */
    private static boolean m2126a(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2) {
        OverridingUtil.C19746a.EnumC19747a m1550b = OverridingUtil.f65920a.m1573a(abstractC18973a2, abstractC18973a, true).m1550b();
        C18524p.m3843b(m1550b, "DEFAULT.isOverridableByWithoutExternalConditions(superDescriptor, this, true).result");
        return m1550b == OverridingUtil.C19746a.EnumC19747a.OVERRIDABLE && !JavaIncompatibilityRulesOverridabilityCondition.Companion.m2291a(abstractC18973a2, abstractC18973a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b4, code lost:
        if (kotlin.reflect.jvm.internal.impl.load.java.C19521t.m2047b(r0) == false) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m2123a(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as r8) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19455f.m2123a(kotlin.reflect.jvm.internal.impl.descriptors.as):boolean");
    }

    /* renamed from: a */
    private static boolean m2119a(AbstractC19025as abstractC19025as, AbstractC19219w abstractC19219w) {
        C19387d c19387d = C19387d.f65299a;
        AbstractC19219w abstractC19219w2 = abstractC19219w;
        if (C19387d.m2231c(abstractC19025as)) {
            abstractC19219w2 = abstractC19219w.getOriginal();
        }
        C18524p.m3843b(abstractC19219w2, "if (superDescriptor.isRemoveAtByIndex) subDescriptor.original else subDescriptor");
        return m2126a(abstractC19219w2, abstractC19025as);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x001b A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ java.util.Collection m2110b(kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19455f r3, kotlin.reflect.jvm.internal.impl.p545c.C18966e r4) {
        /*
            r0 = r3
            r1 = r4
            java.util.Set r0 = r0.m2128a(r1)
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r4 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            java.util.Collection r0 = (java.util.Collection) r0
            r3 = r0
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L1b:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L65
            r0 = r5
            java.lang.Object r0 = r0.next()
            r6 = r0
            r0 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.as r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as) r0
            r4 = r0
            r0 = r4
            kotlin.reflect.jvm.internal.impl.descriptors.b r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b) r0
            boolean r0 = kotlin.reflect.jvm.internal.impl.load.java.C19588x.m1969b(r0)
            if (r0 != 0) goto L52
            kotlin.reflect.jvm.internal.impl.load.java.e r0 = kotlin.reflect.jvm.internal.impl.load.java.C19418e.f65301a
            r7 = r0
            r0 = r4
            kotlin.reflect.jvm.internal.impl.descriptors.w r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w) r0
            kotlin.reflect.jvm.internal.impl.descriptors.w r0 = kotlin.reflect.jvm.internal.impl.load.java.C19418e.m2171a(r0)
            if (r0 == 0) goto L4c
            goto L52
        L4c:
            r0 = 0
            r8 = r0
            goto L55
        L52:
            r0 = 1
            r8 = r0
        L55:
            r0 = r8
            if (r0 != 0) goto L1b
            r0 = r3
            r1 = r6
            boolean r0 = r0.add(r1)
            goto L1b
        L65:
            r0 = r3
            java.util.List r0 = (java.util.List) r0
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19455f.m2110b(kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f, kotlin.reflect.jvm.internal.impl.c.e):java.util.Collection");
    }

    /* renamed from: b */
    private final Set<AbstractC19017an> m2115b(C18966e c18966e) {
        Collection<KotlinType> m2103e = m2103e();
        ArrayList arrayList = new ArrayList();
        for (KotlinType kotlinType : m2103e) {
            Collection<? extends AbstractC19017an> contributedVariables = kotlinType.getMemberScope().getContributedVariables(c18966e, EnumC18698d.WHEN_GET_SUPER_MEMBERS);
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a(contributedVariables, 10));
            for (AbstractC19017an abstractC19017an : contributedVariables) {
                arrayList2.add(abstractC19017an);
            }
            C18282n.m4158a((Collection) arrayList, (Iterable) arrayList2);
        }
        return C18282n.m4114j((Iterable) arrayList);
    }

    /* renamed from: b */
    private static AbstractC19025as m2114b(AbstractC19017an abstractC19017an, Function1<? super C18966e, ? extends Collection<? extends AbstractC19025as>> function1) {
        AbstractC19025as abstractC19025as;
        C19521t c19521t = C19521t.f65508a;
        String m2721a = abstractC19017an.getName().m2721a();
        C18524p.m3843b(m2721a, "name.asString()");
        C18966e m2719a = C18966e.m2719a(C19521t.m2045d(m2721a));
        C18524p.m3843b(m2719a, "identifier(JvmAbi.setterName(name.asString()))");
        Iterator<T> it2 = function1.invoke(m2719a).iterator();
        do {
            abstractC19025as = null;
            if (!it2.hasNext()) {
                break;
            }
            AbstractC19025as abstractC19025as2 = (AbstractC19025as) it2.next();
            abstractC19025as = null;
            if (abstractC19025as2.getValueParameters().size() == 1) {
                KotlinType returnType = abstractC19025as2.getReturnType();
                abstractC19025as = null;
                if (returnType != null) {
                    abstractC19025as = null;
                    if (AbstractC18940g.m2777r(returnType)) {
                        KotlinTypeChecker kotlinTypeChecker = KotlinTypeChecker.DEFAULT;
                        List<AbstractC19050ba> valueParameters = abstractC19025as2.getValueParameters();
                        C18524p.m3843b(valueParameters, "descriptor.valueParameters");
                        abstractC19025as = null;
                        if (kotlinTypeChecker.equalTypes(((AbstractC19050ba) C18282n.m4115i((List<? extends Object>) valueParameters)).mo2593g(), abstractC19017an.mo2593g())) {
                            abstractC19025as = abstractC19025as2;
                        }
                    }
                }
            }
        } while (abstractC19025as == null);
        return abstractC19025as;
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC19065c m2111b(C19455f c19455f) {
        ArrayList arrayList;
        C18538n c18538n;
        boolean mo2212k = c19455f.f65397h.mo2212k();
        c19455f.f65397h.mo2213j();
        if (!mo2212k) {
            return null;
        }
        AbstractC19070d abstractC19070d = c19455f.f65395a;
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        C19369c m2256a = C19369c.m2256a(abstractC19070d, AbstractC18983g.C18984a.m2705a(), true, (AbstractC19026at) c19455f.f65442d.f65480a.f65327j.mo2236a(c19455f.f65397h));
        C18524p.m3843b(m2256a, "createJavaConstructor(\n            classDescriptor, Annotations.EMPTY, /* isPrimary = */ true, c.components.sourceElementFactory.source(jClass)\n        )");
        if (mo2212k) {
            C19369c c19369c = m2256a;
            Collection<AbstractC19408q> mo2207t = c19455f.f65397h.mo2207t();
            ArrayList arrayList2 = new ArrayList(mo2207t.size());
            JavaTypeAttributes attributes$default = JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, true, null, 2, null);
            Collection<AbstractC19408q> collection = mo2207t;
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (Object obj : collection) {
                if (C18524p.m3850a(((AbstractC19408q) obj).mo2183h(), C19585u.f65609c)) {
                    arrayList3.add(obj);
                } else {
                    arrayList4.add(obj);
                }
            }
            C18538n c18538n2 = new C18538n(arrayList3, arrayList4);
            List list = (List) c18538n2.f63624a;
            List<AbstractC19408q> list2 = (List) c18538n2.f63625b;
            boolean z = list.size() <= 1;
            if (C20130x.f66532a && !z) {
                throw new AssertionError(C18524p.m3847a("There can't be more than one method named 'value' in annotation class: ", (Object) c19455f.f65397h));
            }
            AbstractC19408q abstractC19408q = (AbstractC19408q) C18282n.m4121f((List<? extends Object>) list);
            if (abstractC19408q != null) {
                AbstractC19414w mo2188l = abstractC19408q.mo2188l();
                if (mo2188l instanceof AbstractC19397f) {
                    AbstractC19397f abstractC19397f = (AbstractC19397f) mo2188l;
                    c18538n = new C18538n(c19455f.f65442d.f65483d.transformArrayType(abstractC19397f, attributes$default, true), c19455f.f65442d.f65483d.transformJavaType(abstractC19397f.mo2217d(), attributes$default));
                } else {
                    c18538n = new C18538n(c19455f.f65442d.f65483d.transformJavaType(mo2188l, attributes$default), null);
                }
                c19455f.m2130a(arrayList2, c19369c, 0, abstractC19408q, (KotlinType) c18538n.f63624a, (KotlinType) c18538n.f63625b);
            }
            int i = abstractC19408q != null ? 1 : 0;
            int i2 = 0;
            for (AbstractC19408q abstractC19408q2 : list2) {
                c19455f.m2130a(arrayList2, c19369c, i2 + i, abstractC19408q2, c19455f.f65442d.f65483d.transformJavaType(abstractC19408q2.mo2188l(), attributes$default), null);
                i2++;
            }
            arrayList = arrayList2;
        } else {
            arrayList = Collections.emptyList();
        }
        m2256a.setHasSynthesizedParameterNames(false);
        AbstractC19213s visibility = abstractC19070d.getVisibility();
        C18524p.m3843b(visibility, "classDescriptor.visibility");
        AbstractC19213s PROTECTED_AND_PACKAGE = visibility;
        if (C18524p.m3850a(visibility, C19516r.f65504b)) {
            PROTECTED_AND_PACKAGE = C19516r.f65505c;
            C18524p.m3843b(PROTECTED_AND_PACKAGE, "PROTECTED_AND_PACKAGE");
        }
        m2256a.m2588a(arrayList, PROTECTED_AND_PACKAGE);
        m2256a.setHasStableParameterNames(true);
        m2256a.setReturnType(abstractC19070d.getDefaultType());
        c19455f.f65442d.f65480a.f65324g.mo2271a(c19455f.f65397h, m2256a);
        return m2256a;
    }

    /* renamed from: b */
    private final boolean m2113b(AbstractC19025as abstractC19025as) {
        C19418e c19418e = C19418e.f65301a;
        C18966e name = abstractC19025as.getName();
        C18524p.m3843b(name, "name");
        if (!C19418e.m2173a(name)) {
            return false;
        }
        C18966e name2 = abstractC19025as.getName();
        C18524p.m3843b(name2, "name");
        Set<AbstractC19025as> m2128a = m2128a(name2);
        ArrayList arrayList = new ArrayList();
        for (AbstractC19025as abstractC19025as2 : m2128a) {
            C19418e c19418e2 = C19418e.f65301a;
            AbstractC19219w m2171a = C19418e.m2171a((AbstractC19219w) abstractC19025as2);
            if (m2171a != null) {
                arrayList.add(m2171a);
            }
        }
        ArrayList<AbstractC19219w> arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            return false;
        }
        for (AbstractC19219w abstractC19219w : arrayList2) {
            if (m2112b(abstractC19025as, abstractC19219w)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static boolean m2112b(AbstractC19025as abstractC19025as, AbstractC19219w abstractC19219w) {
        String m1848a = C19657t.m1848a(abstractC19025as, false, false, 2);
        AbstractC19219w original = abstractC19219w.getOriginal();
        C18524p.m3843b(original, "builtinWithErasedParameters.original");
        return C18524p.m3850a((Object) m1848a, (Object) C19657t.m1848a(original, false, false, 2)) && !m2126a((AbstractC18973a) abstractC19025as, (AbstractC18973a) abstractC19219w);
    }

    /* renamed from: c */
    private final boolean m2109c(AbstractC19017an abstractC19017an, Function1<? super C18966e, ? extends Collection<? extends AbstractC19025as>> function1) {
        if (C19448c.m2142a(abstractC19017an)) {
            return false;
        }
        AbstractC19025as m2124a = m2124a(abstractC19017an, function1);
        AbstractC19025as m2114b = m2114b(abstractC19017an, function1);
        if (m2124a == null) {
            return false;
        }
        if (!abstractC19017an.at_()) {
            return true;
        }
        return m2114b != null && m2114b.getModality() == m2124a.getModality();
    }

    /* renamed from: c */
    private final boolean m2108c(AbstractC19025as abstractC19025as) {
        boolean z;
        C19387d c19387d = C19387d.f65299a;
        C18966e name = abstractC19025as.getName();
        C18524p.m3843b(name, "name");
        List<C18966e> m2233b = C19387d.m2233b(name);
        if (!(m2233b instanceof Collection) || !m2233b.isEmpty()) {
            for (C18966e c18966e : m2233b) {
                Set<AbstractC19025as> m2128a = m2128a(c18966e);
                ArrayList arrayList = new ArrayList();
                for (Object obj : m2128a) {
                    if (C19588x.m1969b((AbstractC19025as) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = arrayList;
                if (!arrayList2.isEmpty()) {
                    AbstractC19025as m2121a = m2121a(abstractC19025as, c18966e);
                    ArrayList<AbstractC19025as> arrayList3 = arrayList2;
                    if (!arrayList3.isEmpty()) {
                        for (AbstractC19025as abstractC19025as2 : arrayList3) {
                            if (m2119a(abstractC19025as2, (AbstractC19219w) m2121a)) {
                                z = true;
                                break;
                            }
                        }
                    }
                }
                z = false;
                if (z) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: d */
    private final C19375g m2106d(AbstractC19017an abstractC19017an, Function1<? super C18966e, ? extends Collection<? extends AbstractC19025as>> function1) {
        AbstractC19025as abstractC19025as;
        if (!m2109c(abstractC19017an, function1)) {
            return null;
        }
        AbstractC19025as m2124a = m2124a(abstractC19017an, function1);
        C18524p.m3851a(m2124a);
        if (abstractC19017an.at_()) {
            abstractC19025as = m2114b(abstractC19017an, function1);
            C18524p.m3851a(abstractC19025as);
        } else {
            abstractC19025as = null;
        }
        boolean z = true;
        if (abstractC19025as != null && abstractC19025as.getModality() != m2124a.getModality()) {
            z = false;
        }
        if (C20130x.f66532a && !z) {
            StringBuilder sb = new StringBuilder("Different accessors modalities when creating overrides for ");
            sb.append(abstractC19017an);
            sb.append(" in ");
            sb.append(this.f65395a);
            sb.append("for getter is ");
            sb.append(m2124a.getModality());
            sb.append(", but for setter is ");
            sb.append(abstractC19025as == null ? null : abstractC19025as.getModality());
            throw new AssertionError(sb.toString());
        }
        C19371e c19371e = new C19371e(this.f65395a, m2124a, abstractC19025as, abstractC19017an);
        KotlinType returnType = m2124a.getReturnType();
        C18524p.m3851a(returnType);
        c19371e.m2627a(returnType, C18297z.f63400a, mo2074a(), (AbstractC19020aq) null);
        C19371e c19371e2 = c19371e;
        C19189x m1517a = C19762c.m1517a(c19371e2, m2124a.getAnnotations(), false, false, false, m2124a.getSource());
        m1517a.f64988c = m2124a;
        m1517a.m2536a(c19371e.mo2593g());
        C18524p.m3843b(m1517a, "createGetter(\n            propertyDescriptor, getterMethod.annotations, /* isDefault = */false,\n            /* isExternal = */ false, /* isInline = */ false, getterMethod.source\n        ).apply {\n            initialSignatureDescriptor = getterMethod\n            initialize(propertyDescriptor.type)\n        }");
        C19190y c19190y = null;
        if (abstractC19025as != null) {
            List<AbstractC19050ba> valueParameters = abstractC19025as.getValueParameters();
            C18524p.m3843b(valueParameters, "setterMethod.valueParameters");
            AbstractC19050ba abstractC19050ba = (AbstractC19050ba) C18282n.m4121f((List<? extends Object>) valueParameters);
            if (abstractC19050ba == null) {
                throw new AssertionError(C18524p.m3847a("No parameter found for ", (Object) abstractC19025as));
            }
            c19190y = C19762c.m1518a(c19371e2, abstractC19025as.getAnnotations(), abstractC19050ba.getAnnotations(), false, false, false, abstractC19025as.getVisibility(), abstractC19025as.getSource());
            c19190y.f64988c = abstractC19025as;
        }
        c19371e.m2631a(m1517a, c19190y);
        return c19371e;
    }

    /* renamed from: d */
    private final boolean m2105d(AbstractC19025as abstractC19025as) {
        AbstractC19025as m2102e = m2102e(abstractC19025as);
        if (m2102e == null) {
            return false;
        }
        C18966e name = abstractC19025as.getName();
        C18524p.m3843b(name, "name");
        Set<AbstractC19025as> m2128a = m2128a(name);
        if (m2128a.isEmpty()) {
            return false;
        }
        for (AbstractC19025as abstractC19025as2 : m2128a) {
            if (abstractC19025as2.isSuspend() && m2126a((AbstractC18973a) m2102e, (AbstractC18973a) abstractC19025as2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    private final Collection<KotlinType> m2103e() {
        if (this.f65398i) {
            Collection<KotlinType> mo53752getSupertypes = this.f65395a.getTypeConstructor().mo53752getSupertypes();
            C18524p.m3843b(mo53752getSupertypes, "ownerDescriptor.typeConstructor.supertypes");
            return mo53752getSupertypes;
        }
        return this.f65442d.f65480a.f65338u.getKotlinTypeRefiner().refineSupertypes(this.f65395a);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as m2102e(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as r5) {
        /*
            r4 = this;
            r0 = r5
            java.util.List r0 = r0.getValueParameters()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "valueParameters"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r6
            java.lang.Object r0 = kotlin.p518a.C18282n.m4117h(r0)
            kotlin.reflect.jvm.internal.impl.descriptors.ba r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L6e
            r0 = r7
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.mo2593g()
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r0 = r0.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.g r0 = r0.getDeclarationDescriptor()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L32
            r0 = 0
            r6 = r0
            goto L3a
        L32:
            r0 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.k r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k) r0
            kotlin.reflect.jvm.internal.impl.c.c r0 = kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a.m1531a(r0)
            r6 = r0
        L3a:
            r0 = r6
            if (r0 != 0) goto L43
        L3e:
            r0 = 0
            r6 = r0
            goto L5b
        L43:
            r0 = r6
            boolean r0 = r0.m2732b()
            if (r0 == 0) goto L4d
            goto L4f
        L4d:
            r0 = 0
            r6 = r0
        L4f:
            r0 = r6
            if (r0 != 0) goto L56
            goto L3e
        L56:
            r0 = r6
            kotlin.reflect.jvm.internal.impl.c.b r0 = r0.m2730c()
            r6 = r0
        L5b:
            r0 = r4
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g r0 = r0.f65442d
            r8 = r0
            r0 = r6
            r1 = 0
            boolean r0 = kotlin.reflect.jvm.internal.impl.builtins.C18956k.m2763a(r0, r1)
            if (r0 == 0) goto L6e
            r0 = r7
            r6 = r0
            goto L70
        L6e:
            r0 = 0
            r6 = r0
        L70:
            r0 = r6
            if (r0 != 0) goto L76
            r0 = 0
            return r0
        L76:
            r0 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.w$a r0 = r0.newCopyBuilder()
            r7 = r0
            r0 = r5
            java.util.List r0 = r0.getValueParameters()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "valueParameters"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r7
            r1 = r5
            java.util.List r1 = kotlin.p518a.C18282n.m4111k(r1)
            kotlin.reflect.jvm.internal.impl.descriptors.w$a r0 = r0.setValueParameters(r1)
            r1 = r6
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = r1.mo2593g()
            java.util.List r1 = r1.getArguments()
            r2 = 0
            java.lang.Object r1 = r1.get(r2)
            kotlin.reflect.jvm.internal.impl.types.TypeProjection r1 = (kotlin.reflect.jvm.internal.impl.types.TypeProjection) r1
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = r1.getType()
            kotlin.reflect.jvm.internal.impl.descriptors.w$a r0 = r0.setReturnType(r1)
            kotlin.reflect.jvm.internal.impl.descriptors.w r0 = r0.build()
            kotlin.reflect.jvm.internal.impl.descriptors.as r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as) r0
            r5 = r0
            r0 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.impl.aa r0 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lc8
            r0 = r6
            r1 = 1
            r0.setSuspend(r1)
        Lc8:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19455f.m2102e(kotlin.reflect.jvm.internal.impl.descriptors.as):kotlin.reflect.jvm.internal.impl.descriptors.as");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final Set<C18966e> mo2079a(C19825d kindFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        if (this.f65397h.mo2212k()) {
            return getFunctionNames();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f65444f.invoke().mo2146b());
        Collection<KotlinType> mo53752getSupertypes = this.f65395a.getTypeConstructor().mo53752getSupertypes();
        C18524p.m3843b(mo53752getSupertypes, "ownerDescriptor.typeConstructor.supertypes");
        for (KotlinType kotlinType : mo53752getSupertypes) {
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getVariableNames());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final Set<C18966e> mo2078a(C19825d kindFilter, Function1<? super C18966e, Boolean> function1) {
        C18524p.m3840d(kindFilter, "kindFilter");
        return C18255ap.m4238a((Set) this.f65399j.invoke(), (Iterable) this.f65400k.invoke().keySet());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final AbstractC19020aq mo2074a() {
        return C19807d.m1476a((AbstractC19193k) this.f65395a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final AbstractC19480i.C19481a mo2072a(AbstractC19408q method, List<? extends TypeParameterDescriptor> methodTypeParameters, KotlinType returnType, List<? extends AbstractC19050ba> valueParameters) {
        C18524p.m3840d(method, "method");
        C18524p.m3840d(methodTypeParameters, "methodTypeParameters");
        C18524p.m3840d(returnType, "returnType");
        C18524p.m3840d(valueParameters, "valueParameters");
        AbstractC19362j.C19364a mo2266a = this.f65442d.f65480a.f65322e.mo2266a(method, this.f65395a, returnType, valueParameters, methodTypeParameters);
        C18524p.m3843b(mo2266a, "c.components.signaturePropagator.resolvePropagatedSignature(\n            method, ownerDescriptor, returnType, null, valueParameters, methodTypeParameters\n        )");
        KotlinType kotlinType = mo2266a.f65267a;
        if (kotlinType == null) {
            AbstractC19362j.C19364a.m2265a(4);
        }
        C18524p.m3843b(kotlinType, "propagated.returnType");
        KotlinType kotlinType2 = mo2266a.f65268b;
        List<AbstractC19050ba> list = mo2266a.f65269c;
        if (list == null) {
            AbstractC19362j.C19364a.m2265a(5);
        }
        C18524p.m3843b(list, "propagated.valueParameters");
        List<TypeParameterDescriptor> list2 = mo2266a.f65270d;
        if (list2 == null) {
            AbstractC19362j.C19364a.m2265a(6);
        }
        C18524p.m3843b(list2, "propagated.typeParameters");
        boolean z = mo2266a.f65272f;
        List<String> list3 = mo2266a.f65271e;
        if (list3 == null) {
            AbstractC19362j.C19364a.m2265a(7);
        }
        C18524p.m3843b(list3, "propagated.errors");
        return new AbstractC19480i.C19481a(kotlinType, kotlinType2, list, list2, z, list3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final void mo2082a(Collection<AbstractC19025as> result, C18966e name) {
        boolean z;
        C18524p.m3840d(result, "result");
        C18524p.m3840d(name, "name");
        Set<AbstractC19025as> m2128a = m2128a(name);
        C19387d c19387d = C19387d.f65299a;
        if (!C19387d.m2235a(name)) {
            C19418e c19418e = C19418e.f65301a;
            if (!C19418e.m2173a(name)) {
                Set<AbstractC19025as> set = m2128a;
                if (!set.isEmpty()) {
                    for (AbstractC19219w abstractC19219w : set) {
                        if (abstractC19219w.isSuspend()) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : set) {
                        if (m2123a((AbstractC19025as) obj)) {
                            arrayList.add(obj);
                        }
                    }
                    m2131a(result, name, (Collection<? extends AbstractC19025as>) arrayList, false);
                    return;
                }
            }
        }
        C20028i.C20030b c20030b = C20028i.f66384a;
        C20028i m1187a = C20028i.C20030b.m1187a();
        Collection<? extends AbstractC19025as> m2287a = C19344a.m2287a(name, m2128a, C18297z.f63400a, this.f65395a, AbstractC19955o.f66288b, this.f65442d.f65480a.f65338u.getOverridingUtil());
        C18524p.m3843b(m2287a, "resolveOverridesForNonStaticMembers(\n            name, functionsFromSupertypes, emptyList(), ownerDescriptor, ErrorReporter.DO_NOTHING,\n            c.components.kotlinTypeChecker.overridingUtil\n        )");
        m2127a(name, result, m2287a, result, new C19457b(this));
        m2127a(name, result, m2287a, m1187a, new C19458c(this));
        Set<AbstractC19025as> set2 = m2128a;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : set2) {
            if (m2123a((AbstractC19025as) obj2)) {
                arrayList2.add(obj2);
            }
        }
        m2131a(result, name, (Collection<? extends AbstractC19025as>) C18282n.m4135b((Collection) arrayList2, (Iterable) m1187a), true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final void mo2073a(C18966e name, Collection<AbstractC19017an> result) {
        LinkedHashSet linkedHashSet;
        AbstractC19408q abstractC19408q;
        C18524p.m3840d(name, "name");
        C18524p.m3840d(result, "result");
        if (this.f65397h.mo2212k() && (abstractC19408q = (AbstractC19408q) C18282n.m4124e(this.f65444f.invoke().mo2147a(name))) != null) {
            C19375g m2251a = C19375g.m2251a(this.f65395a, C19498e.m2071a(this.f65442d, abstractC19408q), EnumC19222y.FINAL, C19598z.m1955a(abstractC19408q.mo2184q()), false, abstractC19408q.mo2183h(), this.f65442d.f65480a.f65327j.mo2236a(abstractC19408q), false);
            C18524p.m3843b(m2251a, "create(\n            ownerDescriptor, annotations, modality, method.visibility.toDescriptorVisibility(),\n            /* isVar = */ false, method.name, c.components.sourceElementFactory.source(method),\n            /* isStaticFinal = */ false\n        )");
            C19375g c19375g = m2251a;
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            C19189x m1521a = C19762c.m1521a(c19375g, AbstractC18983g.C18984a.m2705a());
            C18524p.m3843b(m1521a, "createDefaultGetter(propertyDescriptor, Annotations.EMPTY)");
            m2251a.m2631a(m1521a, (AbstractC19019ap) null);
            KotlinType a = m2090a(abstractC19408q, C19429a.m2158a(this.f65442d, m2251a, abstractC19408q, 0));
            m2251a.m2627a(a, C18297z.f63400a, mo2074a(), (AbstractC19020aq) null);
            m1521a.m2536a(a);
            result.add(m2251a);
        }
        Set<AbstractC19017an> minus = m2115b(name);
        if (minus.isEmpty()) {
            return;
        }
        C20028i.C20030b c20030b = C20028i.f66384a;
        C20028i m1187a = C20028i.C20030b.m1187a();
        C20028i.C20030b c20030b2 = C20028i.f66384a;
        C20028i m1187a2 = C20028i.C20030b.m1187a();
        m2129a(minus, result, m1187a, new C19459d());
        C20028i elements = m1187a;
        C18524p.m3840d(minus, "$this$minus");
        C18524p.m3840d(elements, "elements");
        Set<AbstractC19017an> set = minus;
        Collection<?> a2 = C18282n.m4162a((Iterable) elements, (Iterable) set);
        if (a2.isEmpty()) {
            linkedHashSet = C18282n.m4114j(set);
        } else if (a2 instanceof Set) {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            for (Object obj : set) {
                if (!a2.contains(obj)) {
                    linkedHashSet2.add(obj);
                }
            }
            linkedHashSet = linkedHashSet2;
        } else {
            LinkedHashSet linkedHashSet3 = new LinkedHashSet(minus);
            linkedHashSet3.removeAll(a2);
            linkedHashSet = linkedHashSet3;
        }
        m2129a(linkedHashSet, m1187a2, (Set<AbstractC19017an>) null, new C19460e());
        Collection<? extends AbstractC19017an> m2287a = C19344a.m2287a(name, C18255ap.m4238a((Set) minus, (Iterable) m1187a2), result, this.f65395a, this.f65442d.f65480a.f65323f, this.f65442d.f65480a.f65338u.getOverridingUtil());
        C18524p.m3843b(m2287a, "resolveOverridesForNonStaticMembers(\n                name,\n                propertiesFromSupertypes + propertiesOverridesFromSuperTypes,\n                result,\n                ownerDescriptor,\n                c.components.errorReporter,\n                c.components.kotlinTypeChecker.overridingUtil\n            )");
        result.addAll(m2287a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final boolean mo2093a(C19372f c19372f) {
        C18524p.m3840d(c19372f, "<this>");
        if (this.f65397h.mo2212k()) {
            return false;
        }
        return m2123a((AbstractC19025as) c19372f);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: b */
    protected final /* synthetic */ Set mo2076b(C19825d kindFilter, Function1 function1) {
        C18524p.m3840d(kindFilter, "kindFilter");
        Collection<KotlinType> mo53752getSupertypes = this.f65395a.getTypeConstructor().mo53752getSupertypes();
        C18524p.m3843b(mo53752getSupertypes, "ownerDescriptor.typeConstructor.supertypes");
        Collection<KotlinType> collection = mo53752getSupertypes;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (KotlinType kotlinType : collection) {
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getFunctionNames());
        }
        LinkedHashSet linkedHashSet2 = linkedHashSet;
        linkedHashSet2.addAll(this.f65444f.invoke().mo2148a());
        linkedHashSet2.addAll(this.f65444f.invoke().mo2144c());
        linkedHashSet2.addAll(mo2078a(kindFilter, function1));
        return linkedHashSet2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: b */
    protected final /* bridge */ /* synthetic */ AbstractC19193k mo2077b() {
        return this.f65395a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: b */
    protected final void mo2086b(Collection<AbstractC19025as> result, C18966e name) {
        C18524p.m3840d(result, "result");
        C18524p.m3840d(name, "name");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: c */
    protected final /* synthetic */ AbstractC19446b mo2075c() {
        return new C19444a(this.f65397h, C19456a.f65402a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        AbstractC19295h<C18966e, AbstractC19159e> abstractC19295h;
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        recordLookup(name, location);
        C19455f c19455f = (C19455f) this.f65443e;
        AbstractC19159e abstractC19159e = null;
        if (c19455f != null && (abstractC19295h = c19455f.f65401l) != null) {
            abstractC19159e = abstractC19295h.invoke(name);
        }
        return abstractC19159e == null ? this.f65401l.invoke(name) : abstractC19159e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        recordLookup(name, location);
        return super.getContributedFunctions(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        recordLookup(name, location);
        return super.getContributedVariables(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final void recordLookup(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        C18693a.m3706a(this.f65442d.f65480a.f65331n, location, this.f65395a, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    public final String toString() {
        return C18524p.m3847a("Lazy Java member scope for ", (Object) this.f65397h.mo2216e());
    }
}
