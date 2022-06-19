package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC20103k;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19014ak;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B/\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\u0013\u0010)\u001a\u00020\u001c2\b\u0010*\u001a\u0004\u0018\u00010+H\u0096\u0002J\b\u0010,\u001a\u00020\u0005H\u0016J\b\u0010-\u001a\u00020\"H\u0016R!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u0004\u0018\u00010\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006."}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KParameterImpl;", "Lkotlin/reflect/KParameter;", "callable", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "index", "", "kind", "Lkotlin/reflect/KParameter$Kind;", "computeDescriptor", "Lkotlin/Function0;", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "annotations$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "getCallable", "()Lkotlin/reflect/jvm/internal/KCallableImpl;", "descriptor", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;", "descriptor$delegate", "getIndex", "()I", "isOptional", "", "()Z", "isVararg", "getKind", "()Lkotlin/reflect/KParameter$Kind;", "name", "", "getName", "()Ljava/lang/String;", "type", "Lkotlin/reflect/KType;", "getType", "()Lkotlin/reflect/KType;", "equals", "other", "", "hashCode", "toString", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.q */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/q.class */
public final class C20064q implements AbstractC20103k {

    /* renamed from: a */
    static final /* synthetic */ KProperty[] f66438a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20064q.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20064q.class), "annotations", "getAnnotations()Ljava/util/List;"))};

    /* renamed from: b */
    final AbstractC18659f<?> f66439b;

    /* renamed from: c */
    final int f66440c;

    /* renamed from: d */
    final AbstractC20103k.EnumC20104a f66441d;

    /* renamed from: e */
    private final C18622ad.C18623a f66442e;

    /* renamed from: f */
    private final C18622ad.C18623a f66443f = C18622ad.m3795b(new C20065a());

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0002\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.q$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/q$a.class */
    public static final class C20065a extends AbstractC18526r implements Function0<List<? extends Annotation>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20065a() {
            super(0);
            C20064q.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends Annotation> invoke() {
            return C18635aj.m3761a((AbstractC18975a) C20064q.this.m1153f());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.q$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/q$b.class */
    static final class C20066b extends AbstractC18526r implements Function0<Type> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20066b() {
            super(0);
            C20064q.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Type invoke() {
            AbstractC19014ak m1153f = C20064q.this.m1153f();
            if (!(m1153f instanceof AbstractC19020aq) || !C18524p.m3850a(C18635aj.m3759a((AbstractC18973a) C20064q.this.f66439b.mo1137b()), m1153f) || C20064q.this.f66439b.mo1137b().getKind() != AbstractC19039b.EnumC19040a.FAKE_OVERRIDE) {
                return C20064q.this.f66439b.mo1136c().mo3800c().get(C20064q.this.f66440c);
            }
            AbstractC19193k containingDeclaration = C20064q.this.f66439b.mo1137b().getContainingDeclaration();
            Objects.requireNonNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            Class<?> m3758a = C18635aj.m3758a((AbstractC19070d) containingDeclaration);
            if (m3758a == null) {
                throw new C18620ab("Cannot determine receiver Java type of inherited declaration: ".concat(String.valueOf(m1153f)));
            }
            return m3758a;
        }
    }

    public C20064q(AbstractC18659f<?> callable, int i, AbstractC20103k.EnumC20104a kind, Function0<? extends AbstractC19014ak> computeDescriptor) {
        C18524p.m3840d(callable, "callable");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(computeDescriptor, "computeDescriptor");
        this.f66439b = callable;
        this.f66440c = i;
        this.f66441d = kind;
        this.f66442e = C18622ad.m3795b(computeDescriptor);
    }

    /* renamed from: f */
    public final AbstractC19014ak m1153f() {
        return (AbstractC19014ak) this.f66442e.invoke();
    }

    @Override // kotlin.reflect.AbstractC20103k
    /* renamed from: a */
    public final String mo1120a() {
        AbstractC19014ak m1153f = m1153f();
        AbstractC19014ak abstractC19014ak = m1153f;
        if (!(m1153f instanceof AbstractC19050ba)) {
            abstractC19014ak = null;
        }
        AbstractC19050ba abstractC19050ba = (AbstractC19050ba) abstractC19014ak;
        if (abstractC19050ba != null && !abstractC19050ba.mo2612a().hasSynthesizedParameterNames()) {
            C18966e name = abstractC19050ba.getName();
            C18524p.m3843b(name, "valueParameter.name");
            if (!name.f64696a) {
                return name.m2721a();
            }
            return null;
        }
        return null;
    }

    @Override // kotlin.reflect.AbstractC20103k
    /* renamed from: b */
    public final KType mo1119b() {
        KotlinType g = m1153f().mo2593g();
        C18524p.m3843b(g, "descriptor.type");
        return new C20094w(g, new C20066b());
    }

    @Override // kotlin.reflect.AbstractC20103k
    /* renamed from: c */
    public final AbstractC20103k.EnumC20104a mo1118c() {
        return this.f66441d;
    }

    @Override // kotlin.reflect.AbstractC20103k
    /* renamed from: d */
    public final boolean mo1117d() {
        AbstractC19014ak m1153f = m1153f();
        AbstractC19014ak abstractC19014ak = m1153f;
        if (!(m1153f instanceof AbstractC19050ba)) {
            abstractC19014ak = null;
        }
        AbstractC19050ba abstractC19050ba = (AbstractC19050ba) abstractC19014ak;
        if (abstractC19050ba != null) {
            return C19756a.m1534a(abstractC19050ba);
        }
        return false;
    }

    @Override // kotlin.reflect.AbstractC20103k
    /* renamed from: e */
    public final boolean mo1116e() {
        AbstractC19014ak m1153f = m1153f();
        return (m1153f instanceof AbstractC19050ba) && ((AbstractC19050ba) m1153f).mo2608d() != null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C20064q) {
            C20064q c20064q = (C20064q) obj;
            return C18524p.m3850a(this.f66439b, c20064q.f66439b) && this.f66440c == c20064q.f66440c;
        }
        return false;
    }

    @Override // kotlin.reflect.AbstractC18550b
    public final List<Annotation> getAnnotations() {
        return (List) this.f66443f.invoke();
    }

    public final int hashCode() {
        return (this.f66439b.hashCode() * 31) + Integer.valueOf(this.f66440c).hashCode();
    }

    public final String toString() {
        C18628af c18628af = C18628af.f63696a;
        return C18628af.m3777a(this);
    }
}
