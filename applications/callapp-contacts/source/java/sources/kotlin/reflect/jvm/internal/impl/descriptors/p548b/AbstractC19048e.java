package kotlin.reflect.jvm.internal.impl.descriptors.p548b;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/e.class */
public interface AbstractC19048e {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/e$a.class */
    public static final class C19049a implements AbstractC19048e {

        /* renamed from: a */
        public static final C19049a f64769a = new C19049a();

        private C19049a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19048e
        /* renamed from: a */
        public final SimpleType mo2679a(C18960a classId, SimpleType computedType) {
            C18524p.m3840d(classId, "classId");
            C18524p.m3840d(computedType, "computedType");
            return computedType;
        }
    }

    /* renamed from: a */
    SimpleType mo2679a(C18960a c18960a, SimpleType simpleType);
}
