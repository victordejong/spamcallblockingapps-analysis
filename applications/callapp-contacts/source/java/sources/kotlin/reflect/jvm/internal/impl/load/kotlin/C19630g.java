package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19957p;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/g.class */
public final class C19630g implements AbstractC19957p {

    /* renamed from: a */
    public static final C19630g f65731a = new C19630g();

    private C19630g() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19957p
    /* renamed from: a */
    public final KotlinType mo1250a(C18702a.C18768p proto, String flexibleId, SimpleType lowerBound, SimpleType upperBound) {
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(flexibleId, "flexibleId");
        C18524p.m3840d(lowerBound, "lowerBound");
        C18524p.m3840d(upperBound, "upperBound");
        if (C18524p.m3850a((Object) flexibleId, (Object) "kotlin.jvm.PlatformType")) {
            if (proto.m1693a(C18827a.f64334g)) {
                return new RawTypeImpl(lowerBound, upperBound);
            }
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return KotlinTypeFactory.flexibleType(lowerBound, upperBound);
        }
        SimpleType createErrorType = ErrorUtils.createErrorType("Error java flexible type with id: " + flexibleId + ". (" + lowerBound + ".." + upperBound + ')');
        C18524p.m3843b(createErrorType, "createErrorType(\"Error java flexible type with id: $flexibleId. ($lowerBound..$upperBound)\")");
        return createErrorType;
    }
}
