package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.f;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/p.class */
public class p extends q {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f37563a = true;

    /* renamed from: b  reason: collision with root package name */
    private final q f37564b;

    /* renamed from: c  reason: collision with root package name */
    private final TypeSubstitutor f37565c;

    /* renamed from: d  reason: collision with root package name */
    private TypeSubstitutor f37566d;
    private List<TypeParameterDescriptor> e;
    private List<TypeParameterDescriptor> f;
    private TypeConstructor g;

    public p(q qVar, TypeSubstitutor typeSubstitutor) {
        this.f37564b = qVar;
        this.f37565c = typeSubstitutor;
    }

    private TypeSubstitutor a() {
        if (this.f37566d == null) {
            if (this.f37565c.isEmpty()) {
                this.f37566d = this.f37565c;
            } else {
                List<TypeParameterDescriptor> parameters = this.f37564b.getTypeConstructor().getParameters();
                this.e = new ArrayList(parameters.size());
                this.f37566d = DescriptorSubstitutor.substituteTypeParameters(parameters, this.f37565c.getSubstitution(), this, this.e);
                this.f = n.a((Iterable) this.e, (Function1) new Function1<TypeParameterDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.p.1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* synthetic */ Boolean invoke(TypeParameterDescriptor typeParameterDescriptor) {
                        return Boolean.valueOf(!typeParameterDescriptor.isCapturedFromOuterDeclaration());
                    }
                });
            }
        }
        return this.f37566d;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void a(int r4) {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.p.a(int):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((d) this, (p) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public g getAnnotations() {
        g annotations = this.f37564b.getAnnotations();
        if (annotations == null) {
            a(18);
        }
        return annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public d getCompanionObjectDescriptor() {
        return this.f37564b.getCompanionObjectDescriptor();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<c> getConstructors() {
        Collection<c> constructors = this.f37564b.getConstructors();
        ArrayList arrayList = new ArrayList(constructors.size());
        for (c cVar : constructors) {
            arrayList.add(((c) cVar.newCopyBuilder().setOriginal(cVar.a()).setModality(cVar.getModality()).setVisibility(cVar.getVisibility()).setKind(cVar.getKind()).setCopyOverrides(false).build()).a(a()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public k getContainingDeclaration() {
        k containingDeclaration = this.f37564b.getContainingDeclaration();
        if (containingDeclaration == null) {
            a(21);
        }
        return containingDeclaration;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        a();
        List<TypeParameterDescriptor> list = this.f;
        if (list == null) {
            a(29);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public SimpleType getDefaultType() {
        SimpleType simpleTypeWithNonTrivialMemberScope = KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(getAnnotations(), getTypeConstructor(), TypeUtils.getDefaultTypeProjections(getTypeConstructor().getParameters()), false, getUnsubstitutedMemberScope());
        if (simpleTypeWithNonTrivialMemberScope == null) {
            a(16);
        }
        return simpleTypeWithNonTrivialMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public e getKind() {
        e kind = this.f37564b.getKind();
        if (kind == null) {
            a(24);
        }
        return kind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getMemberScope(TypeSubstitution typeSubstitution) {
        if (typeSubstitution == null) {
            a(10);
        }
        h memberScope = getMemberScope(typeSubstitution, a.a(kotlin.reflect.jvm.internal.impl.resolve.d.f(this)));
        if (memberScope == null) {
            a(11);
        }
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public h getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
        if (typeSubstitution == null) {
            a(5);
        }
        if (kotlinTypeRefiner == null) {
            a(6);
        }
        h memberScope = this.f37564b.getMemberScope(typeSubstitution, kotlinTypeRefiner);
        if (!this.f37565c.isEmpty()) {
            return new kotlin.reflect.jvm.internal.impl.resolve.e.m(memberScope, a());
        }
        if (memberScope == null) {
            a(7);
        }
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.x
    public y getModality() {
        y modality = this.f37564b.getModality();
        if (modality == null) {
            a(25);
        }
        return modality;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ac
    public kotlin.reflect.jvm.internal.impl.c.e getName() {
        kotlin.reflect.jvm.internal.impl.c.e name = this.f37564b.getName();
        if (name == null) {
            a(19);
        }
        return name;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.k
    public d getOriginal() {
        d original = this.f37564b.getOriginal();
        if (original == null) {
            a(20);
        }
        return original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<d> getSealedSubclasses() {
        Collection<d> sealedSubclasses = this.f37564b.getSealedSubclasses();
        if (sealedSubclasses == null) {
            a(30);
        }
        return sealedSubclasses;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public at getSource() {
        at atVar = at.f37401a;
        if (atVar == null) {
            a(28);
        }
        return atVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getStaticScope() {
        h staticScope = this.f37564b.getStaticScope();
        if (staticScope == null) {
            a(15);
        }
        return staticScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public aq getThisAsReceiverParameter() {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.f37564b.getTypeConstructor();
        if (this.f37565c.isEmpty()) {
            if (typeConstructor == null) {
                a(0);
            }
            return typeConstructor;
        }
        if (this.g == null) {
            TypeSubstitutor a2 = a();
            Collection<KotlinType> supertypes = typeConstructor.mo7371getSupertypes();
            ArrayList arrayList = new ArrayList(supertypes.size());
            for (KotlinType kotlinType : supertypes) {
                arrayList.add(a2.substitute(kotlinType, Variance.INVARIANT));
            }
            this.g = new ClassTypeConstructorImpl(this, this.e, arrayList, f.f37640a);
        }
        TypeConstructor typeConstructor2 = this.g;
        if (typeConstructor2 == null) {
            a(1);
        }
        return typeConstructor2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getUnsubstitutedInnerClassesScope() {
        h unsubstitutedInnerClassesScope = this.f37564b.getUnsubstitutedInnerClassesScope();
        if (unsubstitutedInnerClassesScope == null) {
            a(27);
        }
        return unsubstitutedInnerClassesScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getUnsubstitutedMemberScope() {
        h unsubstitutedMemberScope = getUnsubstitutedMemberScope(a.a(kotlin.reflect.jvm.internal.impl.resolve.d.f(this.f37564b)));
        if (unsubstitutedMemberScope == null) {
            a(12);
        }
        return unsubstitutedMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            a(13);
        }
        h unsubstitutedMemberScope = this.f37564b.getUnsubstitutedMemberScope(kotlinTypeRefiner);
        if (!this.f37565c.isEmpty()) {
            return new kotlin.reflect.jvm.internal.impl.resolve.e.m(unsubstitutedMemberScope, a());
        }
        if (unsubstitutedMemberScope == null) {
            a(14);
        }
        return unsubstitutedMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public c getUnsubstitutedPrimaryConstructor() {
        return this.f37564b.getUnsubstitutedPrimaryConstructor();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s visibility = this.f37564b.getVisibility();
        if (visibility == null) {
            a(26);
        }
        return visibility;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isActual() {
        return this.f37564b.isActual();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isCompanionObject() {
        return this.f37564b.isCompanionObject();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isData() {
        return this.f37564b.isData();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExpect() {
        return this.f37564b.isExpect();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExternal() {
        return this.f37564b.isExternal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isFun() {
        return this.f37564b.isFun();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return this.f37564b.isInline();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public boolean isInner() {
        return this.f37564b.isInner();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isValue() {
        return this.f37564b.isValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.av
    public /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.h substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            a(22);
        }
        return typeSubstitutor.isEmpty() ? this : new p(this, TypeSubstitutor.createChainedSubstitutor(typeSubstitutor.getSubstitution(), a().getSubstitution()));
    }
}
