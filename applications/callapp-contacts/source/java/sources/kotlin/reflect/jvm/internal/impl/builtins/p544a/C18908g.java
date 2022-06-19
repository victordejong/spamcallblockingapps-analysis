package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18897e;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18901f;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.C19199q;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19187v;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19160f;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18981f;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.C19047d;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19432b;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19455f;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19656s;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19660v;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19271a;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.utils.C20000b;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g.class */
public final class C18908g implements AbstractC19041a, AbstractC19044c {

    /* renamed from: a */
    static final /* synthetic */ KProperty<Object>[] f64491a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18908g.class), "settings", "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18908g.class), "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18908g.class), "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"))};

    /* renamed from: b */
    private final AbstractC18999ab f64492b;

    /* renamed from: c */
    private final C18896d f64493c = C18896d.f64468a;

    /* renamed from: d */
    private final AbstractC19296i f64494d;

    /* renamed from: e */
    private final KotlinType f64495e;

    /* renamed from: f */
    private final AbstractC19296i f64496f;

    /* renamed from: g */
    private final AbstractC19271a<C18961b, AbstractC19070d> f64497g;

    /* renamed from: h */
    private final AbstractC19296i f64498h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$a.class */
    public enum EnumC18909a {
        HIDDEN,
        VISIBLE,
        NOT_CONSIDERED,
        DROP
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$b.class */
    public final /* synthetic */ class C18910b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f64499a;

        static {
            int[] iArr = new int[EnumC18909a.values().length];
            iArr[EnumC18909a.HIDDEN.ordinal()] = 1;
            iArr[EnumC18909a.NOT_CONSIDERED.ordinal()] = 2;
            iArr[EnumC18909a.DROP.ordinal()] = 3;
            iArr[EnumC18909a.VISIBLE.ordinal()] = 4;
            f64499a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$c.class */
    public static final class C18911c extends AbstractC18526r implements Function0<SimpleType> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19302n f64501b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18911c(AbstractC19302n abstractC19302n) {
            super(0);
            C18908g.this = r4;
            this.f64501b = abstractC19302n;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SimpleType invoke() {
            C18960a c18960a;
            AbstractC18999ab abstractC18999ab = C18908g.this.m2883a().f64483a;
            C18897e.C18899a c18899a = C18897e.f64469a;
            c18960a = C18897e.f64473h;
            return C19216v.m2498a(abstractC18999ab, c18960a, new C19001ad(this.f64501b, C18908g.this.m2883a().f64483a)).getDefaultType();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$d.class */
    public static final class C18912d extends AbstractC19187v {
        C18912d(AbstractC18999ab abstractC18999ab, C18961b c18961b) {
            super(abstractC18999ab, c18961b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC19834h mo1257a() {
            return AbstractC19834h.C19838c.f66035a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$e.class */
    public static final class C18913e extends AbstractC18526r implements Function0<KotlinType> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18913e() {
            super(0);
            C18908g.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ KotlinType invoke() {
            SimpleType m2798g = C18908g.this.f64492b.getBuiltIns().m2798g();
            C18524p.m3843b(m2798g, "moduleDescriptor.builtIns.anyType");
            return m2798g;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$f.class */
    static final class C18914f extends AbstractC18526r implements Function0<AbstractC19070d> {

        /* renamed from: a */
        final /* synthetic */ LazyJavaClassDescriptor f64503a;

        /* renamed from: b */
        final /* synthetic */ AbstractC19070d f64504b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18914f(LazyJavaClassDescriptor lazyJavaClassDescriptor, AbstractC19070d abstractC19070d) {
            super(0);
            this.f64503a = lazyJavaClassDescriptor;
            this.f64504b = abstractC19070d;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19070d invoke() {
            LazyJavaClassDescriptor lazyJavaClassDescriptor = this.f64503a;
            AbstractC19356g javaResolverCache = AbstractC19356g.f65259a;
            C18524p.m3843b(javaResolverCache, "EMPTY");
            AbstractC19070d abstractC19070d = this.f64504b;
            C18524p.m3840d(javaResolverCache, "javaResolverCache");
            C19501g c19501g = lazyJavaClassDescriptor.f65351c;
            C19432b c19432b = lazyJavaClassDescriptor.f65351c.f65480a;
            C18524p.m3840d(javaResolverCache, "javaResolverCache");
            C19432b components = new C19432b(c19432b.f65318a, c19432b.f65319b, c19432b.f65320c, c19432b.f65321d, c19432b.f65322e, c19432b.f65323f, javaResolverCache, c19432b.f65325h, c19432b.f65326i, c19432b.f65327j, c19432b.f65328k, c19432b.f65329l, c19432b.f65330m, c19432b.f65331n, c19432b.f65332o, c19432b.f65333p, c19432b.f65334q, c19432b.f65335r, c19432b.f65336s, c19432b.f65337t, c19432b.f65338u, c19432b.f65339v);
            C18524p.m3840d(c19501g, "<this>");
            C18524p.m3840d(components, "components");
            C19501g c19501g2 = new C19501g(components, c19501g.f65481b, c19501g.f65482c);
            AbstractC19193k containingDeclaration = lazyJavaClassDescriptor.getContainingDeclaration();
            C18524p.m3843b(containingDeclaration, "containingDeclaration");
            return new LazyJavaClassDescriptor(c19501g2, containingDeclaration, lazyJavaClassDescriptor.f65350b, abstractC19070d);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$g.class */
    static final class C18915g extends AbstractC18526r implements Function1<AbstractC19834h, Collection<? extends AbstractC19025as>> {

        /* renamed from: a */
        final /* synthetic */ C18966e f64505a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18915g(C18966e c18966e) {
            super(1);
            this.f64505a = c18966e;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(AbstractC19834h abstractC19834h) {
            AbstractC19834h it2 = abstractC19834h;
            C18524p.m3840d(it2, "it");
            return it2.getContributedFunctions(this.f64505a, EnumC18698d.FROM_BUILTINS);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$h.class */
    static final class C18916h implements C20000b.AbstractC20004c<AbstractC19070d> {
        C18916h() {
            C18908g.this = r4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20004c
        public final /* synthetic */ Iterable<? extends AbstractC19070d> getNeighbors(AbstractC19070d abstractC19070d) {
            Collection<KotlinType> mo53752getSupertypes = abstractC19070d.getTypeConstructor().mo53752getSupertypes();
            C18524p.m3843b(mo53752getSupertypes, "it.typeConstructor.supertypes");
            Collection<KotlinType> collection = mo53752getSupertypes;
            C18908g c18908g = C18908g.this;
            ArrayList arrayList = new ArrayList();
            for (KotlinType kotlinType : collection) {
                AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                AbstractC19129g original = declarationDescriptor == null ? null : declarationDescriptor.getOriginal();
                AbstractC19070d abstractC19070d2 = original instanceof AbstractC19070d ? (AbstractC19070d) original : null;
                LazyJavaClassDescriptor m2876d = abstractC19070d2 == null ? null : c18908g.m2876d(abstractC19070d2);
                if (m2876d != null) {
                    arrayList.add(m2876d);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$i */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$i.class */
    public static final class C18917i extends C20000b.AbstractC20002a<AbstractC19070d, EnumC18909a> {

        /* renamed from: a */
        final /* synthetic */ String f64507a;

        /* renamed from: b */
        final /* synthetic */ C18490ab.C18495e<EnumC18909a> f64508b;

        C18917i(String str, C18490ab.C18495e<EnumC18909a> c18495e) {
            this.f64507a = str;
            this.f64508b = c18495e;
        }

        /* JADX WARN: Type inference failed for: r1v5, types: [kotlin.reflect.jvm.internal.impl.builtins.a.g$a, T] */
        /* JADX WARN: Type inference failed for: r1v6, types: [kotlin.reflect.jvm.internal.impl.builtins.a.g$a, T] */
        /* JADX WARN: Type inference failed for: r1v7, types: [kotlin.reflect.jvm.internal.impl.builtins.a.g$a, T] */
        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20002a, kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
        public final /* synthetic */ boolean beforeChildren(Object obj) {
            AbstractC19070d javaClassDescriptor = (AbstractC19070d) obj;
            C18524p.m3840d(javaClassDescriptor, "javaClassDescriptor");
            String m1853a = C19656s.m1853a(C19660v.f65767a, javaClassDescriptor, this.f64507a);
            C18922i c18922i = C18922i.f64512a;
            if (C18922i.m2873b().contains(m1853a)) {
                this.f64508b.f63589a = EnumC18909a.HIDDEN;
            } else {
                C18922i c18922i2 = C18922i.f64512a;
                if (C18922i.m2871c().contains(m1853a)) {
                    this.f64508b.f63589a = EnumC18909a.VISIBLE;
                } else {
                    C18922i c18922i3 = C18922i.f64512a;
                    if (C18922i.m2875a().contains(m1853a)) {
                        this.f64508b.f63589a = EnumC18909a.DROP;
                    }
                }
            }
            return this.f64508b.f63589a == null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
        public final /* bridge */ /* synthetic */ Object result() {
            EnumC18909a enumC18909a = this.f64508b.f63589a;
            EnumC18909a enumC18909a2 = enumC18909a;
            if (enumC18909a == null) {
                enumC18909a2 = EnumC18909a.NOT_CONSIDERED;
            }
            return enumC18909a2;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$j */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$j.class */
    static final class C18918j implements C20000b.AbstractC20004c<AbstractC19039b> {

        /* renamed from: a */
        public static final C18918j f64509a = new C18918j();

        C18918j() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20004c
        public final /* synthetic */ Iterable<? extends AbstractC19039b> getNeighbors(AbstractC19039b abstractC19039b) {
            return abstractC19039b.getOriginal().getOverriddenDescriptors();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$k */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$k.class */
    static final class C18919k extends AbstractC18526r implements Function1<AbstractC19039b, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18919k() {
            super(1);
            C18908g.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
            boolean z;
            AbstractC19039b abstractC19039b2 = abstractC19039b;
            if (abstractC19039b2.getKind() == AbstractC19039b.EnumC19040a.DECLARATION) {
                C18896d unused = C18908g.this.f64493c;
                if (C18896d.m2895a((AbstractC19070d) abstractC19039b2.getContainingDeclaration())) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$l */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$l.class */
    public static final class C18920l extends AbstractC18526r implements Function0<AbstractC18983g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18920l() {
            super(0);
            C18908g.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC18983g invoke() {
            AbstractC18977c m2706a = C18981f.m2706a(C18908g.this.f64492b.getBuiltIns(), "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version");
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            return AbstractC18983g.C18984a.m2704a(C18282n.m4176a(m2706a));
        }
    }

    public C18908g(AbstractC18999ab moduleDescriptor, AbstractC19302n storageManager, Function0<C18901f.C18903b> settingsComputation) {
        C18524p.m3840d(moduleDescriptor, "moduleDescriptor");
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(settingsComputation, "settingsComputation");
        this.f64492b = moduleDescriptor;
        this.f64494d = storageManager.mo2313a(settingsComputation);
        C19160f c19160f = new C19160f(new C18912d(moduleDescriptor, new C18961b("java.io")), C18966e.m2719a("Serializable"), EnumC19222y.ABSTRACT, EnumC19127e.INTERFACE, C18282n.m4176a(new LazyWrappedType(storageManager, new C18913e())), AbstractC19026at.f64759a, false, storageManager);
        c19160f.initialize(AbstractC19834h.C19838c.f66035a, C18240ab.f63351a, null);
        SimpleType defaultType = c19160f.getDefaultType();
        C18524p.m3843b(defaultType, "mockSerializableClass.defaultType");
        this.f64495e = defaultType;
        this.f64496f = storageManager.mo2313a(new C18911c(storageManager));
        this.f64497g = storageManager.mo2309b();
        this.f64498h = storageManager.mo2313a(new C18920l());
    }

    /* renamed from: a */
    public final C18901f.C18903b m2883a() {
        return (C18901f.C18903b) C19301m.m2316a(this.f64494d, f64491a[0]);
    }

    /* renamed from: b */
    private final SimpleType m2880b() {
        return (SimpleType) C19301m.m2316a(this.f64496f, f64491a[1]);
    }

    /* renamed from: c */
    private final AbstractC18983g m2878c() {
        return (AbstractC18983g) C19301m.m2316a(this.f64498h, f64491a[2]);
    }

    /* renamed from: d */
    public final LazyJavaClassDescriptor m2876d(AbstractC19070d abstractC19070d) {
        if (AbstractC18940g.m2807d(abstractC19070d)) {
            return null;
        }
        AbstractC19070d abstractC19070d2 = abstractC19070d;
        if (!AbstractC18940g.m2816b((AbstractC19193k) abstractC19070d2)) {
            return null;
        }
        C18962c m1531a = C19756a.m1531a((AbstractC19193k) abstractC19070d2);
        if (!m1531a.m2732b()) {
            return null;
        }
        C18894c c18894c = C18894c.f64450a;
        C18960a m2903a = C18894c.m2903a(m1531a);
        C18961b m2748f = m2903a == null ? null : m2903a.m2748f();
        if (m2748f == null) {
            return null;
        }
        AbstractC19070d m2523a = C19199q.m2523a(m2883a().f64483a, m2748f, EnumC18698d.FROM_BUILTINS);
        if (!(m2523a instanceof LazyJavaClassDescriptor)) {
            return null;
        }
        return (LazyJavaClassDescriptor) m2523a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x0530, code lost:
        if (r0 != 3) goto L101;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x042f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0306 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x024d  */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as> mo2688a(kotlin.reflect.jvm.internal.impl.p545c.C18966e r8, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d r9) {
        /*
            Method dump skipped, instructions count: 1407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.p544a.C18908g.mo2688a(kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.d):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a
    /* renamed from: a */
    public final Collection<KotlinType> mo2687a(AbstractC19070d classDescriptor) {
        C18524p.m3840d(classDescriptor, "classDescriptor");
        C18962c m1531a = C19756a.m1531a((AbstractC19193k) classDescriptor);
        C18922i c18922i = C18922i.f64512a;
        if (!C18922i.m2872b(m1531a)) {
            C18922i c18922i2 = C18922i.f64512a;
            return C18922i.m2874a(m1531a) ? C18282n.m4176a(this.f64495e) : C18297z.f63400a;
        }
        SimpleType cloneableType = m2880b();
        C18524p.m3843b(cloneableType, "cloneableType");
        return C18282n.m4167b((Object[]) new KotlinType[]{cloneableType, this.f64495e});
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c
    /* renamed from: a */
    public final boolean mo2681a(AbstractC19070d classDescriptor, AbstractC19025as functionDescriptor) {
        C18524p.m3840d(classDescriptor, "classDescriptor");
        C18524p.m3840d(functionDescriptor, "functionDescriptor");
        LazyJavaClassDescriptor m2876d = m2876d(classDescriptor);
        if (m2876d != null && functionDescriptor.getAnnotations().mo1338b(C19047d.m2680a())) {
            if (!m2883a().f64484b) {
                return false;
            }
            String m1848a = C19657t.m1848a(functionDescriptor, false, false, 3);
            C19455f m2153a = m2876d.m2153a();
            C18966e name = functionDescriptor.getName();
            C18524p.m3843b(name, "functionDescriptor.name");
            Collection<AbstractC19025as> contributedFunctions = m2153a.getContributedFunctions(name, EnumC18698d.FROM_BUILTINS);
            if ((contributedFunctions instanceof Collection) && contributedFunctions.isEmpty()) {
                return false;
            }
            for (AbstractC19025as abstractC19025as : contributedFunctions) {
                if (C18524p.m3850a((Object) C19657t.m1848a(abstractC19025as, false, false, 3), (Object) m1848a)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x01ae  */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c> mo2686b(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d r9) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.p544a.C18908g.mo2686b(kotlin.reflect.jvm.internal.impl.descriptors.d):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a
    /* renamed from: c */
    public final /* synthetic */ Collection mo2685c(AbstractC19070d classDescriptor) {
        C18240ab c18240ab;
        C19455f m2153a;
        C18524p.m3840d(classDescriptor, "classDescriptor");
        if (!m2883a().f64484b) {
            c18240ab = C18240ab.f63351a;
        } else {
            LazyJavaClassDescriptor m2876d = m2876d(classDescriptor);
            Set<C18966e> functionNames = (m2876d == null || (m2153a = m2876d.m2153a()) == null) ? null : m2153a.getFunctionNames();
            c18240ab = functionNames;
            if (functionNames == null) {
                c18240ab = C18240ab.f63351a;
            }
        }
        return c18240ab;
    }
}
