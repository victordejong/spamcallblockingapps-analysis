package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ay;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ac;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.c;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/l.class */
public final class l extends c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final n f38420a;

    /* renamed from: b  reason: collision with root package name */
    private final a.q f38421b;

    /* renamed from: c  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.b.b.c f38422c;

    /* renamed from: d  reason: collision with root package name */
    private final g f38423d;
    private final i e;
    private final f f;
    private Collection<? extends ac> g;
    private SimpleType h;
    private SimpleType i;
    private List<? extends TypeParameterDescriptor> j;
    private SimpleType k;
    private g.a l = g.a.COMPATIBLE;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l(kotlin.reflect.jvm.internal.impl.f.n r8, kotlin.reflect.jvm.internal.impl.descriptors.k r9, kotlin.reflect.jvm.internal.impl.descriptors.a.g r10, kotlin.reflect.jvm.internal.impl.c.e r11, kotlin.reflect.jvm.internal.impl.descriptors.s r12, kotlin.reflect.jvm.internal.impl.b.a.q r13, kotlin.reflect.jvm.internal.impl.b.b.c r14, kotlin.reflect.jvm.internal.impl.b.b.g r15, kotlin.reflect.jvm.internal.impl.b.b.i r16, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f r17) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "storageManager"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r9
            java.lang.String r1 = "containingDeclaration"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r10
            java.lang.String r1 = "annotations"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r11
            java.lang.String r1 = "name"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r12
            java.lang.String r1 = "visibility"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r13
            java.lang.String r1 = "proto"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r14
            java.lang.String r1 = "nameResolver"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r15
            java.lang.String r1 = "typeTable"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r16
            java.lang.String r1 = "versionRequirementTable"
            kotlin.jvm.internal.p.d(r0, r1)
            kotlin.reflect.jvm.internal.impl.descriptors.at r0 = kotlin.reflect.jvm.internal.impl.descriptors.at.f37401a
            r18 = r0
            r0 = r18
            java.lang.String r1 = "NO_SOURCE"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r7
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r18
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r7
            r1 = r8
            r0.f38420a = r1
            r0 = r7
            r1 = r13
            r0.f38421b = r1
            r0 = r7
            r1 = r14
            r0.f38422c = r1
            r0 = r7
            r1 = r15
            r0.f38423d = r1
            r0 = r7
            r1 = r16
            r0.e = r1
            r0 = r7
            r1 = r17
            r0.f = r1
            r0 = r7
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g$a r1 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g.a.COMPATIBLE
            r0.l = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.l.<init>(kotlin.reflect.jvm.internal.impl.f.n, kotlin.reflect.jvm.internal.impl.descriptors.k, kotlin.reflect.jvm.internal.impl.descriptors.a.g, kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.s, kotlin.reflect.jvm.internal.impl.b.a$q, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.b.b.g, kotlin.reflect.jvm.internal.impl.b.b.i, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ax
    public final SimpleType a() {
        SimpleType simpleType = this.h;
        if (simpleType != null) {
            return simpleType;
        }
        p.a("underlyingType");
        throw null;
    }

    public final void a(List<? extends TypeParameterDescriptor> declaredTypeParameters, SimpleType underlyingType, SimpleType expandedType, g.a isExperimentalCoroutineInReleaseEnvironment) {
        p.d(declaredTypeParameters, "declaredTypeParameters");
        p.d(underlyingType, "underlyingType");
        p.d(expandedType, "expandedType");
        p.d(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        a(declaredTypeParameters);
        this.h = underlyingType;
        this.i = expandedType;
        this.j = ay.a(this);
        l lVar = this;
        d c2 = c();
        h unsubstitutedMemberScope = c2 == null ? null : c2.getUnsubstitutedMemberScope();
        h.c cVar = unsubstitutedMemberScope;
        if (unsubstitutedMemberScope == null) {
            cVar = h.c.f38297a;
        }
        SimpleType makeUnsubstitutedType = TypeUtils.makeUnsubstitutedType(lVar, cVar, new c.a());
        p.b(makeUnsubstitutedType, "@OptIn(TypeRefinement::class)\n    protected fun computeDefaultType(): SimpleType =\n        TypeUtils.makeUnsubstitutedType(this, classDescriptor?.unsubstitutedMemberScope ?: MemberScope.Empty) { kotlinTypeRefiner ->\n            kotlinTypeRefiner.refineDescriptor(this)?.defaultType\n        }");
        this.k = makeUnsubstitutedType;
        this.g = e();
        this.l = isExperimentalCoroutineInReleaseEnvironment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final kotlin.reflect.jvm.internal.impl.b.b.c ao_() {
        return this.f38422c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final kotlin.reflect.jvm.internal.impl.b.b.g ap_() {
        return this.f38423d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final List<kotlin.reflect.jvm.internal.impl.b.b.h> aq_() {
        return g.b.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ax
    public final SimpleType b() {
        SimpleType simpleType = this.i;
        if (simpleType != null) {
            return simpleType;
        }
        p.a("expandedType");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ax
    public final d c() {
        if (KotlinTypeKt.isError(b())) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = b().getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof d) {
            return (d) declarationDescriptor;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.c
    public final n d() {
        return this.f38420a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.c
    public final List<TypeParameterDescriptor> f() {
        List list = this.j;
        if (list != null) {
            return list;
        }
        p.a("typeConstructorParameters");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public final SimpleType getDefaultType() {
        SimpleType simpleType = this.k;
        if (simpleType != null) {
            return simpleType;
        }
        p.a("defaultTypeImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final i h() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final f i() {
        return this.f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p k() {
        return this.f38421b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.av
    public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.h substitute(TypeSubstitutor substitutor) {
        l lVar;
        p.d(substitutor, "substitutor");
        if (substitutor.isEmpty()) {
            lVar = this;
        } else {
            n nVar = this.f38420a;
            k containingDeclaration = getContainingDeclaration();
            p.b(containingDeclaration, "containingDeclaration");
            kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations = getAnnotations();
            p.b(annotations, "annotations");
            e name = getName();
            p.b(name, "name");
            l lVar2 = new l(nVar, containingDeclaration, annotations, name, getVisibility(), this.f38421b, this.f38422c, this.f38423d, this.e, this.f);
            List<TypeParameterDescriptor> declaredTypeParameters = getDeclaredTypeParameters();
            KotlinType safeSubstitute = substitutor.safeSubstitute(a(), Variance.INVARIANT);
            p.b(safeSubstitute, "substitutor.safeSubstitute(underlyingType, Variance.INVARIANT)");
            SimpleType asSimpleType = TypeSubstitutionKt.asSimpleType(safeSubstitute);
            KotlinType safeSubstitute2 = substitutor.safeSubstitute(b(), Variance.INVARIANT);
            p.b(safeSubstitute2, "substitutor.safeSubstitute(expandedType, Variance.INVARIANT)");
            lVar2.a(declaredTypeParameters, asSimpleType, TypeSubstitutionKt.asSimpleType(safeSubstitute2), this.l);
            lVar = lVar2;
        }
        return lVar;
    }
}
