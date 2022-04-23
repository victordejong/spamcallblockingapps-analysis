package p131c.p161d.p282e.p340u.p349l;

import java.util.NoSuchElementException;
/* renamed from: c.d.e.u.l.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/l/c.class */
public final class C5995c<T> {

    /* renamed from: b */
    public static final C5995c<?> f19474b = new C5995c<>();

    /* renamed from: a */
    public final T f19475a;

    public C5995c() {
        this.f19475a = null;
    }

    public C5995c(T t) {
        if (t != null) {
            this.f19475a = t;
            return;
        }
        throw new NullPointerException("value for optional is empty.");
    }

    /* renamed from: a */
    public static <T> C5995c<T> m22366a(T t) {
        return new C5995c<>(t);
    }

    /* renamed from: b */
    public static <T> C5995c<T> m22364b(T t) {
        return t == null ? m22363c() : m22366a(t);
    }

    /* renamed from: c */
    public static <T> C5995c<T> m22363c() {
        return (C5995c<T>) f19474b;
    }

    /* renamed from: a */
    public T m22367a() {
        T t = this.f19475a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: b */
    public boolean m22365b() {
        return this.f19475a != null;
    }
}
