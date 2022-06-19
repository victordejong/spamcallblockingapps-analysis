package retrofit2;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
/* renamed from: retrofit2.h */
/* loaded from: classes5-dex2jar.jar:retrofit2/h.class */
public final class C21084h {

    /* renamed from: a */
    private final Method f67696a;

    /* renamed from: b */
    private final List<?> f67697b;

    public C21084h(Method method, List<?> list) {
        this.f67696a = method;
        this.f67697b = Collections.unmodifiableList(list);
    }

    /* renamed from: a */
    public final Method m59a() {
        return this.f67696a;
    }

    public final String toString() {
        return String.format("%s.%s() %s", this.f67696a.getDeclaringClass().getName(), this.f67696a.getName(), this.f67697b);
    }
}
