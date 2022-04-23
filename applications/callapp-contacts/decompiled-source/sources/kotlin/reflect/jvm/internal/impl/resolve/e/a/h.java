package kotlin.reflect.jvm.internal.impl.resolve.e.a;

import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a/h.class */
public final class h extends a {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(KotlinType kotlinType) {
        this(kotlinType, null);
        if (kotlinType == null) {
            a(0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private h(KotlinType kotlinType, e eVar) {
        super(kotlinType, eVar);
        if (kotlinType == null) {
            a(1);
        }
    }

    private static /* synthetic */ void a(int i) {
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
        return "{Transient} : " + a();
    }
}
