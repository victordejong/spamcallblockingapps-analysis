package kotlin.reflect.jvm.internal.impl.resolve.e.a;

import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a/a.class */
public abstract class a implements e {

    /* renamed from: a  reason: collision with root package name */
    protected final KotlinType f38267a;

    /* renamed from: b  reason: collision with root package name */
    private final e f38268b;

    public a(KotlinType kotlinType, e eVar) {
        if (kotlinType == null) {
            a(0);
        }
        this.f38267a = kotlinType;
        this.f38268b = eVar == null ? this : eVar;
    }

    private static /* synthetic */ void a(int i) {
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
        if (!(i == 1 || i == 2)) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 1 || i == 2) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a.e
    public final KotlinType a() {
        KotlinType kotlinType = this.f38267a;
        if (kotlinType == null) {
            a(1);
        }
        return kotlinType;
    }
}
