package p000;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: vf1 */
/* loaded from: classes3-dex2jar.jar:vf1.class */
public final class vf1<T> {

    /* renamed from: b */
    public static final vf1<?> f8379b = new vf1<>();

    /* renamed from: a */
    public final T f8380a;

    public vf1() {
        this.f8380a = null;
    }

    public vf1(T t) {
        Objects.requireNonNull(t, "Optional of null value.");
        this.f8380a = t;
    }

    /* renamed from: a */
    public static <T> vf1<T> m329a() {
        return (vf1<T>) f8379b;
    }

    /* renamed from: d */
    public static <T> vf1<T> m326d(T t) {
        return new vf1<>(t);
    }

    /* renamed from: b */
    public T m328b() {
        T t = this.f8380a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m327c() {
        return this.f8380a != null;
    }

    /* renamed from: e */
    public T m325e(T t) {
        T t2 = this.f8380a;
        if (t2 != null) {
            t = t2;
        }
        return t;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vf1)) {
            return false;
        }
        T t = this.f8380a;
        T t2 = ((vf1) obj).f8380a;
        if (t == t2) {
            return true;
        }
        if (t != null && t2 != null) {
            return t.equals(t2);
        }
        return false;
    }

    public int hashCode() {
        T t = this.f8380a;
        return t == null ? 0 : t.hashCode();
    }

    public String toString() {
        T t = this.f8380a;
        return t != null ? String.format("Optional[%s]", t) : "Optional.empty";
    }
}
