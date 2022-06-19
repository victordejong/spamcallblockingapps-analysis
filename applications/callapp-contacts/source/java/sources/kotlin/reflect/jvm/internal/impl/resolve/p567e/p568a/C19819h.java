package kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a;

import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.a.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a/h.class */
public final class C19819h extends AbstractC19812a {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C19819h(KotlinType kotlinType) {
        this(kotlinType, null);
        if (kotlinType == null) {
            m1434a(0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C19819h(KotlinType kotlinType, AbstractC19816e abstractC19816e) {
        super(kotlinType, abstractC19816e);
        if (kotlinType == null) {
            m1434a(1);
        }
    }

    /* renamed from: a */
    private static /* synthetic */ void m1434a(int i) {
        Object[] objArr = new Object[3];
        if (i != 2) {
            objArr[0] = "type";
        } else {
            objArr[0] = "newType";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/TransientReceiver";
        if (i != 2) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "replaceType";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public final String toString() {
        return "{Transient} : " + mo1437a();
    }
}
