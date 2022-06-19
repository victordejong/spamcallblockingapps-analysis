package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.C19034ay;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19144ac;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19155c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18819h;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/l.class */
public final class C19935l extends AbstractC19155c implements AbstractC19907g {

    /* renamed from: a */
    private final AbstractC19302n f66220a;

    /* renamed from: b */
    private final C18702a.C18776q f66221b;

    /* renamed from: c */
    private final AbstractC18813c f66222c;

    /* renamed from: d */
    private final C18818g f66223d;

    /* renamed from: e */
    private final C18824i f66224e;

    /* renamed from: f */
    private final AbstractC19906f f66225f;

    /* renamed from: g */
    private Collection<? extends AbstractC19144ac> f66226g;

    /* renamed from: h */
    private SimpleType f66227h;

    /* renamed from: i */
    private SimpleType f66228i;

    /* renamed from: j */
    private List<? extends TypeParameterDescriptor> f66229j;

    /* renamed from: k */
    private SimpleType f66230k;

    /* renamed from: l */
    private AbstractC19907g.EnumC19908a f66231l = AbstractC19907g.EnumC19908a.COMPATIBLE;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C19935l(kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n r8, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k r9, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g r10, kotlin.reflect.jvm.internal.impl.p545c.C18966e r11, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s r12, kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18776q r13, kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c r14, kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g r15, kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i r16, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f r17) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "storageManager"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r9
            java.lang.String r1 = "containingDeclaration"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r10
            java.lang.String r1 = "annotations"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r11
            java.lang.String r1 = "name"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r12
            java.lang.String r1 = "visibility"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r13
            java.lang.String r1 = "proto"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r14
            java.lang.String r1 = "nameResolver"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r15
            java.lang.String r1 = "typeTable"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r16
            java.lang.String r1 = "versionRequirementTable"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            kotlin.reflect.jvm.internal.impl.descriptors.at r0 = kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at.f64759a
            r18 = r0
            r0 = r18
            java.lang.String r1 = "NO_SOURCE"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r7
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r18
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r7
            r1 = r8
            r0.f66220a = r1
            r0 = r7
            r1 = r13
            r0.f66221b = r1
            r0 = r7
            r1 = r14
            r0.f66222c = r1
            r0 = r7
            r1 = r15
            r0.f66223d = r1
            r0 = r7
            r1 = r16
            r0.f66224e = r1
            r0 = r7
            r1 = r17
            r0.f66225f = r1
            r0 = r7
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g$a r1 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g.EnumC19908a.COMPATIBLE
            r0.f66231l = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19935l.<init>(kotlin.reflect.jvm.internal.impl.f.n, kotlin.reflect.jvm.internal.impl.descriptors.k, kotlin.reflect.jvm.internal.impl.descriptors.a.g, kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.s, kotlin.reflect.jvm.internal.impl.b.a$q, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.b.b.g, kotlin.reflect.jvm.internal.impl.b.b.i, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax
    /* renamed from: a */
    public final SimpleType mo1284a() {
        SimpleType simpleType = this.f66227h;
        if (simpleType != null) {
            return simpleType;
        }
        C18524p.m3848a("underlyingType");
        throw null;
    }

    /* renamed from: a */
    public final void m1283a(List<? extends TypeParameterDescriptor> declaredTypeParameters, SimpleType underlyingType, SimpleType expandedType, AbstractC19907g.EnumC19908a isExperimentalCoroutineInReleaseEnvironment) {
        C18524p.m3840d(declaredTypeParameters, "declaredTypeParameters");
        C18524p.m3840d(underlyingType, "underlyingType");
        C18524p.m3840d(expandedType, "expandedType");
        C18524p.m3840d(isExperimentalCoroutineInReleaseEnvironment, "isExperimentalCoroutineInReleaseEnvironment");
        m2592a(declaredTypeParameters);
        this.f66227h = underlyingType;
        this.f66228i = expandedType;
        this.f66229j = C19034ay.m2690a(this);
        C19935l c19935l = this;
        AbstractC19070d c = mo1281c();
        AbstractC19834h unsubstitutedMemberScope = c == null ? null : c.getUnsubstitutedMemberScope();
        AbstractC19834h.C19838c c19838c = unsubstitutedMemberScope;
        if (unsubstitutedMemberScope == null) {
            c19838c = AbstractC19834h.C19838c.f66035a;
        }
        SimpleType makeUnsubstitutedType = TypeUtils.makeUnsubstitutedType(c19935l, c19838c, new AbstractC19155c.C19156a());
        C18524p.m3843b(makeUnsubstitutedType, "@OptIn(TypeRefinement::class)\n    protected fun computeDefaultType(): SimpleType =\n        TypeUtils.makeUnsubstitutedType(this, classDescriptor?.unsubstitutedMemberScope ?: MemberScope.Empty) { kotlinTypeRefiner ->\n            kotlinTypeRefiner.refineDescriptor(this)?.defaultType\n        }");
        this.f66230k = makeUnsubstitutedType;
        this.f66226g = m2591e();
        this.f66231l = isExperimentalCoroutineInReleaseEnvironment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final AbstractC18813c ao_() {
        return this.f66222c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final C18818g ap_() {
        return this.f66223d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    public final List<C18819h> aq_() {
        return AbstractC19907g.C19909b.m1333a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax
    /* renamed from: b */
    public final SimpleType mo1282b() {
        SimpleType simpleType = this.f66228i;
        if (simpleType != null) {
            return simpleType;
        }
        C18524p.m3848a("expandedType");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax
    /* renamed from: c */
    public final AbstractC19070d mo1281c() {
        if (!KotlinTypeKt.isError(mo1282b())) {
            AbstractC19129g declarationDescriptor = mo1282b().getConstructor().getDeclarationDescriptor();
            if (!(declarationDescriptor instanceof AbstractC19070d)) {
                return null;
            }
            return (AbstractC19070d) declarationDescriptor;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19155c
    /* renamed from: d */
    public final AbstractC19302n mo1280d() {
        return this.f66220a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19155c
    /* renamed from: f */
    public final List<TypeParameterDescriptor> mo1279f() {
        List list = this.f66229j;
        if (list != null) {
            return list;
        }
        C18524p.m3848a("typeConstructorParameters");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public final SimpleType getDefaultType() {
        SimpleType simpleType = this.f66230k;
        if (simpleType != null) {
            return simpleType;
        }
        C18524p.m3848a("defaultTypeImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: h */
    public final C18824i mo1278h() {
        return this.f66224e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: i */
    public final AbstractC19906f mo1277i() {
        return this.f66225f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ AbstractC19705p mo1276k() {
        return this.f66221b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av
    public final /* synthetic */ AbstractC19130h substitute(TypeSubstitutor substitutor) {
        C19935l c19935l;
        C18524p.m3840d(substitutor, "substitutor");
        if (substitutor.isEmpty()) {
            c19935l = this;
        } else {
            AbstractC19302n abstractC19302n = this.f66220a;
            AbstractC19193k containingDeclaration = getContainingDeclaration();
            C18524p.m3843b(containingDeclaration, "containingDeclaration");
            AbstractC18983g annotations = getAnnotations();
            C18524p.m3843b(annotations, "annotations");
            C18966e name = getName();
            C18524p.m3843b(name, "name");
            C19935l c19935l2 = new C19935l(abstractC19302n, containingDeclaration, annotations, name, getVisibility(), this.f66221b, this.f66222c, this.f66223d, this.f66224e, this.f66225f);
            List<TypeParameterDescriptor> declaredTypeParameters = getDeclaredTypeParameters();
            KotlinType safeSubstitute = substitutor.safeSubstitute(mo1284a(), Variance.INVARIANT);
            C18524p.m3843b(safeSubstitute, "substitutor.safeSubstitute(underlyingType, Variance.INVARIANT)");
            SimpleType asSimpleType = TypeSubstitutionKt.asSimpleType(safeSubstitute);
            KotlinType safeSubstitute2 = substitutor.safeSubstitute(mo1282b(), Variance.INVARIANT);
            C18524p.m3843b(safeSubstitute2, "substitutor.safeSubstitute(expandedType, Variance.INVARIANT)");
            c19935l2.m1283a(declaredTypeParameters, asSimpleType, TypeSubstitutionKt.asSimpleType(safeSubstitute2), this.f66231l);
            c19935l = c19935l2;
        }
        return c19935l;
    }
}
