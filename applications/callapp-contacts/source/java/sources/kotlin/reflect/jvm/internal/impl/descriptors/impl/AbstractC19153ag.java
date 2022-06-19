package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19297j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ag */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ag.class */
public abstract class AbstractC19153ag extends AbstractC19152af {

    /* renamed from: f */
    static final /* synthetic */ boolean f64910f = true;

    /* renamed from: a */
    private final boolean f64911a;

    /* renamed from: e */
    protected AbstractC19297j<AbstractC19781g<?>> f64912e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19153ag(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, C18966e c18966e, KotlinType kotlinType, boolean z, AbstractC19026at abstractC19026at) {
        super(abstractC19193k, abstractC18983g, c18966e, kotlinType, abstractC19026at);
        if (abstractC19193k == null) {
            m2598a(0);
        }
        if (abstractC18983g == null) {
            m2598a(1);
        }
        if (c18966e == null) {
            m2598a(2);
        }
        if (abstractC19026at == null) {
            m2598a(3);
        }
        this.f64911a = z;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2598a(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = "annotations";
        } else if (i == 2) {
            objArr[0] = "name";
        } else if (i == 3) {
            objArr[0] = Payload.SOURCE;
        } else if (i != 4) {
            objArr[0] = "containingDeclaration";
        } else {
            objArr[0] = "compileTimeInitializer";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl";
        if (i != 4) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "setCompileTimeInitializer";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    /* renamed from: a */
    public final void m2597a(AbstractC19297j<AbstractC19781g<?>> abstractC19297j) {
        if (abstractC19297j == null) {
            m2598a(4);
        }
        if (f64910f || !this.f64911a) {
            this.f64912e = abstractC19297j;
            return;
        }
        throw new AssertionError("Constant value for variable initializer should be recorded only for final variables: " + getName());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc
    public final boolean at_() {
        return this.f64911a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc
    /* renamed from: j */
    public final AbstractC19781g<?> mo2596j() {
        AbstractC19297j<AbstractC19781g<?>> abstractC19297j = this.f64912e;
        if (abstractC19297j != null) {
            return abstractC19297j.invoke();
        }
        return null;
    }
}
