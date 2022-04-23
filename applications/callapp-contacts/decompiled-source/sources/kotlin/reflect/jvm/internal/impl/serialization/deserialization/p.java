package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/p.class */
public interface p {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a.class */
    public static final class a implements p {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38457a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.p
        public final KotlinType a(a.p proto, String flexibleId, SimpleType lowerBound, SimpleType upperBound) {
            kotlin.jvm.internal.p.d(proto, "proto");
            kotlin.jvm.internal.p.d(flexibleId, "flexibleId");
            kotlin.jvm.internal.p.d(lowerBound, "lowerBound");
            kotlin.jvm.internal.p.d(upperBound, "upperBound");
            throw new IllegalArgumentException("This method should not be used.");
        }
    }

    KotlinType a(a.p pVar, String str, SimpleType simpleType, SimpleType simpleType2);
}
