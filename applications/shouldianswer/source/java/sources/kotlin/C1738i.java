package kotlin;

import java.io.Serializable;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.i */
/* loaded from: classes-dex2jar.jar:kotlin/i.class */
public final class C1738i<A, B> implements Serializable {

    /* renamed from: a */
    private final A f4411a;

    /* renamed from: b */
    private final B f4412b;

    public C1738i(A a, B b) {
        this.f4411a = a;
        this.f4412b = b;
    }

    /* renamed from: a */
    public final A m3062a() {
        return this.f4411a;
    }

    /* renamed from: b */
    public final B m3061b() {
        return this.f4412b;
    }

    /* renamed from: c */
    public final A m3060c() {
        return this.f4411a;
    }

    /* renamed from: d */
    public final B m3059d() {
        return this.f4412b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C1738i)) {
                return false;
            }
            C1738i c1738i = (C1738i) obj;
            return C1694h.m3123a(this.f4411a, c1738i.f4411a) && C1694h.m3123a(this.f4412b, c1738i.f4412b);
        }
        return true;
    }

    public int hashCode() {
        A a = this.f4411a;
        int i = 0;
        int hashCode = a != null ? a.hashCode() : 0;
        B b = this.f4412b;
        if (b != null) {
            i = b.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return '(' + this.f4411a + ", " + this.f4412b + ')';
    }
}
