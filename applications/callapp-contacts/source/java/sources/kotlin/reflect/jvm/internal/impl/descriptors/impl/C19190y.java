package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.y */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/y.class */
public class C19190y extends AbstractC19188w implements AbstractC19019ap {

    /* renamed from: e */
    static final /* synthetic */ boolean f64996e = true;

    /* renamed from: f */
    private AbstractC19050ba f64997f;

    /* renamed from: g */
    private final AbstractC19019ap f64998g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19190y(AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, boolean z, boolean z2, boolean z3, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19019ap abstractC19019ap, AbstractC19026at abstractC19026at) {
        super(enumC19222y, abstractC19213s, abstractC19017an, abstractC18983g, C18966e.m2715c("<set-" + abstractC19017an.getName() + ">"), z, z2, z3, enumC19040a, abstractC19026at);
        if (abstractC19017an == null) {
            m2534a(0);
        }
        if (abstractC18983g == null) {
            m2534a(1);
        }
        if (enumC19222y == null) {
            m2534a(2);
        }
        if (abstractC19213s == null) {
            m2534a(3);
        }
        if (enumC19040a == null) {
            m2534a(4);
        }
        if (abstractC19026at == null) {
            m2534a(5);
        }
        this.f64998g = abstractC19019ap != null ? abstractC19019ap : this;
    }

    /* renamed from: a */
    public static C19148ae m2533a(AbstractC19019ap abstractC19019ap, KotlinType kotlinType, AbstractC18983g abstractC18983g) {
        if (abstractC19019ap == null) {
            m2534a(7);
        }
        if (kotlinType == null) {
            m2534a(8);
        }
        if (abstractC18983g == null) {
            m2534a(9);
        }
        return new C19148ae(abstractC19019ap, null, 0, abstractC18983g, C18966e.m2715c("<set-?>"), kotlinType, false, false, false, null, AbstractC19026at.f64759a);
    }

    /* renamed from: a */
    private static /* synthetic */ void m2534a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 9:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "visibility";
                break;
            case 4:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
                objArr[0] = MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD;
                break;
            case 7:
                objArr[0] = "setterDescriptor";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        switch (i) {
            case 10:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 11:
                objArr[1] = "getValueParameters";
                break;
            case 12:
                objArr[1] = "getReturnType";
                break;
            case 13:
                objArr[1] = "getOriginal";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
        }
        switch (i) {
            case 6:
                objArr[2] = "initialize";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSetterParameter";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                illegalArgumentException = new IllegalStateException(format);
                break;
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* renamed from: d */
    public AbstractC19019ap getOriginal() {
        AbstractC19019ap abstractC19019ap = this.f64998g;
        if (abstractC19019ap == null) {
            m2534a(13);
        }
        return abstractC19019ap;
    }

    /* renamed from: a */
    public final void m2532a(AbstractC19050ba abstractC19050ba) {
        if (abstractC19050ba == null) {
            m2534a(6);
        }
        if (f64996e || this.f64997f == null) {
            this.f64997f = abstractC19050ba;
            return;
        }
        throw new AssertionError();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
        return abstractC19195m.mo2382a((AbstractC19019ap) this, (C19190y) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public Collection<? extends AbstractC19019ap> getOverriddenDescriptors() {
        return super.m2539a(false);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public KotlinType getReturnType() {
        SimpleType m2782o = C19756a.m1526d(this).m2782o();
        if (m2782o == null) {
            m2534a(12);
        }
        return m2782o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public List<AbstractC19050ba> getValueParameters() {
        AbstractC19050ba abstractC19050ba = this.f64997f;
        if (abstractC19050ba != null) {
            List<AbstractC19050ba> singletonList = Collections.singletonList(abstractC19050ba);
            if (singletonList == null) {
                m2534a(11);
            }
            return singletonList;
        }
        throw new IllegalStateException();
    }
}
