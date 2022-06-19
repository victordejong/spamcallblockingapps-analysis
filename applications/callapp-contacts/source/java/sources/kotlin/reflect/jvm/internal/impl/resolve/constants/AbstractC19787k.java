package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.C20128v;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/k.class */
public abstract class AbstractC19787k extends AbstractC19781g<C20128v> {

    /* renamed from: a */
    public static final C19788a f65972a = new C19788a(null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/k$a.class */
    public static final class C19788a {
        private C19788a() {
        }

        public /* synthetic */ C19788a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AbstractC19787k m1488a(String message) {
            C18524p.m3840d(message, "message");
            return new C19789b(message);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.k$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/k$b.class */
    public static final class C19789b extends AbstractC19787k {

        /* renamed from: b */
        private final String f65973b;

        public C19789b(String message) {
            C18524p.m3840d(message, "message");
            this.f65973b = message;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
        /* renamed from: a */
        public final /* synthetic */ KotlinType mo1485a(AbstractC18999ab module) {
            C18524p.m3840d(module, "module");
            SimpleType createErrorType = ErrorUtils.createErrorType(this.f65973b);
            C18524p.m3843b(createErrorType, "createErrorType(message)");
            return createErrorType;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
        public final String toString() {
            return this.f65973b;
        }
    }

    public AbstractC19787k() {
        super(C20128v.f66529a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final /* synthetic */ C20128v mo1489a() {
        throw new UnsupportedOperationException();
    }
}
