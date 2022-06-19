package p000;

import java.io.Serializable;
/* renamed from: kj1 */
/* loaded from: classes3-dex2jar.jar:kj1.class */
public final class kj1<A, B> implements Serializable {

    /* renamed from: a */
    public final A f6864a;

    /* renamed from: b */
    public final B f6865b;

    public kj1(A a, B b) {
        this.f6864a = a;
        this.f6865b = b;
    }

    /* renamed from: a */
    public final A m1389a() {
        return this.f6864a;
    }

    /* renamed from: b */
    public final B m1388b() {
        return this.f6865b;
    }

    /* renamed from: c */
    public final A m1387c() {
        return this.f6864a;
    }

    /* renamed from: d */
    public final B m1386d() {
        return this.f6865b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof kj1)) {
                return false;
            }
            kj1 kj1Var = (kj1) obj;
            return qk1.m746a(this.f6864a, kj1Var.f6864a) && qk1.m746a(this.f6865b, kj1Var.f6865b);
        }
        return true;
    }

    public int hashCode() {
        A a = this.f6864a;
        int i = 0;
        int hashCode = a != null ? a.hashCode() : 0;
        B b = this.f6865b;
        if (b != null) {
            i = b.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return '(' + this.f6864a + ", " + this.f6865b + ')';
    }
}
