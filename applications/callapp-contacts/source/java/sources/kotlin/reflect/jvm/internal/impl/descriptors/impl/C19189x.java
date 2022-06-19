package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.x */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/x.class */
public final class C19189x extends AbstractC19188w implements AbstractC19018ao {

    /* renamed from: e */
    private KotlinType f64994e;

    /* renamed from: f */
    private final AbstractC19018ao f64995f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19189x(AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, boolean z, boolean z2, boolean z3, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19018ao abstractC19018ao, AbstractC19026at abstractC19026at) {
        super(enumC19222y, abstractC19213s, abstractC19017an, abstractC18983g, C18966e.m2715c("<get-" + abstractC19017an.getName() + ">"), z, z2, z3, enumC19040a, abstractC19026at);
        if (abstractC19017an == null) {
            m2537a(0);
        }
        if (abstractC18983g == null) {
            m2537a(1);
        }
        if (enumC19222y == null) {
            m2537a(2);
        }
        if (abstractC19213s == null) {
            m2537a(3);
        }
        if (enumC19040a == null) {
            m2537a(4);
        }
        if (abstractC19026at == null) {
            m2537a(5);
        }
        this.f64995f = abstractC19018ao == null ? this : abstractC19018ao;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2537a(int i) {
        String str = (i == 6 || i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 6 || i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
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
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        if (i == 6) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i == 7) {
            objArr[1] = "getValueParameters";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 6 && i != 7 && i != 8) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 6 || i == 7 || i == 8) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* renamed from: d */
    public AbstractC19018ao getOriginal() {
        AbstractC19018ao abstractC19018ao = this.f64995f;
        if (abstractC19018ao == null) {
            m2537a(8);
        }
        return abstractC19018ao;
    }

    /* renamed from: a */
    public final void m2536a(KotlinType kotlinType) {
        KotlinType kotlinType2 = kotlinType;
        if (kotlinType == null) {
            kotlinType2 = mo2538b().mo2593g();
        }
        this.f64994e = kotlinType2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
        return abstractC19195m.mo2383a((AbstractC19018ao) this, (C19189x) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public final Collection<? extends AbstractC19018ao> getOverriddenDescriptors() {
        return super.m2539a(true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public final KotlinType getReturnType() {
        return this.f64994e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public final List<AbstractC19050ba> getValueParameters() {
        List<AbstractC19050ba> emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2537a(7);
        }
        return emptyList;
    }
}
