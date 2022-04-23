package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
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
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/c.class */
public abstract class c extends i implements ax {

    /* renamed from: a  reason: collision with root package name */
    private final s f37529a;

    /* renamed from: b  reason: collision with root package name */
    private List<? extends TypeParameterDescriptor> f37530b;

    /* renamed from: c  reason: collision with root package name */
    private final AbstractTypeAliasDescriptor$typeConstructor$1 f37531c = new TypeConstructor() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1
        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final g getBuiltIns() {
            return a.d(getDeclarationDescriptor());
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final ax getDeclarationDescriptor() {
            return c.this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            return c.this.f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        /* renamed from: getSupertypes */
        public final Collection<KotlinType> mo7371getSupertypes() {
            Collection<KotlinType> supertypes = getDeclarationDescriptor().a().getConstructor().mo7371getSupertypes();
            p.b(supertypes, "declarationDescriptor.underlyingType.constructor.supertypes");
            return supertypes;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
            p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this;
        }

        public final String toString() {
            return "[typealias " + getDeclarationDescriptor().getName().a() + ']';
        }
    };

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/c$a.class */
    public static final class a extends r implements Function1<KotlinTypeRefiner, SimpleType> {
        public a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
            kotlin.reflect.jvm.internal.impl.descriptors.g refineDescriptor = kotlinTypeRefiner.refineDescriptor(c.this);
            if (refineDescriptor == null) {
                return null;
            }
            return refineDescriptor.getDefaultType();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/c$b.class */
    static final class b extends r implements Function1<UnwrappedType, Boolean> {
        b() {
            super(1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004b, code lost:
            if (((r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) && !kotlin.jvm.internal.p.a(((kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r0).getContainingDeclaration(), r0)) != false) goto L_0x0054;
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
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r5
                kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r0
                boolean r0 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt.isError(r0)
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L_0x0051
                r0 = r3
                kotlin.reflect.jvm.internal.impl.descriptors.impl.c r0 = kotlin.reflect.jvm.internal.impl.descriptors.impl.c.this
                r4 = r0
                r0 = r5
                kotlin.reflect.jvm.internal.impl.types.TypeConstructor r0 = r0.getConstructor()
                kotlin.reflect.jvm.internal.impl.descriptors.g r0 = r0.getDeclarationDescriptor()
                r5 = r0
                r0 = r5
                boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
                if (r0 == 0) goto L_0x0046
                r0 = r5
                kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor) r0
                kotlin.reflect.jvm.internal.impl.descriptors.k r0 = r0.getContainingDeclaration()
                r1 = r4
                boolean r0 = kotlin.jvm.internal.p.a(r0, r1)
                if (r0 != 0) goto L_0x0046
                r0 = 1
                r8 = r0
                goto L_0x0049
            L_0x0046:
                r0 = 0
                r8 = r0
            L_0x0049:
                r0 = r8
                if (r0 == 0) goto L_0x0051
                goto L_0x0054
            L_0x0051:
                r0 = 0
                r7 = r0
            L_0x0054:
                r0 = r7
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.c.b.invoke(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v7, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1] */
    public c(k containingDeclaration, kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations, e name, at sourceElement, s visibilityImpl) {
        super(containingDeclaration, annotations, name, sourceElement);
        p.d(containingDeclaration, "containingDeclaration");
        p.d(annotations, "annotations");
        p.d(name, "name");
        p.d(sourceElement, "sourceElement");
        p.d(visibilityImpl, "visibilityImpl");
        this.f37529a = visibilityImpl;
    }

    public final void a(List<? extends TypeParameterDescriptor> declaredTypeParameters) {
        p.d(declaredTypeParameters, "declaredTypeParameters");
        this.f37530b = declaredTypeParameters;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> visitor, D d2) {
        p.d(visitor, "visitor");
        return visitor.a((ax) this, (c) d2);
    }

    protected abstract n d();

    public final Collection<ac> e() {
        ad adVar;
        d c2 = c();
        if (c2 == null) {
            return z.f36608a;
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> constructors = c2.getConstructors();
        p.b(constructors, "classDescriptor.constructors");
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collection = constructors;
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.descriptors.c constructor : collection) {
            ad.a aVar = ad.f37515a;
            n storageManager = d();
            c typeAliasDescriptor = this;
            p.b(constructor, "it");
            p.d(storageManager, "storageManager");
            p.d(typeAliasDescriptor, "typeAliasDescriptor");
            p.d(constructor, "constructor");
            TypeSubstitutor a2 = ad.a.a(typeAliasDescriptor);
            aq aqVar = null;
            if (a2 == null) {
                adVar = null;
            } else {
                kotlin.reflect.jvm.internal.impl.descriptors.c a3 = constructor.a(a2);
                if (a3 == null) {
                    adVar = null;
                } else {
                    kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations = constructor.getAnnotations();
                    b.a kind = constructor.getKind();
                    p.b(kind, "constructor.kind");
                    at source = typeAliasDescriptor.getSource();
                    p.b(source, "typeAliasDescriptor.source");
                    ad adVar2 = new ad(storageManager, typeAliasDescriptor, a3, null, annotations, kind, source, null);
                    List<ba> substitutedValueParameters = FunctionDescriptorImpl.getSubstitutedValueParameters(adVar2, constructor.getValueParameters(), a2);
                    if (substitutedValueParameters == null) {
                        adVar = null;
                    } else {
                        SimpleType lowerIfFlexible = FlexibleTypesKt.lowerIfFlexible(a3.getReturnType().unwrap());
                        SimpleType defaultType = typeAliasDescriptor.getDefaultType();
                        p.b(defaultType, "typeAliasDescriptor.defaultType");
                        SimpleType withAbbreviation = SpecialTypesKt.withAbbreviation(lowerIfFlexible, defaultType);
                        aq dispatchReceiverParameter = constructor.getDispatchReceiverParameter();
                        if (dispatchReceiverParameter != null) {
                            ad adVar3 = adVar2;
                            KotlinType safeSubstitute = a2.safeSubstitute(dispatchReceiverParameter.g(), Variance.INVARIANT);
                            g.a aVar2 = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
                            aqVar = kotlin.reflect.jvm.internal.impl.resolve.c.a(adVar3, safeSubstitute, g.a.a());
                        }
                        adVar2.initialize(aqVar, null, typeAliasDescriptor.getDeclaredTypeParameters(), substitutedValueParameters, withAbbreviation, y.FINAL, typeAliasDescriptor.getVisibility());
                        adVar = adVar2;
                    }
                }
            }
            if (adVar != null) {
                arrayList.add(adVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract List<TypeParameterDescriptor> f();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List list = this.f37530b;
        if (list != null) {
            return list;
        }
        p.a("declaredTypeParametersImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public y getModality() {
        return y.FINAL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public TypeConstructor getTypeConstructor() {
        return this.f37531c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        return this.f37529a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public boolean isInner() {
        return TypeUtils.contains(a(), new b());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h
    public String toString() {
        return p.a("typealias ", (Object) getName().a());
    }
}
