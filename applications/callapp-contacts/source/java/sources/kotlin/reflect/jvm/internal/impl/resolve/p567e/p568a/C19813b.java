package kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a;

import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.a.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a/b.class */
public final class C19813b extends AbstractC19812a implements AbstractC19815d {

    /* renamed from: b */
    private final AbstractC18973a f65984b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19813b(AbstractC18973a abstractC18973a, KotlinType kotlinType, AbstractC19816e abstractC19816e) {
        super(kotlinType, abstractC19816e);
        if (abstractC18973a == null) {
            m1439a(0);
        }
        if (kotlinType == null) {
            m1439a(1);
        }
        this.f65984b = abstractC18973a;
    }

    /* renamed from: a */
    private static /* synthetic */ void m1439a(int i) {
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
        return mo1437a() + ": Ext {" + this.f65984b + "}";
    }
}
