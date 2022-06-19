package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19393b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/d.class */
public abstract class AbstractC19092d implements AbstractC19393b {

    /* renamed from: a */
    public static final C19093a f64818a = new C19093a(null);

    /* renamed from: b */
    private final C18966e f64819b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/d$a.class */
    public static final class C19093a {
        private C19093a() {
        }

        public /* synthetic */ C19093a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AbstractC19092d m2651a(Object value, C18966e c18966e) {
            C18524p.m3840d(value, "value");
            return C19088b.m2657b(value.getClass()) ? new C19113o(c18966e, (Enum) value) : value instanceof Annotation ? new C19094e(c18966e, (Annotation) value) : value instanceof Object[] ? new C19098h(c18966e, (Object[]) value) : value instanceof Class ? new C19109k(c18966e, (Class) value) : new C19115q(c18966e, value);
        }
    }

    public AbstractC19092d(C18966e c18966e) {
        this.f64819b = c18966e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19393b
    /* renamed from: a */
    public final C18966e mo2223a() {
        return this.f64819b;
    }
}
