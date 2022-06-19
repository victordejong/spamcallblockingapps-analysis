package androidx.core.p036e;

import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.core.e.b */
/* loaded from: classes-dex2jar.jar:androidx/core/e/b.class */
public final class C0828b<F, S> {

    /* renamed from: a */
    public final F f3556a;

    /* renamed from: b */
    public final S f3557b;

    public C0828b(F f, S s) {
        this.f3556a = f;
        this.f3557b = s;
    }

    /* renamed from: a */
    public static <A, B> C0828b<A, B> m44412a(A a, B b) {
        return new C0828b<>(a, b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0828b)) {
            return false;
        }
        C0828b c0828b = (C0828b) obj;
        return C0827a.m44414a(c0828b.f3556a, this.f3556a) && C0827a.m44414a(c0828b.f3557b, this.f3557b);
    }

    public final int hashCode() {
        F f = this.f3556a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f3557b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        return "Pair{" + String.valueOf(this.f3556a) + StringUtils.SPACE + String.valueOf(this.f3557b) + "}";
    }
}
