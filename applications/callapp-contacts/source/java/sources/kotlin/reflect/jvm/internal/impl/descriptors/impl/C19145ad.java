package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Objects;
import kotlin.C20130x;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19297j;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ad */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ad.class */
public final class C19145ad extends FunctionDescriptorImpl implements AbstractC19144ac {

    /* renamed from: a */
    public static final C19146a f64891a = new C19146a(null);

    /* renamed from: b */
    static final /* synthetic */ KProperty<Object>[] f64892b = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19145ad.class), "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"))};

    /* renamed from: c */
    final AbstractC19302n f64893c;

    /* renamed from: d */
    final AbstractC19033ax f64894d;

    /* renamed from: e */
    private final AbstractC19297j f64895e;

    /* renamed from: f */
    private AbstractC19065c f64896f;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ad$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a.class */
    public static final class C19146a {
        private C19146a() {
        }

        public /* synthetic */ C19146a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static TypeSubstitutor m2613a(AbstractC19033ax abstractC19033ax) {
            if (abstractC19033ax.mo1281c() == null) {
                return null;
            }
            return TypeSubstitutor.create(abstractC19033ax.mo1282b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ad$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ad$b.class */
    public static final class C19147b extends AbstractC18526r implements Function0<C19145ad> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19065c f64898b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19147b(AbstractC19065c abstractC19065c) {
            super(0);
            C19145ad.this = r4;
            this.f64898b = abstractC19065c;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C19145ad invoke() {
            AbstractC19302n abstractC19302n = C19145ad.this.f64893c;
            AbstractC19033ax abstractC19033ax = C19145ad.this.f64894d;
            AbstractC19065c abstractC19065c = this.f64898b;
            C19145ad c19145ad = C19145ad.this;
            AbstractC18983g annotations = abstractC19065c.getAnnotations();
            AbstractC19039b.EnumC19040a kind = this.f64898b.getKind();
            C18524p.m3843b(kind, "underlyingConstructorDescriptor.kind");
            AbstractC19026at source = C19145ad.this.f64894d.getSource();
            C18524p.m3843b(source, "typeAliasDescriptor.source");
            C19145ad c19145ad2 = new C19145ad(abstractC19302n, abstractC19033ax, abstractC19065c, c19145ad, annotations, kind, source, null);
            C19145ad c19145ad3 = C19145ad.this;
            AbstractC19065c abstractC19065c2 = this.f64898b;
            C19146a c19146a = C19145ad.f64891a;
            TypeSubstitutor m2613a = C19146a.m2613a(c19145ad3.f64894d);
            if (m2613a == null) {
                return null;
            }
            AbstractC19020aq dispatchReceiverParameter = abstractC19065c2.getDispatchReceiverParameter();
            c19145ad2.initialize(null, dispatchReceiverParameter == null ? null : dispatchReceiverParameter.mo2594a(m2613a), c19145ad3.f64894d.getDeclaredTypeParameters(), c19145ad3.getValueParameters(), c19145ad3.getReturnType(), EnumC19222y.FINAL, c19145ad3.f64894d.getVisibility());
            return c19145ad2;
        }
    }

    private C19145ad(AbstractC19302n abstractC19302n, AbstractC19033ax abstractC19033ax, AbstractC19065c abstractC19065c, AbstractC19144ac abstractC19144ac, AbstractC18983g abstractC18983g, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at) {
        super(abstractC19033ax, abstractC19144ac, abstractC18983g, C18966e.m2715c("<init>"), enumC19040a, abstractC19026at);
        this.f64893c = abstractC19302n;
        this.f64894d = abstractC19033ax;
        setActual(abstractC19033ax.isActual());
        this.f64895e = abstractC19302n.mo2308b(new C19147b(abstractC19065c));
        this.f64896f = abstractC19065c;
    }

    public /* synthetic */ C19145ad(AbstractC19302n abstractC19302n, AbstractC19033ax abstractC19033ax, AbstractC19065c abstractC19065c, AbstractC19144ac abstractC19144ac, AbstractC18983g abstractC18983g, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC19302n, abstractC19033ax, abstractC19065c, abstractC19144ac, abstractC18983g, enumC19040a, abstractC19026at);
    }

    /* renamed from: a */
    public AbstractC19144ac copy(AbstractC19193k newOwner, EnumC19222y modality, AbstractC19213s visibility, AbstractC19039b.EnumC19040a kind, boolean z) {
        C18524p.m3840d(newOwner, "newOwner");
        C18524p.m3840d(modality, "modality");
        C18524p.m3840d(visibility, "visibility");
        C18524p.m3840d(kind, "kind");
        AbstractC19219w build = newCopyBuilder().setOwner(newOwner).setModality(modality).setVisibility(visibility).setKind(kind).setCopyOverrides(z).build();
        Objects.requireNonNull(build, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
        return (AbstractC19144ac) build;
    }

    /* renamed from: a */
    public AbstractC19144ac substitute2(TypeSubstitutor substitutor) {
        C18524p.m3840d(substitutor, "substitutor");
        AbstractC19219w substitute = super.substitute(substitutor);
        Objects.requireNonNull(substitute, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl");
        C19145ad c19145ad = (C19145ad) substitute;
        TypeSubstitutor create = TypeSubstitutor.create(c19145ad.getReturnType());
        C18524p.m3843b(create, "create(substitutedTypeAliasConstructor.returnType)");
        AbstractC19065c mo2584a = this.f64896f.mo2590a().mo2584a(create);
        if (mo2584a == null) {
            return null;
        }
        c19145ad.f64896f = mo2584a;
        return c19145ad;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19144ac
    /* renamed from: a */
    public final AbstractC19065c mo2616a() {
        return this.f64896f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC19130h mo2527b() {
        return this.f64894d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j
    /* renamed from: c */
    public final AbstractC19070d mo2525c() {
        AbstractC19070d c = this.f64896f.mo2525c();
        C18524p.m3843b(c, "underlyingConstructorDescriptor.constructedClass");
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected final /* synthetic */ FunctionDescriptorImpl createSubstitutedCopy(AbstractC19193k newOwner, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a kind, C18966e c18966e, AbstractC18983g annotations, AbstractC19026at source) {
        C18524p.m3840d(newOwner, "newOwner");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(source, "source");
        boolean z = kind == AbstractC19039b.EnumC19040a.DECLARATION || kind == AbstractC19039b.EnumC19040a.SYNTHESIZED;
        if (!C20130x.f66532a || z) {
            boolean z2 = false;
            if (c18966e == null) {
                z2 = true;
            }
            if (C20130x.f66532a && !z2) {
                throw new AssertionError(C18524p.m3847a("Renaming type alias constructor: ", (Object) this));
            }
            return new C19145ad(this.f64893c, this.f64894d, this.f64896f, this, annotations, AbstractC19039b.EnumC19040a.DECLARATION, source);
        }
        throw new AssertionError("Creating a type alias constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + newOwner + "\nkind: " + kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j
    /* renamed from: d */
    public final boolean mo2524d() {
        return this.f64896f.mo2524d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19163i, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final /* bridge */ /* synthetic */ AbstractC19193k getContainingDeclaration() {
        return this.f64894d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public final KotlinType getReturnType() {
        KotlinType returnType = super.getReturnType();
        C18524p.m3851a(returnType);
        return returnType;
    }
}
