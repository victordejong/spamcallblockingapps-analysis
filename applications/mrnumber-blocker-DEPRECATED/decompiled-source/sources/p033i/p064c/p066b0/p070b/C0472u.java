package p033i.p064c.p066b0.p070b;

import i.c.b0.e.k.m;
import java.util.Objects;
/* renamed from: i.c.b0.b.u */
/* loaded from: classes2-dex2jar.jar:i/c/b0/b/u.class */
public final class C0472u<T> {

    /* renamed from: b */
    static final C0472u<Object> f1064b = new C0472u<>(null);

    /* renamed from: a */
    final Object f1065a;

    private C0472u(Object obj) {
        this.f1065a = obj;
    }

    /* renamed from: a */
    public static <T> C0472u<T> m79a() {
        return (C0472u<T>) f1064b;
    }

    /* renamed from: b */
    public static <T> C0472u<T> m78b(Throwable th) {
        Objects.requireNonNull(th, "error is null");
        return new C0472u<>(m.error(th));
    }

    /* renamed from: c */
    public static <T> C0472u<T> m77c(T t) {
        Objects.requireNonNull(t, "value is null");
        return new C0472u<>(t);
    }

    /* renamed from: d */
    public Throwable m76d() {
        Object obj = this.f1065a;
        if (m.isError(obj)) {
            return m.getError(obj);
        }
        return null;
    }

    /* renamed from: e */
    public T m75e() {
        Object obj = this.f1065a;
        if (obj == null || m.isError(obj)) {
            return null;
        }
        return (T) this.f1065a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0472u) {
            return Objects.equals(this.f1065a, ((C0472u) obj).f1065a);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m74f() {
        return this.f1065a == null;
    }

    /* renamed from: g */
    public boolean m73g() {
        return m.isError(this.f1065a);
    }

    /* renamed from: h */
    public boolean m72h() {
        Object obj = this.f1065a;
        return obj != null && !m.isError(obj);
    }

    public int hashCode() {
        Object obj = this.f1065a;
        return obj != null ? obj.hashCode() : 0;
    }

    public String toString() {
        Object obj = this.f1065a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (m.isError(obj)) {
            return "OnErrorNotification[" + m.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f1065a + "]";
    }
}
