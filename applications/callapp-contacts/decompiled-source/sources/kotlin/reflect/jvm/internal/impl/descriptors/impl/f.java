package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/f.class */
public class f extends e {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Set<c> constructors;
    private final e kind;
    private final y modality;
    private c primaryConstructor;
    private final TypeConstructor typeConstructor;
    private h unsubstitutedMemberScope;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        Throwable th;
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
                th = new IllegalStateException(format);
                break;
            case 12:
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(k kVar, kotlin.reflect.jvm.internal.impl.c.e eVar, y yVar, e eVar2, Collection<KotlinType> collection, at atVar, boolean z, n nVar) {
        super(nVar, kVar, eVar, atVar, z);
        if (kVar == null) {
            $$$reportNull$$$0(0);
        }
        if (eVar == null) {
            $$$reportNull$$$0(1);
        }
        if (yVar == null) {
            $$$reportNull$$$0(2);
        }
        if (eVar2 == null) {
            $$$reportNull$$$0(3);
        }
        if (collection == null) {
            $$$reportNull$$$0(4);
        }
        if (atVar == null) {
            $$$reportNull$$$0(5);
        }
        if (nVar == null) {
            $$$reportNull$$$0(6);
        }
        this.modality = yVar;
        this.kind = eVar2;
        this.typeConstructor = new ClassTypeConstructorImpl(this, Collections.emptyList(), collection, nVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public g getAnnotations() {
        g.a aVar = g.f37361a;
        g a2 = g.a.a();
        if (a2 == null) {
            $$$reportNull$$$0(9);
        }
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<c> getConstructors() {
        Set<c> set = this.constructors;
        if (set == null) {
            $$$reportNull$$$0(11);
        }
        return set;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            $$$reportNull$$$0(18);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public e getKind() {
        e eVar = this.kind;
        if (eVar == null) {
            $$$reportNull$$$0(15);
        }
        return eVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.x
    public y getModality() {
        y yVar = this.modality;
        if (yVar == null) {
            $$$reportNull$$$0(16);
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<d> getSealedSubclasses() {
        List emptyList = Collections.emptyList();
        if (emptyList == null) {
            $$$reportNull$$$0(19);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getStaticScope() {
        h.c cVar = h.c.f38297a;
        if (cVar == null) {
            $$$reportNull$$$0(14);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.typeConstructor;
        if (typeConstructor == null) {
            $$$reportNull$$$0(10);
        }
        return typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            $$$reportNull$$$0(12);
        }
        h hVar = this.unsubstitutedMemberScope;
        if (hVar == null) {
            $$$reportNull$$$0(13);
        }
        return hVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public c getUnsubstitutedPrimaryConstructor() {
        return this.primaryConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s sVar = r.e;
        if (sVar == null) {
            $$$reportNull$$$0(17);
        }
        return sVar;
    }

    public final void initialize(h hVar, Set<c> set, c cVar) {
        if (hVar == null) {
            $$$reportNull$$$0(7);
        }
        if (set == null) {
            $$$reportNull$$$0(8);
        }
        this.unsubstitutedMemberScope = hVar;
        this.constructors = set;
        this.primaryConstructor = cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public boolean isInner() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isValue() {
        return false;
    }

    public String toString() {
        return "class " + getName();
    }
}
