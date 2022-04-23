package retrofit2;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:retrofit2/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final Method f39456a;

    /* renamed from: b  reason: collision with root package name */
    private final List<?> f39457b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Method method, List<?> list) {
        this.f39456a = method;
        this.f39457b = Collections.unmodifiableList(list);
    }

    public final Method a() {
        return this.f39456a;
    }

    public final String toString() {
        return String.format("%s.%s() %s", this.f39456a.getDeclaringClass().getName(), this.f39456a.getName(), this.f39457b);
    }
}
