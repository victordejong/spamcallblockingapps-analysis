package kotlin.reflect.jvm.internal.impl.descriptors.b;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/e.class */
public interface e {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/e$a.class */
    public static final class a implements e {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37411a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.e
        public final SimpleType a(kotlin.reflect.jvm.internal.impl.c.a classId, SimpleType computedType) {
            p.d(classId, "classId");
            p.d(computedType, "computedType");
            return computedType;
        }
    }

    SimpleType a(kotlin.reflect.jvm.internal.impl.c.a aVar, SimpleType simpleType);
}
