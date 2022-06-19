package kotlin.reflect.jvm.internal.impl.resolve.p564b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import kotlin.C20130x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p531g.AbstractC18378h;
import kotlin.p531g.C18381k;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19016am;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;
import kotlin.reflect.jvm.internal.impl.types.checker.Ref;
import kotlin.reflect.jvm.internal.impl.utils.C20000b;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a.class */
public final class C19756a {

    /* renamed from: a */
    private static final C18966e f65947a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$a.class */
    public static final class C19757a implements C20000b.AbstractC20004c<AbstractC19050ba> {

        /* renamed from: a */
        public static final C19757a f65948a = new C19757a();

        C19757a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20004c
        public final /* synthetic */ Iterable<? extends AbstractC19050ba> getNeighbors(AbstractC19050ba abstractC19050ba) {
            Collection<AbstractC19050ba> overriddenDescriptors = abstractC19050ba.getOverriddenDescriptors();
            ArrayList arrayList = new ArrayList(C18282n.m4163a(overriddenDescriptors, 10));
            for (AbstractC19050ba abstractC19050ba2 : overriddenDescriptors) {
                arrayList.add(abstractC19050ba2.mo2607e());
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$b.class */
    public final /* synthetic */ class C19758b extends C18521m implements Function1<AbstractC19050ba, Boolean> {

        /* renamed from: a */
        public static final C19758b f65949a = new C19758b();

        C19758b() {
            super(1);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "declaresDefaultValue";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(AbstractC19050ba.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "declaresDefaultValue()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19050ba abstractC19050ba) {
            AbstractC19050ba p0 = abstractC19050ba;
            C18524p.m3840d(p0, "p0");
            return Boolean.valueOf(p0.mo2609c());
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b.a$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$c.class */
    public static final class C19759c implements C20000b.AbstractC20004c<AbstractC19039b> {

        /* renamed from: a */
        final /* synthetic */ boolean f65950a;

        C19759c(boolean z) {
            this.f65950a = z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20004c
        public final /* synthetic */ Iterable<? extends AbstractC19039b> getNeighbors(AbstractC19039b abstractC19039b) {
            AbstractC19039b abstractC19039b2 = abstractC19039b;
            AbstractC19039b abstractC19039b3 = abstractC19039b2;
            if (this.f65950a) {
                abstractC19039b3 = abstractC19039b2 == null ? null : abstractC19039b2.getOriginal();
            }
            Collection<? extends AbstractC19039b> overriddenDescriptors = abstractC19039b3 == null ? null : abstractC19039b3.getOverriddenDescriptors();
            return overriddenDescriptors == null ? C18297z.f63400a : overriddenDescriptors;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b.a$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$d.class */
    public static final class C19760d extends C20000b.AbstractC20002a<AbstractC19039b, AbstractC19039b> {

        /* renamed from: a */
        final /* synthetic */ C18490ab.C18495e<AbstractC19039b> f65951a;

        /* renamed from: b */
        final /* synthetic */ Function1<AbstractC19039b, Boolean> f65952b;

        /* JADX WARN: Multi-variable type inference failed */
        C19760d(C18490ab.C18495e<AbstractC19039b> c18495e, Function1<? super AbstractC19039b, Boolean> function1) {
            this.f65951a = c18495e;
            this.f65952b = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.b] */
        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20002a, kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
        public final /* synthetic */ void afterChildren(Object obj) {
            ?? current = (AbstractC19039b) obj;
            C18524p.m3840d(current, "current");
            if (this.f65951a.f63589a != null || !((Boolean) this.f65952b.invoke(current)).booleanValue()) {
                return;
            }
            this.f65951a.f63589a = current;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20002a, kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
        public final /* synthetic */ boolean beforeChildren(Object obj) {
            AbstractC19039b current = (AbstractC19039b) obj;
            C18524p.m3840d(current, "current");
            return this.f65951a.f63589a == null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20005d
        public final /* bridge */ /* synthetic */ Object result() {
            return this.f65951a.f63589a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b.a$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$e.class */
    public static final class C19761e extends AbstractC18526r implements Function1<AbstractC19193k, AbstractC19193k> {

        /* renamed from: a */
        public static final C19761e f65953a = new C19761e();

        C19761e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19193k invoke(AbstractC19193k abstractC19193k) {
            AbstractC19193k it2 = abstractC19193k;
            C18524p.m3840d(it2, "it");
            return it2.getContainingDeclaration();
        }
    }

    static {
        C18966e m2719a = C18966e.m2719a("value");
        C18524p.m3843b(m2719a, "identifier(\"value\")");
        f65947a = m2719a;
    }

    /* renamed from: a */
    public static final C18960a m1532a(AbstractC19129g abstractC19129g) {
        AbstractC19193k containingDeclaration;
        C18960a m1532a;
        if (abstractC19129g == null || (containingDeclaration = abstractC19129g.getContainingDeclaration()) == null) {
            return null;
        }
        if (containingDeclaration instanceof AbstractC19006ae) {
            return new C18960a(((AbstractC19006ae) containingDeclaration).mo2542c(), abstractC19129g.getName());
        }
        if ((containingDeclaration instanceof AbstractC19130h) && (m1532a = m1532a((AbstractC19129g) containingDeclaration)) != null) {
            return m1532a.m2753a(abstractC19129g.getName());
        }
        return null;
    }

    /* renamed from: a */
    public static final C18962c m1531a(AbstractC19193k abstractC19193k) {
        C18524p.m3840d(abstractC19193k, "<this>");
        C18962c m1463c = C19807d.m1463c(abstractC19193k);
        C18524p.m3843b(m1463c, "getFqName(this)");
        return m1463c;
    }

    /* renamed from: a */
    public static final AbstractC19039b m1536a(AbstractC19039b abstractC19039b) {
        C18524p.m3840d(abstractC19039b, "<this>");
        AbstractC19017an abstractC19017an = abstractC19039b;
        if (abstractC19039b instanceof AbstractC19016am) {
            AbstractC19017an correspondingProperty = ((AbstractC19016am) abstractC19039b).mo2538b();
            C18524p.m3843b(correspondingProperty, "correspondingProperty");
            abstractC19017an = correspondingProperty;
        }
        return abstractC19017an;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC19039b m1535a(AbstractC19039b abstractC19039b, Function1 predicate) {
        C18524p.m3840d(abstractC19039b, "<this>");
        C18524p.m3840d(predicate, "predicate");
        return (AbstractC19039b) C20000b.m1202a(C18282n.m4176a(abstractC19039b), new C19759c(false), new C19760d(new C18490ab.C18495e(), predicate));
    }

    /* renamed from: a */
    public static final AbstractC19070d m1539a(AbstractC18977c abstractC18977c) {
        C18524p.m3840d(abstractC18977c, "<this>");
        AbstractC19129g declarationDescriptor = abstractC18977c.mo2043a().getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof AbstractC19070d) {
            return (AbstractC19070d) declarationDescriptor;
        }
        return null;
    }

    /* renamed from: a */
    public static final AbstractC19070d m1537a(AbstractC18999ab abstractC18999ab, C18961b topLevelClassFqName, AbstractC18695b location) {
        C18524p.m3840d(abstractC18999ab, "<this>");
        C18524p.m3840d(topLevelClassFqName, "topLevelClassFqName");
        C18524p.m3840d(location, "location");
        boolean m2741c = topLevelClassFqName.m2741c();
        if (!C20130x.f66532a || (!m2741c)) {
            C18961b m2739d = topLevelClassFqName.m2739d();
            C18524p.m3843b(m2739d, "topLevelClassFqName.parent()");
            AbstractC19834h mo2570b = abstractC18999ab.getPackage(m2739d).mo2570b();
            C18966e m2738e = topLevelClassFqName.m2738e();
            C18524p.m3843b(m2738e, "topLevelClassFqName.shortName()");
            AbstractC19129g contributedClassifier = mo2570b.getContributedClassifier(m2738e, location);
            if (!(contributedClassifier instanceof AbstractC19070d)) {
                return null;
            }
            return (AbstractC19070d) contributedClassifier;
        }
        throw new AssertionError("Assertion failed");
    }

    /* renamed from: a */
    public static final AbstractC19070d m1533a(AbstractC19070d abstractC19070d) {
        C18524p.m3840d(abstractC19070d, "<this>");
        for (KotlinType kotlinType : abstractC19070d.getDefaultType().getConstructor().mo53752getSupertypes()) {
            if (!AbstractC18940g.m2781o(kotlinType)) {
                AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                if (C19807d.m1453m(declarationDescriptor)) {
                    Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    return (AbstractC19070d) declarationDescriptor;
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public static final KotlinTypeRefiner m1538a(AbstractC18999ab abstractC18999ab) {
        C18524p.m3840d(abstractC18999ab, "<this>");
        Ref ref = (Ref) abstractC18999ab.getCapability(KotlinTypeRefinerKt.getREFINER_CAPABILITY());
        KotlinTypeRefiner kotlinTypeRefiner = ref == null ? null : (KotlinTypeRefiner) ref.getValue();
        KotlinTypeRefiner.Default r4 = kotlinTypeRefiner;
        if (kotlinTypeRefiner == null) {
            r4 = KotlinTypeRefiner.Default.INSTANCE;
        }
        return r4;
    }

    /* renamed from: a */
    public static final boolean m1534a(AbstractC19050ba abstractC19050ba) {
        C18524p.m3840d(abstractC19050ba, "<this>");
        Boolean m1203a = C20000b.m1203a(C18282n.m4176a(abstractC19050ba), C19757a.f65948a, C19758b.f65949a);
        C18524p.m3843b(m1203a, "ifAny(\n        listOf(this),\n        { current -> current.overriddenDescriptors.map(ValueParameterDescriptor::getOriginal) },\n        ValueParameterDescriptor::declaresDefaultValue\n    )");
        return m1203a.booleanValue();
    }

    /* renamed from: b */
    public static final C18961b m1528b(AbstractC19193k abstractC19193k) {
        C18524p.m3840d(abstractC19193k, "<this>");
        C18961b m1462d = C19807d.m1462d(abstractC19193k);
        C18524p.m3843b(m1462d, "getFqNameSafe(this)");
        return m1462d;
    }

    /* renamed from: b */
    public static final AbstractC19781g<?> m1530b(AbstractC18977c abstractC18977c) {
        C18524p.m3840d(abstractC18977c, "<this>");
        return (AbstractC19781g) C18282n.m4142b((Iterable<? extends Object>) abstractC18977c.mo2041c().values());
    }

    /* renamed from: b */
    public static final boolean m1529b(AbstractC18999ab abstractC18999ab) {
        C18524p.m3840d(abstractC18999ab, "<this>");
        Ref ref = (Ref) abstractC18999ab.getCapability(KotlinTypeRefinerKt.getREFINER_CAPABILITY());
        return (ref == null ? null : (KotlinTypeRefiner) ref.getValue()) != null;
    }

    /* renamed from: c */
    public static final AbstractC18999ab m1527c(AbstractC19193k abstractC19193k) {
        C18524p.m3840d(abstractC19193k, "<this>");
        AbstractC18999ab m1460f = C19807d.m1460f(abstractC19193k);
        C18524p.m3843b(m1460f, "getContainingModule(this)");
        return m1460f;
    }

    /* renamed from: d */
    public static final AbstractC18940g m1526d(AbstractC19193k abstractC19193k) {
        C18524p.m3840d(abstractC19193k, "<this>");
        return m1527c(abstractC19193k).getBuiltIns();
    }

    /* renamed from: e */
    public static final AbstractC18378h<AbstractC19193k> m1525e(AbstractC19193k abstractC19193k) {
        C18524p.m3840d(abstractC19193k, "<this>");
        C18524p.m3840d(abstractC19193k, "<this>");
        return C18381k.m4024a(C18381k.m4031a(abstractC19193k, C19761e.f65953a), 1);
    }

    /* renamed from: f */
    public static final C18961b m1524f(AbstractC19193k abstractC19193k) {
        C18524p.m3840d(abstractC19193k, "<this>");
        C18962c m1531a = m1531a(abstractC19193k);
        if (!m1531a.m2732b()) {
            m1531a = null;
        }
        if (m1531a == null) {
            return null;
        }
        return m1531a.m2730c();
    }
}
