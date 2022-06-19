package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.C19276f;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19845m;
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
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.p */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/p.class */
public class C19177p extends AbstractC19179q {

    /* renamed from: a */
    static final /* synthetic */ boolean f64951a = true;

    /* renamed from: b */
    private final AbstractC19179q f64952b;

    /* renamed from: c */
    private final TypeSubstitutor f64953c;

    /* renamed from: d */
    private TypeSubstitutor f64954d;

    /* renamed from: e */
    private List<TypeParameterDescriptor> f64955e;

    /* renamed from: f */
    private List<TypeParameterDescriptor> f64956f;

    /* renamed from: g */
    private TypeConstructor f64957g;

    public C19177p(AbstractC19179q abstractC19179q, TypeSubstitutor typeSubstitutor) {
        this.f64952b = abstractC19179q;
        this.f64953c = typeSubstitutor;
    }

    /* renamed from: a */
    private TypeSubstitutor m2566a() {
        if (this.f64954d == null) {
            if (this.f64953c.isEmpty()) {
                this.f64954d = this.f64953c;
            } else {
                List<TypeParameterDescriptor> parameters = this.f64952b.getTypeConstructor().getParameters();
                this.f64955e = new ArrayList(parameters.size());
                this.f64954d = DescriptorSubstitutor.substituteTypeParameters(parameters, this.f64953c.getSubstitution(), this, this.f64955e);
                this.f64956f = C18282n.m4144a((Iterable) this.f64955e, (Function1) new Function1<TypeParameterDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.p.1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* synthetic */ Boolean invoke(TypeParameterDescriptor typeParameterDescriptor) {
                        return Boolean.valueOf(!typeParameterDescriptor.isCapturedFromOuterDeclaration());
                    }
                });
            }
        }
        return this.f64954d;
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void m2565a(int r4) {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.C19177p.m2565a(int):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
        return abstractC19195m.mo2378a((AbstractC19070d) this, (C19177p) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public AbstractC18983g getAnnotations() {
        AbstractC18983g annotations = this.f64952b.getAnnotations();
        if (annotations == null) {
            m2565a(18);
        }
        return annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19070d getCompanionObjectDescriptor() {
        return this.f64952b.getCompanionObjectDescriptor();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public Collection<AbstractC19065c> getConstructors() {
        Collection<AbstractC19065c> constructors = this.f64952b.getConstructors();
        ArrayList arrayList = new ArrayList(constructors.size());
        for (AbstractC19065c abstractC19065c : constructors) {
            arrayList.add(((AbstractC19065c) abstractC19065c.newCopyBuilder().setOriginal(abstractC19065c.mo2590a()).setModality(abstractC19065c.getModality()).setVisibility(abstractC19065c.getVisibility()).setKind(abstractC19065c.getKind()).setCopyOverrides(false).build()).mo2584a(m2566a()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19194l, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public AbstractC19193k getContainingDeclaration() {
        AbstractC19193k containingDeclaration = this.f64952b.getContainingDeclaration();
        if (containingDeclaration == null) {
            m2565a(21);
        }
        return containingDeclaration;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        m2566a();
        List<TypeParameterDescriptor> list = this.f64956f;
        if (list == null) {
            m2565a(29);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public SimpleType getDefaultType() {
        SimpleType simpleTypeWithNonTrivialMemberScope = KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(getAnnotations(), getTypeConstructor(), TypeUtils.getDefaultTypeProjections(getTypeConstructor().getParameters()), false, getUnsubstitutedMemberScope());
        if (simpleTypeWithNonTrivialMemberScope == null) {
            m2565a(16);
        }
        return simpleTypeWithNonTrivialMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public EnumC19127e getKind() {
        EnumC19127e kind = this.f64952b.getKind();
        if (kind == null) {
            m2565a(24);
        }
        return kind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getMemberScope(TypeSubstitution typeSubstitution) {
        if (typeSubstitution == null) {
            m2565a(10);
        }
        AbstractC19834h memberScope = getMemberScope(typeSubstitution, C19756a.m1538a(C19807d.m1460f(this)));
        if (memberScope == null) {
            m2565a(11);
        }
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public AbstractC19834h getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
        if (typeSubstitution == null) {
            m2565a(5);
        }
        if (kotlinTypeRefiner == null) {
            m2565a(6);
        }
        AbstractC19834h memberScope = this.f64952b.getMemberScope(typeSubstitution, kotlinTypeRefiner);
        if (this.f64953c.isEmpty()) {
            if (memberScope == null) {
                m2565a(7);
            }
            return memberScope;
        }
        return new C19845m(memberScope, m2566a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public EnumC19222y getModality() {
        EnumC19222y modality = this.f64952b.getModality();
        if (modality == null) {
            m2565a(25);
        }
        return modality;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19000ac
    public C18966e getName() {
        C18966e name = this.f64952b.getName();
        if (name == null) {
            m2565a(19);
        }
        return name;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public AbstractC19070d getOriginal() {
        AbstractC19070d original = this.f64952b.getOriginal();
        if (original == null) {
            m2565a(20);
        }
        return original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public Collection<AbstractC19070d> getSealedSubclasses() {
        Collection<AbstractC19070d> sealedSubclasses = this.f64952b.getSealedSubclasses();
        if (sealedSubclasses == null) {
            m2565a(30);
        }
        return sealedSubclasses;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n
    public AbstractC19026at getSource() {
        AbstractC19026at abstractC19026at = AbstractC19026at.f64759a;
        if (abstractC19026at == null) {
            m2565a(28);
        }
        return abstractC19026at;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getStaticScope() {
        AbstractC19834h staticScope = this.f64952b.getStaticScope();
        if (staticScope == null) {
            m2565a(15);
        }
        return staticScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19020aq getThisAsReceiverParameter() {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.f64952b.getTypeConstructor();
        if (this.f64953c.isEmpty()) {
            if (typeConstructor == null) {
                m2565a(0);
            }
            return typeConstructor;
        }
        if (this.f64957g == null) {
            TypeSubstitutor m2566a = m2566a();
            Collection<KotlinType> mo53752getSupertypes = typeConstructor.mo53752getSupertypes();
            ArrayList arrayList = new ArrayList(mo53752getSupertypes.size());
            for (KotlinType kotlinType : mo53752getSupertypes) {
                arrayList.add(m2566a.substitute(kotlinType, Variance.INVARIANT));
            }
            this.f64957g = new ClassTypeConstructorImpl(this, this.f64955e, arrayList, C19276f.f65120a);
        }
        TypeConstructor typeConstructor2 = this.f64957g;
        if (typeConstructor2 == null) {
            m2565a(1);
        }
        return typeConstructor2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getUnsubstitutedInnerClassesScope() {
        AbstractC19834h unsubstitutedInnerClassesScope = this.f64952b.getUnsubstitutedInnerClassesScope();
        if (unsubstitutedInnerClassesScope == null) {
            m2565a(27);
        }
        return unsubstitutedInnerClassesScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getUnsubstitutedMemberScope() {
        AbstractC19834h unsubstitutedMemberScope = getUnsubstitutedMemberScope(C19756a.m1538a(C19807d.m1460f(this.f64952b)));
        if (unsubstitutedMemberScope == null) {
            m2565a(12);
        }
        return unsubstitutedMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            m2565a(13);
        }
        AbstractC19834h unsubstitutedMemberScope = this.f64952b.getUnsubstitutedMemberScope(kotlinTypeRefiner);
        if (this.f64953c.isEmpty()) {
            if (unsubstitutedMemberScope == null) {
                m2565a(14);
            }
            return unsubstitutedMemberScope;
        }
        return new C19845m(unsubstitutedMemberScope, m2566a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19065c getUnsubstitutedPrimaryConstructor() {
        return this.f64952b.getUnsubstitutedPrimaryConstructor();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s visibility = this.f64952b.getVisibility();
        if (visibility == null) {
            m2565a(26);
        }
        return visibility;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isActual() {
        return this.f64952b.isActual();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isCompanionObject() {
        return this.f64952b.isCompanionObject();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isData() {
        return this.f64952b.isData();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExpect() {
        return this.f64952b.isExpect();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExternal() {
        return this.f64952b.isExternal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isFun() {
        return this.f64952b.isFun();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isInline() {
        return this.f64952b.isInline();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public boolean isInner() {
        return this.f64952b.isInner();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isValue() {
        return this.f64952b.isValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av
    public /* synthetic */ AbstractC19130h substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            m2565a(22);
        }
        return typeSubstitutor.isEmpty() ? this : new C19177p(this, TypeSubstitutor.createChainedSubstitutor(typeSubstitutor.getSubstitution(), m2566a().getSubstitution()));
    }
}
