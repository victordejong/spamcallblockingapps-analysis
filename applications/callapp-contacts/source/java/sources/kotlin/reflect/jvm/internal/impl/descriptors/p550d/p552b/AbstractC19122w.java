package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Iterator;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/w.class */
public abstract class AbstractC19122w implements AbstractC19414w {

    /* renamed from: b */
    public static final C19123a f64847b = new C19123a(null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.w$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a.class */
    public static final class C19123a {
        private C19123a() {
        }

        public /* synthetic */ C19123a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AbstractC19122w m2639a(Type type) {
            C18524p.m3840d(type, "type");
            boolean z = type instanceof Class;
            if (z) {
                Class cls = (Class) type;
                if (cls.isPrimitive()) {
                    return new C19121v(cls);
                }
            }
            return ((type instanceof GenericArrayType) || (z && ((Class) type).isArray())) ? new C19099i(type) : type instanceof WildcardType ? new C19126z((WildcardType) type) : new C19110l(type);
        }
    }

    /* renamed from: a */
    protected abstract Type mo2637a();

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: a */
    public AbstractC19389a mo2221a(C18961b fqName) {
        Object obj;
        AbstractC19122w abstractC19122w = this;
        C18524p.m3840d(abstractC19122w, "this");
        C18524p.m3840d(fqName, "fqName");
        Iterator<T> it2 = abstractC19122w.mo2220b().iterator();
        while (true) {
            obj = null;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            C18960a mo2229b = ((AbstractC19389a) next).mo2229b();
            if (C18524p.m3850a(mo2229b == null ? null : mo2229b.m2748f(), fqName)) {
                obj = next;
                break;
            }
        }
        return (AbstractC19389a) obj;
    }

    public boolean equals(Object obj) {
        return (obj instanceof AbstractC19122w) && C18524p.m3850a(mo2637a(), ((AbstractC19122w) obj).mo2637a());
    }

    public int hashCode() {
        return mo2637a().hashCode();
    }

    public String toString() {
        return getClass().getName() + ": " + mo2637a();
    }
}
