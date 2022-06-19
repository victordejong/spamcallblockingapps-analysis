package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.C19819h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/b.class */
public abstract class AbstractC19154b extends AbstractC19162h implements AbstractC19020aq {

    /* renamed from: a */
    private static final C18966e f64913a = C18966e.m2715c("<this>");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19154b(AbstractC18983g abstractC18983g) {
        super(abstractC18983g, f64913a);
        if (abstractC18983g == null) {
            m2595a(0);
        }
    }

    /* renamed from: a */
    private static /* synthetic */ void m2595a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "substitutor";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        switch (i) {
            case 2:
                objArr[1] = "getTypeParameters";
                break;
            case 3:
                objArr[1] = "getType";
                break;
            case 4:
                objArr[1] = "getValueParameters";
                break;
            case 5:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 6:
                objArr[1] = "getVisibility";
                break;
            case 7:
                objArr[1] = "getOriginal";
                break;
            case 8:
                objArr[1] = "getSource";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "substitute";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                illegalArgumentException = new IllegalStateException(format);
                break;
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq
    /* renamed from: a */
    public final AbstractC19020aq substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            m2595a(1);
        }
        if (typeSubstitutor.isEmpty()) {
            return this;
        }
        KotlinType substitute = getContainingDeclaration() instanceof AbstractC19070d ? typeSubstitutor.substitute(mo2593g(), Variance.OUT_VARIANCE) : typeSubstitutor.substitute(mo2593g(), Variance.INVARIANT);
        if (substitute == null) {
            return null;
        }
        return substitute == mo2593g() ? this : new C19191z(getContainingDeclaration(), new C19819h(substitute), getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
        return abstractC19195m.mo2381a((AbstractC19020aq) this, (AbstractC19154b) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19038az
    /* renamed from: g */
    public final KotlinType mo2593g() {
        KotlinType mo1437a = mo2529a().mo1437a();
        if (mo1437a == null) {
            m2595a(3);
        }
        return mo1437a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public AbstractC19020aq getDispatchReceiverParameter() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public AbstractC19020aq getExtensionReceiverParameter() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public Collection<? extends AbstractC18973a> getOverriddenDescriptors() {
        Set emptySet = Collections.emptySet();
        if (emptySet == null) {
            m2595a(5);
        }
        return emptySet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public KotlinType getReturnType() {
        return mo2593g();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n
    public AbstractC19026at getSource() {
        AbstractC19026at abstractC19026at = AbstractC19026at.f64759a;
        if (abstractC19026at == null) {
            m2595a(8);
        }
        return abstractC19026at;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2595a(2);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public <V> V getUserData(AbstractC18973a.AbstractC18974a<V> abstractC18974a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public List<AbstractC19050ba> getValueParameters() {
        List<AbstractC19050ba> emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2595a(4);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s abstractC19213s = C19200r.f65007f;
        if (abstractC19213s == null) {
            m2595a(6);
        }
        return abstractC19213s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public boolean hasSynthesizedParameterNames() {
        return false;
    }
}
