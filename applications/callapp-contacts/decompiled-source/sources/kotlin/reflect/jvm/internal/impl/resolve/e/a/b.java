package kotlin.reflect.jvm.internal.impl.resolve.e.a;

import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a/b.class */
public final class b extends a implements d {

    /* renamed from: b  reason: collision with root package name */
    private final a f38269b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(a aVar, KotlinType kotlinType, e eVar) {
        super(kotlinType, eVar);
        if (aVar == null) {
            a(0);
        }
        if (kotlinType == null) {
            a(1);
        }
        this.f38269b = aVar;
    }

    private static /* synthetic */ void a(int i) {
        String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 2 ? 3 : 2];
        if (i == 1) {
            objArr[0] = "receiverType";
        } else if (i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else if (i != 3) {
            objArr[0] = "callableDescriptor";
        } else {
            objArr[0] = "newType";
        }
        if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else {
            objArr[1] = "getDeclarationDescriptor";
        }
        if (i != 2) {
            if (i != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "replaceType";
            }
        }
        String format = String.format(str, objArr);
        throw (i != 2 ? new IllegalArgumentException(format) : new IllegalStateException(format));
    }

    public final String toString() {
        return a() + ": Ext {" + this.f38269b + "}";
    }
}
