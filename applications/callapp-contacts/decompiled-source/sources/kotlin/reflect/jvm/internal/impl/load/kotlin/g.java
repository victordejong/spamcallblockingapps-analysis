package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.p;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/g.class */
public final class g implements p {

    /* renamed from: a  reason: collision with root package name */
    public static final g f38071a = new g();

    private g() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.p
    public final KotlinType a(a.p proto, String flexibleId, SimpleType lowerBound, SimpleType upperBound) {
        kotlin.jvm.internal.p.d(proto, "proto");
        kotlin.jvm.internal.p.d(flexibleId, "flexibleId");
        kotlin.jvm.internal.p.d(lowerBound, "lowerBound");
        kotlin.jvm.internal.p.d(upperBound, "upperBound");
        if (!kotlin.jvm.internal.p.a((Object) flexibleId, (Object) "kotlin.jvm.PlatformType")) {
            SimpleType createErrorType = ErrorUtils.createErrorType("Error java flexible type with id: " + flexibleId + ". (" + lowerBound + ".." + upperBound + ')');
            kotlin.jvm.internal.p.b(createErrorType, "createErrorType(\"Error java flexible type with id: $flexibleId. ($lowerBound..$upperBound)\")");
            return createErrorType;
        } else if (proto.a(kotlin.reflect.jvm.internal.impl.b.c.a.g)) {
            return new RawTypeImpl(lowerBound, upperBound);
        } else {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return KotlinTypeFactory.flexibleType(lowerBound, upperBound);
        }
    }
}
