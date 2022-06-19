package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.z */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/z.class */
public final class C19191z extends AbstractC19154b {

    /* renamed from: a */
    private final AbstractC19193k f64999a;

    /* renamed from: b */
    private final AbstractC19816e f65000b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19191z(AbstractC19193k abstractC19193k, AbstractC19816e abstractC19816e, AbstractC18983g abstractC18983g) {
        super(abstractC18983g);
        if (abstractC19193k == null) {
            m2528a(0);
        }
        if (abstractC19816e == null) {
            m2528a(1);
        }
        if (abstractC18983g == null) {
            m2528a(2);
        }
        this.f64999a = abstractC19193k;
        this.f65000b = abstractC19816e;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2528a(int i) {
        String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "value";
        } else if (i == 2) {
            objArr[0] = "annotations";
        } else if (i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else if (i != 5) {
            objArr[0] = "containingDeclaration";
        } else {
            objArr[0] = "newOwner";
        }
        if (i == 3) {
            objArr[1] = "getValue";
        } else if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (i != 3 && i != 4) {
            if (i != 5) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "copy";
            }
        }
        String format = String.format(str, objArr);
        throw ((i == 3 || i == 4) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq
    /* renamed from: a */
    public final AbstractC19816e mo2529a() {
        AbstractC19816e abstractC19816e = this.f65000b;
        if (abstractC19816e == null) {
            m2528a(3);
        }
        return abstractC19816e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final AbstractC19193k getContainingDeclaration() {
        AbstractC19193k abstractC19193k = this.f64999a;
        if (abstractC19193k == null) {
            m2528a(4);
        }
        return abstractC19193k;
    }
}
