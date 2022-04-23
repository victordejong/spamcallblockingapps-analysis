package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/d.class */
public abstract class d implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37460a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final e f37461b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/d$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static d a(Object value, e eVar) {
            p.d(value, "value");
            return b.b(value.getClass()) ? new o(eVar, (Enum) value) : value instanceof Annotation ? new e(eVar, (Annotation) value) : value instanceof Object[] ? new h(eVar, (Object[]) value) : value instanceof Class ? new k(eVar, (Class) value) : new q(eVar, value);
        }
    }

    public d(e eVar) {
        this.f37461b = eVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.b
    public final e a() {
        return this.f37461b;
    }
}
