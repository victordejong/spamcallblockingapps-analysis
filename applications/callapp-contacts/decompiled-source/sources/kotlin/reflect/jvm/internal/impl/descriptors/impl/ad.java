package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Objects;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.j;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ad.class */
public final class ad extends FunctionDescriptorImpl implements ac {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37515a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37516b = {ac.a(new aa(ac.b(ad.class), "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"))};

    /* renamed from: c  reason: collision with root package name */
    final n f37517c;

    /* renamed from: d  reason: collision with root package name */
    final ax f37518d;
    private final j e;
    private c f;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static TypeSubstitutor a(ax axVar) {
            if (axVar.c() == null) {
                return null;
            }
            return TypeSubstitutor.create(axVar.b());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b.class */
    static final class b extends r implements Function0<ad> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f37520b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(c cVar) {
            super(0);
            this.f37520b = cVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ ad invoke() {
            n nVar = ad.this.f37517c;
            ax axVar = ad.this.f37518d;
            c cVar = this.f37520b;
            ad adVar = ad.this;
            g annotations = cVar.getAnnotations();
            b.a kind = this.f37520b.getKind();
            p.b(kind, "underlyingConstructorDescriptor.kind");
            at source = ad.this.f37518d.getSource();
            p.b(source, "typeAliasDescriptor.source");
            ad adVar2 = new ad(nVar, axVar, cVar, adVar, annotations, kind, source, null);
            ad adVar3 = ad.this;
            c cVar2 = this.f37520b;
            a aVar = ad.f37515a;
            TypeSubstitutor a2 = a.a(adVar3.f37518d);
            if (a2 == null) {
                return null;
            }
            aq dispatchReceiverParameter = cVar2.getDispatchReceiverParameter();
            adVar2.initialize(null, dispatchReceiverParameter == null ? null : dispatchReceiverParameter.a(a2), adVar3.f37518d.getDeclaredTypeParameters(), adVar3.getValueParameters(), adVar3.getReturnType(), y.FINAL, adVar3.f37518d.getVisibility());
            return adVar2;
        }
    }

    private ad(n nVar, ax axVar, c cVar, ac acVar, g gVar, b.a aVar, at atVar) {
        super(axVar, acVar, gVar, e.c("<init>"), aVar, atVar);
        this.f37517c = nVar;
        this.f37518d = axVar;
        setActual(axVar.isActual());
        this.e = nVar.b(new b(cVar));
        this.f = cVar;
    }

    public /* synthetic */ ad(n nVar, ax axVar, c cVar, ac acVar, g gVar, b.a aVar, at atVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVar, axVar, cVar, acVar, gVar, aVar, atVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public ac copy(k newOwner, y modality, s visibility, b.a kind, boolean z) {
        p.d(newOwner, "newOwner");
        p.d(modality, "modality");
        p.d(visibility, "visibility");
        p.d(kind, "kind");
        w build = newCopyBuilder().setOwner(newOwner).setModality(modality).setVisibility(visibility).setKind(kind).setCopyOverrides(z).build();
        Objects.requireNonNull(build, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
        return (ac) build;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public ac substitute2(TypeSubstitutor substitutor) {
        p.d(substitutor, "substitutor");
        w substitute = super.substitute(substitutor);
        Objects.requireNonNull(substitute, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl");
        ad adVar = (ad) substitute;
        TypeSubstitutor create = TypeSubstitutor.create(adVar.getReturnType());
        p.b(create, "create(substitutedTypeAliasConstructor.returnType)");
        c a2 = this.f.a().a(create);
        if (a2 == null) {
            return null;
        }
        adVar.f = a2;
        return adVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ac
    public final c a() {
        return this.f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public final /* bridge */ /* synthetic */ h b() {
        return this.f37518d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public final d c() {
        d c2 = this.f.c();
        p.b(c2, "underlyingConstructorDescriptor.constructedClass");
        return c2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected final /* synthetic */ FunctionDescriptorImpl createSubstitutedCopy(k newOwner, w wVar, b.a kind, e eVar, g annotations, at source) {
        p.d(newOwner, "newOwner");
        p.d(kind, "kind");
        p.d(annotations, "annotations");
        p.d(source, "source");
        boolean z = false;
        boolean z2 = kind == b.a.DECLARATION || kind == b.a.SYNTHESIZED;
        if (!x.f38657a || z2) {
            if (eVar == null) {
                z = true;
            }
            if (!x.f38657a || z) {
                return new ad(this.f37517c, this.f37518d, this.f, this, annotations, b.a.DECLARATION, source);
            }
            throw new AssertionError(p.a("Renaming type alias constructor: ", (Object) this));
        }
        throw new AssertionError("Creating a type alias constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + newOwner + "\nkind: " + kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public final boolean d() {
        return this.f.d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.k
    public final /* bridge */ /* synthetic */ k getContainingDeclaration() {
        return this.f37518d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.a
    public final KotlinType getReturnType() {
        KotlinType returnType = super.getReturnType();
        p.a(returnType);
        return returnType;
    }
}
