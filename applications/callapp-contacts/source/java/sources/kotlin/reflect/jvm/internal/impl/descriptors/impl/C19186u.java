package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
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
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.u */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/u.class */
public class C19186u extends AbstractC19159e {

    /* renamed from: a */
    static final /* synthetic */ boolean f64975a = true;

    /* renamed from: b */
    private final EnumC19127e f64976b;

    /* renamed from: c */
    private final boolean f64977c;

    /* renamed from: d */
    private EnumC19222y f64978d;

    /* renamed from: e */
    private AbstractC19213s f64979e;

    /* renamed from: f */
    private TypeConstructor f64980f;

    /* renamed from: g */
    private List<TypeParameterDescriptor> f64981g;

    /* renamed from: h */
    private final Collection<KotlinType> f64982h;

    /* renamed from: i */
    private final AbstractC19302n f64983i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19186u(AbstractC19193k abstractC19193k, EnumC19127e enumC19127e, boolean z, boolean z2, C18966e c18966e, AbstractC19026at abstractC19026at, AbstractC19302n abstractC19302n) {
        super(abstractC19302n, abstractC19193k, c18966e, abstractC19026at, z2);
        if (abstractC19193k == null) {
            m2548a(0);
        }
        if (enumC19127e == null) {
            m2548a(1);
        }
        if (c18966e == null) {
            m2548a(2);
        }
        if (abstractC19026at == null) {
            m2548a(3);
        }
        if (abstractC19302n == null) {
            m2548a(4);
        }
        this.f64982h = new ArrayList();
        this.f64983i = abstractC19302n;
        if (f64975a || enumC19127e != EnumC19127e.OBJECT) {
            this.f64976b = enumC19127e;
            this.f64977c = z;
            return;
        }
        throw new AssertionError("Fix isCompanionObject()");
    }

    /* renamed from: a */
    private static /* synthetic */ void m2548a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                i2 = 2;
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "kind";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = Payload.SOURCE;
                break;
            case 4:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 9:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "supertype";
                break;
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 16:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 5:
                objArr[1] = "getAnnotations";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 7:
                objArr[1] = "getModality";
                break;
            case 8:
                objArr[1] = "getKind";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getTypeConstructor";
                break;
            case 13:
                objArr[1] = "getConstructors";
                break;
            case 15:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 17:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 18:
                objArr[1] = "getStaticScope";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 12:
                objArr[2] = "addSupertype";
                break;
            case 14:
                objArr[2] = "setTypeParameterDescriptors";
                break;
            case 16:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                illegalArgumentException = new IllegalStateException(format);
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* renamed from: b */
    private static Set<AbstractC19065c> m2544b() {
        Set<AbstractC19065c> emptySet = Collections.emptySet();
        if (emptySet == null) {
            m2548a(13);
        }
        return emptySet;
    }

    /* renamed from: a */
    public final void m2549a() {
        if (f64975a || this.f64980f == null) {
            this.f64980f = new ClassTypeConstructorImpl(this, this.f64981g, this.f64982h, this.f64983i);
            Iterator<AbstractC19065c> it2 = m2544b().iterator();
            while (it2.hasNext()) {
                ((C19158d) it2.next()).setReturnType(getDefaultType());
            }
            return;
        }
        throw new AssertionError(this.f64980f);
    }

    /* renamed from: a */
    public final void m2547a(List<TypeParameterDescriptor> list) {
        if (list == null) {
            m2548a(14);
        }
        if (this.f64981g == null) {
            this.f64981g = new ArrayList(list);
            return;
        }
        throw new IllegalStateException("Type parameters are already set for " + getName());
    }

    /* renamed from: a */
    public final void m2546a(AbstractC19213s abstractC19213s) {
        if (abstractC19213s == null) {
            m2548a(9);
        }
        this.f64979e = abstractC19213s;
    }

    /* renamed from: a */
    public final void m2545a(EnumC19222y enumC19222y) {
        if (enumC19222y == null) {
            m2548a(6);
        }
        if (f64975a || enumC19222y != EnumC19222y.SEALED) {
            this.f64978d = enumC19222y;
            return;
        }
        throw new AssertionError("Implement getSealedSubclasses() for this class: " + getClass());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public AbstractC18983g getAnnotations() {
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
        if (m2705a == null) {
            m2548a(5);
        }
        return m2705a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19070d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public /* synthetic */ Collection getConstructors() {
        return m2544b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List<TypeParameterDescriptor> list = this.f64981g;
        if (list == null) {
            m2548a(15);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public EnumC19127e getKind() {
        EnumC19127e enumC19127e = this.f64976b;
        if (enumC19127e == null) {
            m2548a(8);
        }
        return enumC19127e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public EnumC19222y getModality() {
        EnumC19222y enumC19222y = this.f64978d;
        if (enumC19222y == null) {
            m2548a(7);
        }
        return enumC19222y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public Collection<AbstractC19070d> getSealedSubclasses() {
        List emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2548a(19);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getStaticScope() {
        AbstractC19834h.C19838c c19838c = AbstractC19834h.C19838c.f66035a;
        if (c19838c == null) {
            m2548a(18);
        }
        return c19838c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.f64980f;
        if (typeConstructor == null) {
            m2548a(11);
        }
        return typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            m2548a(16);
        }
        AbstractC19834h.C19838c c19838c = AbstractC19834h.C19838c.f66035a;
        if (c19838c == null) {
            m2548a(17);
        }
        return c19838c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19065c getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s abstractC19213s = this.f64979e;
        if (abstractC19213s == null) {
            m2548a(10);
        }
        return abstractC19213s;
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
        return this.f64977c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isValue() {
        return false;
    }

    public String toString() {
        return AbstractC19162h.toString(this);
    }
}
