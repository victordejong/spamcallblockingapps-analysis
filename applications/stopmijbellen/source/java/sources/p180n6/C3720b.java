package p180n6;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: n6.b */
/* loaded from: classes-dex2jar.jar:n6/b.class */
public final class C3720b<T> {

    /* renamed from: a */
    public final T f12109a;

    public C3720b() {
        this.f12109a = null;
    }

    public C3720b(T t) {
        Objects.requireNonNull(t, "value for optional is empty.");
        this.f12109a = t;
    }

    /* renamed from: a */
    public static <T> C3720b<T> m1845a(T t) {
        return t == null ? new C3720b<>() : new C3720b<>(t);
    }

    /* renamed from: b */
    public T m1844b() {
        T t = this.f12109a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m1843c() {
        return this.f12109a != null;
    }
}
