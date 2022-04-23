package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/g.class */
public abstract class g<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f38251a;

    public g(T t) {
        this.f38251a = t;
    }

    public T a() {
        return this.f38251a;
    }

    public abstract KotlinType a(ab abVar);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        T a2 = a();
        boolean z = obj instanceof g;
        Object obj2 = null;
        g gVar = z ? (g) obj : null;
        if (gVar != null) {
            obj2 = gVar.a();
        }
        return p.a(a2, obj2);
    }

    public int hashCode() {
        T a2 = a();
        if (a2 == null) {
            return 0;
        }
        return a2.hashCode();
    }

    public String toString() {
        return String.valueOf(a());
    }
}
