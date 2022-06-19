package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19016am;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/w.class */
public abstract class AbstractC19188w extends AbstractC19163i implements AbstractC19016am {

    /* renamed from: d */
    static final /* synthetic */ boolean f64985d = true;

    /* renamed from: a */
    public boolean f64986a;

    /* renamed from: b */
    public AbstractC19213s f64987b;

    /* renamed from: c */
    public AbstractC19219w f64988c;

    /* renamed from: e */
    private final boolean f64989e;

    /* renamed from: f */
    private final EnumC19222y f64990f;

    /* renamed from: g */
    private final AbstractC19017an f64991g;

    /* renamed from: h */
    private final boolean f64992h;

    /* renamed from: i */
    private final AbstractC19039b.EnumC19040a f64993i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19188w(EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g, C18966e c18966e, boolean z, boolean z2, boolean z3, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at) {
        super(abstractC19017an.getContainingDeclaration(), abstractC18983g, c18966e, abstractC19026at);
        if (enumC19222y == null) {
            m2540a(0);
        }
        if (abstractC19213s == null) {
            m2540a(1);
        }
        if (abstractC19017an == null) {
            m2540a(2);
        }
        if (abstractC18983g == null) {
            m2540a(3);
        }
        if (c18966e == null) {
            m2540a(4);
        }
        if (abstractC19026at == null) {
            m2540a(5);
        }
        this.f64988c = null;
        this.f64990f = enumC19222y;
        this.f64987b = abstractC19213s;
        this.f64991g = abstractC19017an;
        this.f64986a = z;
        this.f64989e = z2;
        this.f64992h = z3;
        this.f64993i = enumC19040a;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2540a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 7:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            case 7:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "visibility";
                break;
            case 2:
                objArr[0] = "correspondingProperty";
                break;
            case 3:
                objArr[0] = "annotations";
                break;
            case 4:
                objArr[0] = "name";
                break;
            case 5:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 7:
                objArr[0] = "substitutor";
                break;
            case 14:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "modality";
                break;
        }
        switch (i) {
            case 6:
                objArr[1] = "getKind";
                break;
            case 7:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getModality";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getCorrespondingVariable";
                break;
            case 12:
                objArr[1] = "getCorrespondingProperty";
                break;
            case 13:
                objArr[1] = "getOverriddenDescriptors";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 7:
                objArr[2] = "substitute";
                break;
            case 14:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                illegalArgumentException = new IllegalStateException(format);
                break;
            case 7:
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* renamed from: a */
    public final Collection<AbstractC19016am> m2539a(boolean z) {
        ArrayList arrayList = new ArrayList(0);
        for (AbstractC19017an abstractC19017an : mo2538b().getOverriddenDescriptors()) {
            AbstractC19018ao mo2635a = z ? abstractC19017an.mo2635a() : abstractC19017an.mo2623b();
            if (mo2635a != null) {
                arrayList.add(mo2635a);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19016am
    /* renamed from: a */
    public final boolean mo2541a() {
        return this.f64986a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19016am
    /* renamed from: b */
    public final AbstractC19017an mo2538b() {
        AbstractC19017an abstractC19017an = this.f64991g;
        if (abstractC19017an == null) {
            m2540a(12);
        }
        return abstractC19017an;
    }

    /* renamed from: c */
    public abstract AbstractC19016am getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public /* synthetic */ AbstractC19039b copy(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19039b.EnumC19040a enumC19040a, boolean z) {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public AbstractC19020aq getDispatchReceiverParameter() {
        return mo2538b().getDispatchReceiverParameter();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public AbstractC19020aq getExtensionReceiverParameter() {
        return mo2538b().getExtensionReceiverParameter();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public AbstractC19219w getInitialSignatureDescriptor() {
        return this.f64988c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public AbstractC19039b.EnumC19040a getKind() {
        AbstractC19039b.EnumC19040a enumC19040a = this.f64993i;
        if (enumC19040a == null) {
            m2540a(6);
        }
        return enumC19040a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public EnumC19222y getModality() {
        EnumC19222y enumC19222y = this.f64990f;
        if (enumC19222y == null) {
            m2540a(9);
        }
        return enumC19222y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2540a(8);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public <V> V getUserData(AbstractC18973a.AbstractC18974a<V> abstractC18974a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s abstractC19213s = this.f64987b;
        if (abstractC19213s == null) {
            m2540a(10);
        }
        return abstractC19213s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public boolean hasSynthesizedParameterNames() {
        return false;
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
        return this.f64989e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isHiddenForResolutionEverywhereBesideSupercalls() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isHiddenToOvercomeSignatureClash() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isInfix() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isInline() {
        return this.f64992h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isOperator() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isTailrec() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public AbstractC19219w.AbstractC19220a<? extends AbstractC19219w> newCopyBuilder() {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public void setOverriddenDescriptors(Collection<? extends AbstractC19039b> collection) {
        if (collection == null) {
            m2540a(14);
        }
        if (f64985d || collection.isEmpty()) {
            return;
        }
        throw new AssertionError("Overridden accessors should be empty");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av
    public AbstractC18973a substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            m2540a(7);
        }
        throw new UnsupportedOperationException();
    }
}
