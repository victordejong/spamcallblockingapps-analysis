package p655o;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
/* renamed from: o.j */
/* loaded from: classes3-dex2jar.jar:o/j.class */
public final class C15259j {

    /* renamed from: a */
    public final Method f33277a;

    /* renamed from: b */
    public final List<?> f33278b;

    public C15259j(Method method, List<?> list) {
        this.f33277a = method;
        this.f33278b = Collections.unmodifiableList(list);
    }

    /* renamed from: a */
    public Method m146a() {
        return this.f33277a;
    }

    public String toString() {
        return String.format("%s.%s() %s", this.f33277a.getDeclaringClass().getName(), this.f33277a.getName(), this.f33278b);
    }
}
