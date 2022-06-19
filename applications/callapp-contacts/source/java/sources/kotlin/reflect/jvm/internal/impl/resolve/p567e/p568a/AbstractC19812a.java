package kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a;

import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a/a.class */
public abstract class AbstractC19812a implements AbstractC19816e {

    /* renamed from: a */
    protected final KotlinType f65982a;

    /* renamed from: b */
    private final AbstractC19816e f65983b;

    public AbstractC19812a(KotlinType kotlinType, AbstractC19816e abstractC19816e) {
        if (kotlinType == null) {
            m1440a(0);
        }
        this.f65982a = kotlinType;
        this.f65983b = abstractC19816e == null ? this : abstractC19816e;
    }

    /* renamed from: a */
    private static /* synthetic */ void m1440a(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[0] = "receiverType";
        }
        if (i == 1) {
            objArr[1] = "getType";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 1 && i != 2) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 1 || i == 2) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e
    /* renamed from: a */
    public final KotlinType mo1437a() {
        KotlinType kotlinType = this.f65982a;
        if (kotlinType == null) {
            m1440a(1);
        }
        return kotlinType;
    }
}
