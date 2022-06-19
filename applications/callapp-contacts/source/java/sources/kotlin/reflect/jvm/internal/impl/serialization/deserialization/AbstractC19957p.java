package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.p */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/p.class */
public interface AbstractC19957p {

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.p$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a.class */
    public static final class C19958a implements AbstractC19957p {

        /* renamed from: a */
        public static final C19958a f66289a = new C19958a();

        private C19958a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19957p
        /* renamed from: a */
        public final KotlinType mo1250a(C18702a.C18768p proto, String flexibleId, SimpleType lowerBound, SimpleType upperBound) {
            C18524p.m3840d(proto, "proto");
            C18524p.m3840d(flexibleId, "flexibleId");
            C18524p.m3840d(lowerBound, "lowerBound");
            C18524p.m3840d(upperBound, "upperBound");
            throw new IllegalArgumentException("This method should not be used.");
        }
    }

    /* renamed from: a */
    KotlinType mo1250a(C18702a.C18768p c18768p, String str, SimpleType simpleType, SimpleType simpleType2);
}
