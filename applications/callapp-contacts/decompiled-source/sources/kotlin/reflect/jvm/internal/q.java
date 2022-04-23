package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ak;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.k;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B/\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\u0013\u0010)\u001a\u00020\u001c2\b\u0010*\u001a\u0004\u0018\u00010+H\u0096\u0002J\b\u0010,\u001a\u00020\u0005H\u0016J\b\u0010-\u001a\u00020\"H\u0016R!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u0004\u0018\u00010\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006."}, d2 = {"Lkotlin/reflect/jvm/internal/KParameterImpl;", "Lkotlin/reflect/KParameter;", "callable", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "index", "", "kind", "Lkotlin/reflect/KParameter$Kind;", "computeDescriptor", "Lkotlin/Function0;", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "annotations$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "getCallable", "()Lkotlin/reflect/jvm/internal/KCallableImpl;", "descriptor", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;", "descriptor$delegate", "getIndex", "()I", "isOptional", "", "()Z", "isVararg", "getKind", "()Lkotlin/reflect/KParameter$Kind;", "name", "", "getName", "()Ljava/lang/String;", "type", "Lkotlin/reflect/KType;", "getType", "()Lkotlin/reflect/KType;", "equals", "other", "", "hashCode", "toString", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/q.class */
public final class q implements k {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty[] f38574a = {ac.a(new aa(ac.b(q.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), ac.a(new aa(ac.b(q.class), "annotations", "getAnnotations()Ljava/util/List;"))};

    /* renamed from: b  reason: collision with root package name */
    final f<?> f38575b;

    /* renamed from: c  reason: collision with root package name */
    final int f38576c;

    /* renamed from: d  reason: collision with root package name */
    final k.a f38577d;
    private final ad.a e;
    private final ad.a f = ad.b(new a());

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0002\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/q$a.class */
    static final class a extends r implements Function0<List<? extends Annotation>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends Annotation> invoke() {
            return aj.a((kotlin.reflect.jvm.internal.impl.descriptors.a.a) q.this.f());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/q$b.class */
    static final class b extends r implements Function0<Type> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Type invoke() {
            ak f = q.this.f();
            if (!(f instanceof aq) || !p.a(aj.a((kotlin.reflect.jvm.internal.impl.descriptors.a) q.this.f38575b.b()), f) || q.this.f38575b.b().getKind() != b.a.FAKE_OVERRIDE) {
                return q.this.f38575b.c().c().get(q.this.f38576c);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration = q.this.f38575b.b().getContainingDeclaration();
            Objects.requireNonNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            Class<?> a2 = aj.a((d) containingDeclaration);
            if (a2 != null) {
                return a2;
            }
            throw new ab("Cannot determine receiver Java type of inherited declaration: ".concat(String.valueOf(f)));
        }
    }

    public q(f<?> callable, int i, k.a kind, Function0<? extends ak> computeDescriptor) {
        p.d(callable, "callable");
        p.d(kind, "kind");
        p.d(computeDescriptor, "computeDescriptor");
        this.f38575b = callable;
        this.f38576c = i;
        this.f38577d = kind;
        this.e = ad.b(computeDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ak f() {
        return (ak) this.e.invoke();
    }

    @Override // kotlin.reflect.k
    public final String a() {
        ak f = f();
        ak akVar = f;
        if (!(f instanceof ba)) {
            akVar = null;
        }
        ba baVar = (ba) akVar;
        if (baVar == null || baVar.a().hasSynthesizedParameterNames()) {
            return null;
        }
        e name = baVar.getName();
        p.b(name, "valueParameter.name");
        if (name.f37342a) {
            return null;
        }
        return name.a();
    }

    @Override // kotlin.reflect.k
    public final KType b() {
        KotlinType g = f().g();
        p.b(g, "descriptor.type");
        return new w(g, new b());
    }

    @Override // kotlin.reflect.k
    public final k.a c() {
        return this.f38577d;
    }

    @Override // kotlin.reflect.k
    public final boolean d() {
        ak f = f();
        ak akVar = f;
        if (!(f instanceof ba)) {
            akVar = null;
        }
        ba baVar = (ba) akVar;
        if (baVar != null) {
            return kotlin.reflect.jvm.internal.impl.resolve.b.a.a(baVar);
        }
        return false;
    }

    @Override // kotlin.reflect.k
    public final boolean e() {
        ak f = f();
        return (f instanceof ba) && ((ba) f).d() != null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return p.a(this.f38575b, qVar.f38575b) && this.f38576c == qVar.f38576c;
    }

    @Override // kotlin.reflect.b
    public final List<Annotation> getAnnotations() {
        return (List) this.f.invoke();
    }

    public final int hashCode() {
        return (this.f38575b.hashCode() * 31) + Integer.valueOf(this.f38576c).hashCode();
    }

    public final String toString() {
        af afVar = af.f36874a;
        return af.a(this);
    }
}
