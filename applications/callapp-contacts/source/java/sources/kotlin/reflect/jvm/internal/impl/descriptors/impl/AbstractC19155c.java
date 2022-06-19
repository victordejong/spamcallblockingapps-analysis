package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19145ad;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/c.class */
public abstract class AbstractC19155c extends AbstractC19163i implements AbstractC19033ax {

    /* renamed from: a */
    private final AbstractC19213s f64914a;

    /* renamed from: b */
    private List<? extends TypeParameterDescriptor> f64915b;

    /* renamed from: c */
    private final AbstractTypeAliasDescriptor$typeConstructor$1 f64916c = new TypeConstructor() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1
        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final AbstractC18940g getBuiltIns() {
            return C19756a.m1526d(getDeclarationDescriptor());
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final AbstractC19033ax getDeclarationDescriptor() {
            return AbstractC19155c.this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            return AbstractC19155c.this.mo1279f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        /* renamed from: getSupertypes */
        public final Collection<KotlinType> mo53752getSupertypes() {
            Collection<KotlinType> mo53752getSupertypes = getDeclarationDescriptor().mo1284a().getConstructor().mo53752getSupertypes();
            C18524p.m3843b(mo53752getSupertypes, "declarationDescriptor.underlyingType.constructor.supertypes");
            return mo53752getSupertypes;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
            C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this;
        }

        public final String toString() {
            return "[typealias " + getDeclarationDescriptor().getName().m2721a() + ']';
        }
    };

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/c$a.class */
    public static final class C19156a extends AbstractC18526r implements Function1<KotlinTypeRefiner, SimpleType> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19156a() {
            super(1);
            AbstractC19155c.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
            AbstractC19129g refineDescriptor = kotlinTypeRefiner.refineDescriptor(AbstractC19155c.this);
            if (refineDescriptor == null) {
                return null;
            }
            return refineDescriptor.getDefaultType();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/c$b.class */
    static final class C19157b extends AbstractC18526r implements Function1<UnwrappedType, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19157b() {
            super(1);
            AbstractC19155c.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004b, code lost:
            if (((r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) && !kotlin.jvm.internal.C18524p.m3850a(((kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r0).getContainingDeclaration(), r0)) != false) goto L13;
         */
        @Override // kotlin.jvm.functions.Function1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ java.lang.Boolean invoke(kotlin.reflect.jvm.internal.impl.types.UnwrappedType r4) {
            /*
                r3 = this;
                r0 = r4
                kotlin.reflect.jvm.internal.impl.types.UnwrappedType r0 = (kotlin.reflect.jvm.internal.impl.types.UnwrappedType) r0
                r5 = r0
                r0 = r5
                java.lang.String r1 = "type"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r5
                kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r0
                boolean r0 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt.isError(r0)
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L51
                r0 = r3
                kotlin.reflect.jvm.internal.impl.descriptors.impl.c r0 = kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19155c.this
                r4 = r0
                r0 = r5
                kotlin.reflect.jvm.internal.impl.types.TypeConstructor r0 = r0.getConstructor()
                kotlin.reflect.jvm.internal.impl.descriptors.g r0 = r0.getDeclarationDescriptor()
                r5 = r0
                r0 = r5
                boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
                if (r0 == 0) goto L46
                r0 = r5
                kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r0
                kotlin.reflect.jvm.internal.impl.descriptors.k r0 = r0.getContainingDeclaration()
                r1 = r4
                boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)
                if (r0 != 0) goto L46
                r0 = 1
                r8 = r0
                goto L49
            L46:
                r0 = 0
                r8 = r0
            L49:
                r0 = r8
                if (r0 == 0) goto L51
                goto L54
            L51:
                r0 = 0
                r7 = r0
            L54:
                r0 = r7
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19155c.C19157b.invoke(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v7, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1] */
    public AbstractC19155c(AbstractC19193k containingDeclaration, AbstractC18983g annotations, C18966e name, AbstractC19026at sourceElement, AbstractC19213s visibilityImpl) {
        super(containingDeclaration, annotations, name, sourceElement);
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(sourceElement, "sourceElement");
        C18524p.m3840d(visibilityImpl, "visibilityImpl");
        this.f64914a = visibilityImpl;
    }

    /* renamed from: a */
    public final void m2592a(List<? extends TypeParameterDescriptor> declaredTypeParameters) {
        C18524p.m3840d(declaredTypeParameters, "declaredTypeParameters");
        this.f64915b = declaredTypeParameters;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> visitor, D d) {
        C18524p.m3840d(visitor, "visitor");
        return visitor.mo2380a((AbstractC19033ax) this, (AbstractC19155c) d);
    }

    /* renamed from: d */
    protected abstract AbstractC19302n mo1280d();

    /* renamed from: e */
    public final Collection<AbstractC19144ac> m2591e() {
        C19145ad c19145ad;
        AbstractC19070d c = mo1281c();
        if (c == null) {
            return C18297z.f63400a;
        }
        Collection<AbstractC19065c> constructors = c.getConstructors();
        C18524p.m3843b(constructors, "classDescriptor.constructors");
        Collection<AbstractC19065c> collection = constructors;
        ArrayList arrayList = new ArrayList();
        for (AbstractC19065c constructor : collection) {
            C19145ad.C19146a c19146a = C19145ad.f64891a;
            AbstractC19302n storageManager = mo1280d();
            AbstractC19155c typeAliasDescriptor = this;
            C18524p.m3843b(constructor, "it");
            C18524p.m3840d(storageManager, "storageManager");
            C18524p.m3840d(typeAliasDescriptor, "typeAliasDescriptor");
            C18524p.m3840d(constructor, "constructor");
            TypeSubstitutor m2613a = C19145ad.C19146a.m2613a(typeAliasDescriptor);
            AbstractC19020aq abstractC19020aq = null;
            if (m2613a == null) {
                c19145ad = null;
            } else {
                AbstractC19065c mo2584a = constructor.mo2584a(m2613a);
                if (mo2584a == null) {
                    c19145ad = null;
                } else {
                    AbstractC18983g annotations = constructor.getAnnotations();
                    AbstractC19039b.EnumC19040a kind = constructor.getKind();
                    C18524p.m3843b(kind, "constructor.kind");
                    AbstractC19026at source = typeAliasDescriptor.getSource();
                    C18524p.m3843b(source, "typeAliasDescriptor.source");
                    C19145ad c19145ad2 = new C19145ad(storageManager, typeAliasDescriptor, mo2584a, null, annotations, kind, source, null);
                    List<AbstractC19050ba> substitutedValueParameters = FunctionDescriptorImpl.getSubstitutedValueParameters(c19145ad2, constructor.getValueParameters(), m2613a);
                    if (substitutedValueParameters == null) {
                        c19145ad = null;
                    } else {
                        SimpleType lowerIfFlexible = FlexibleTypesKt.lowerIfFlexible(mo2584a.getReturnType().unwrap());
                        SimpleType defaultType = typeAliasDescriptor.getDefaultType();
                        C18524p.m3843b(defaultType, "typeAliasDescriptor.defaultType");
                        SimpleType withAbbreviation = SpecialTypesKt.withAbbreviation(lowerIfFlexible, defaultType);
                        AbstractC19020aq dispatchReceiverParameter = constructor.getDispatchReceiverParameter();
                        if (dispatchReceiverParameter != null) {
                            C19145ad c19145ad3 = c19145ad2;
                            KotlinType safeSubstitute = m2613a.safeSubstitute(dispatchReceiverParameter.mo2593g(), Variance.INVARIANT);
                            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
                            abstractC19020aq = C19762c.m1522a(c19145ad3, safeSubstitute, AbstractC18983g.C18984a.m2705a());
                        }
                        c19145ad2.initialize(abstractC19020aq, null, typeAliasDescriptor.getDeclaredTypeParameters(), substitutedValueParameters, withAbbreviation, EnumC19222y.FINAL, typeAliasDescriptor.getVisibility());
                        c19145ad = c19145ad2;
                    }
                }
            }
            if (c19145ad != null) {
                arrayList.add(c19145ad);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public abstract List<TypeParameterDescriptor> mo1279f();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List list = this.f64915b;
        if (list != null) {
            return list;
        }
        C18524p.m3848a("declaredTypeParametersImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public EnumC19222y getModality() {
        return EnumC19222y.FINAL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public TypeConstructor getTypeConstructor() {
        return this.f64916c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        return this.f64914a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public boolean isInner() {
        return TypeUtils.contains(mo1284a(), new C19157b());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19162h
    public String toString() {
        return C18524p.m3847a("typealias ", (Object) getName().m2721a());
    }
}
