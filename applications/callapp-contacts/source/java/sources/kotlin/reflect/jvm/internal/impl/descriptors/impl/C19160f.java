package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/f.class */
public class C19160f extends AbstractC19159e {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Set<AbstractC19065c> constructors;
    private final EnumC19127e kind;
    private final EnumC19222y modality;
    private AbstractC19065c primaryConstructor;
    private final TypeConstructor typeConstructor;
    private AbstractC19834h unsubstitutedMemberScope;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                i2 = 2;
                break;
            case 12:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "supertypes";
                break;
            case 5:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "unsubstitutedMemberScope";
                break;
            case 8:
                objArr[0] = "constructors";
                break;
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 12:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 9:
                objArr[1] = "getAnnotations";
                break;
            case 10:
                objArr[1] = "getTypeConstructor";
                break;
            case 11:
                objArr[1] = "getConstructors";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 13:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 14:
                objArr[1] = "getStaticScope";
                break;
            case 15:
                objArr[1] = "getKind";
                break;
            case 16:
                objArr[1] = "getModality";
                break;
            case 17:
                objArr[1] = "getVisibility";
                break;
            case 18:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i) {
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                break;
            case 12:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                illegalArgumentException = new IllegalStateException(format);
                break;
            case 12:
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19160f(AbstractC19193k abstractC19193k, C18966e c18966e, EnumC19222y enumC19222y, EnumC19127e enumC19127e, Collection<KotlinType> collection, AbstractC19026at abstractC19026at, boolean z, AbstractC19302n abstractC19302n) {
        super(abstractC19302n, abstractC19193k, c18966e, abstractC19026at, z);
        if (abstractC19193k == null) {
            $$$reportNull$$$0(0);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(1);
        }
        if (enumC19222y == null) {
            $$$reportNull$$$0(2);
        }
        if (enumC19127e == null) {
            $$$reportNull$$$0(3);
        }
        if (collection == null) {
            $$$reportNull$$$0(4);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(5);
        }
        if (abstractC19302n == null) {
            $$$reportNull$$$0(6);
        }
        this.modality = enumC19222y;
        this.kind = enumC19127e;
        this.typeConstructor = new ClassTypeConstructorImpl(this, Collections.emptyList(), collection, abstractC19302n);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public AbstractC18983g getAnnotations() {
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
        if (m2705a == null) {
            $$$reportNull$$$0(9);
        }
        return m2705a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19070d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public Collection<AbstractC19065c> getConstructors() {
        Set<AbstractC19065c> set = this.constructors;
        if (set == null) {
            $$$reportNull$$$0(11);
        }
        return set;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            $$$reportNull$$$0(18);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public EnumC19127e getKind() {
        EnumC19127e enumC19127e = this.kind;
        if (enumC19127e == null) {
            $$$reportNull$$$0(15);
        }
        return enumC19127e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public EnumC19222y getModality() {
        EnumC19222y enumC19222y = this.modality;
        if (enumC19222y == null) {
            $$$reportNull$$$0(16);
        }
        return enumC19222y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public Collection<AbstractC19070d> getSealedSubclasses() {
        List emptyList = Collections.emptyList();
        if (emptyList == null) {
            $$$reportNull$$$0(19);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getStaticScope() {
        AbstractC19834h.C19838c c19838c = AbstractC19834h.C19838c.f66035a;
        if (c19838c == null) {
            $$$reportNull$$$0(14);
        }
        return c19838c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.typeConstructor;
        if (typeConstructor == null) {
            $$$reportNull$$$0(10);
        }
        return typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            $$$reportNull$$$0(12);
        }
        AbstractC19834h abstractC19834h = this.unsubstitutedMemberScope;
        if (abstractC19834h == null) {
            $$$reportNull$$$0(13);
        }
        return abstractC19834h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19065c getUnsubstitutedPrimaryConstructor() {
        return this.primaryConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s abstractC19213s = C19200r.f65006e;
        if (abstractC19213s == null) {
            $$$reportNull$$$0(17);
        }
        return abstractC19213s;
    }

    public final void initialize(AbstractC19834h abstractC19834h, Set<AbstractC19065c> set, AbstractC19065c abstractC19065c) {
        if (abstractC19834h == null) {
            $$$reportNull$$$0(7);
        }
        if (set == null) {
            $$$reportNull$$$0(8);
        }
        this.unsubstitutedMemberScope = abstractC19834h;
        this.constructors = set;
        this.primaryConstructor = abstractC19065c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public boolean isInner() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isValue() {
        return false;
    }

    public String toString() {
        return "class " + getName();
    }
}
