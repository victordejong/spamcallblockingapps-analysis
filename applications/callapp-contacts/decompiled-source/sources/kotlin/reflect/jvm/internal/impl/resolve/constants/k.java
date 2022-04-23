package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/k.class */
public abstract class k extends g<v> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38257a = new a(null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/k$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static k a(String message) {
            p.d(message, "message");
            return new b(message);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/k$b.class */
    public static final class b extends k {

        /* renamed from: b  reason: collision with root package name */
        private final String f38258b;

        public b(String message) {
            p.d(message, "message");
            this.f38258b = message;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
        public final /* synthetic */ KotlinType a(ab module) {
            p.d(module, "module");
            SimpleType createErrorType = ErrorUtils.createErrorType(this.f38258b);
            p.b(createErrorType, "createErrorType(message)");
            return createErrorType;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
        public final String toString() {
            return this.f38258b;
        }
    }

    public k() {
        super(v.f38654a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final /* synthetic */ v a() {
        throw new UnsupportedOperationException();
    }
}
