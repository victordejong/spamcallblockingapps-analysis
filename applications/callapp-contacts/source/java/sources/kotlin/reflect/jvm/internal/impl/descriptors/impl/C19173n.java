package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.C19814c;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.n */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/n.class */
public final class C19173n extends AbstractC19154b {

    /* renamed from: a */
    private final AbstractC19070d f64942a;

    /* renamed from: b */
    private final C19814c f64943b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19173n(AbstractC19070d abstractC19070d) {
        super(AbstractC18983g.C18984a.m2705a());
        if (abstractC19070d == null) {
            m2572a(0);
        }
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        this.f64942a = abstractC19070d;
        this.f64943b = new C19814c(abstractC19070d, null);
    }

    /* renamed from: a */
    private static /* synthetic */ void m2572a(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else if (i != 3) {
            objArr[0] = "descriptor";
        } else {
            objArr[0] = "newOwner";
        }
        if (i == 1) {
            objArr[1] = "getValue";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (i != 1 && i != 2) {
            if (i != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "copy";
            }
        }
        String format = String.format(str, objArr);
        throw ((i == 1 || i == 2) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq
    /* renamed from: a */
    public final AbstractC19816e mo2529a() {
        C19814c c19814c = this.f64943b;
        if (c19814c == null) {
            m2572a(1);
        }
        return c19814c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final AbstractC19193k getContainingDeclaration() {
        AbstractC19070d abstractC19070d = this.f64942a;
        if (abstractC19070d == null) {
            m2572a(2);
        }
        return abstractC19070d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19162h
    public final String toString() {
        return "class " + this.f64942a.getName() + "::this";
    }
}
