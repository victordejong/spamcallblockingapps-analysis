package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.af */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/af.class */
public abstract class AbstractC19152af extends AbstractC19163i implements AbstractC19052bc {

    /* renamed from: d */
    static final /* synthetic */ boolean f64908d = true;

    /* renamed from: c */
    protected KotlinType f64909c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19152af(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, C18966e c18966e, KotlinType kotlinType, AbstractC19026at abstractC19026at) {
        super(abstractC19193k, abstractC18983g, c18966e, abstractC19026at);
        if (abstractC19193k == null) {
            m2601a(0);
        }
        if (abstractC18983g == null) {
            m2601a(1);
        }
        if (c18966e == null) {
            m2601a(2);
        }
        if (abstractC19026at == null) {
            m2601a(3);
        }
        this.f64909c = kotlinType;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2601a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = Payload.SOURCE;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getType";
                break;
            case 5:
                objArr[1] = "getOriginal";
                break;
            case 6:
                objArr[1] = "getValueParameters";
                break;
            case 7:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getReturnType";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                illegalArgumentException = new IllegalStateException(format);
                break;
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* renamed from: a */
    public final void m2600a(KotlinType kotlinType) {
        KotlinType kotlinType2;
        if (f64908d || (kotlinType2 = this.f64909c) == null || TypeUtilsKt.shouldBeSubstituted(kotlinType2)) {
            this.f64909c = kotlinType;
            return;
        }
        throw new AssertionError();
    }

    public boolean ar_() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19038az
    /* renamed from: g */
    public final KotlinType mo2593g() {
        KotlinType kotlinType = this.f64909c;
        if (kotlinType == null) {
            m2601a(4);
        }
        return kotlinType;
    }

    public AbstractC19020aq getDispatchReceiverParameter() {
        return null;
    }

    public AbstractC19020aq getExtensionReceiverParameter() {
        return null;
    }

    public Collection<? extends AbstractC18973a> getOverriddenDescriptors() {
        Set emptySet = Collections.emptySet();
        if (emptySet == null) {
            m2601a(7);
        }
        return emptySet;
    }

    public KotlinType getReturnType() {
        KotlinType mo2593g = mo2593g();
        if (mo2593g == null) {
            m2601a(9);
        }
        return mo2593g;
    }

    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2601a(8);
        }
        return emptyList;
    }

    public <V> V getUserData(AbstractC18973a.AbstractC18974a<V> abstractC18974a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public List<AbstractC19050ba> getValueParameters() {
        List<AbstractC19050ba> emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2601a(6);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public boolean hasSynthesizedParameterNames() {
        return false;
    }

    /* renamed from: n */
    public AbstractC19052bc getOriginal() {
        AbstractC19052bc abstractC19052bc = (AbstractC19052bc) super.getOriginal();
        if (abstractC19052bc == null) {
            m2601a(5);
        }
        return abstractC19052bc;
    }
}
