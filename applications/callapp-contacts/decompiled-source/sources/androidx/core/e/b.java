package androidx.core.e;

import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/core/e/b.class */
public final class b<F, S> {

    /* renamed from: a  reason: collision with root package name */
    public final F f1889a;

    /* renamed from: b  reason: collision with root package name */
    public final S f1890b;

    public b(F f, S s) {
        this.f1889a = f;
        this.f1890b = s;
    }

    public static <A, B> b<A, B> a(A a2, B b2) {
        return new b<>(a2, b2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return a.a(bVar.f1889a, this.f1889a) && a.a(bVar.f1890b, this.f1890b);
    }

    public final int hashCode() {
        F f = this.f1889a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f1890b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        return "Pair{" + String.valueOf(this.f1889a) + StringUtils.SPACE + String.valueOf(this.f1890b) + "}";
    }
}
