package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Arrays;
/* renamed from: h.i.a.e.j.q.y7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/y7.class */
public final class C8790y7 {

    /* renamed from: a */
    public final int f20150a;

    /* renamed from: b */
    public final byte[] f20151b;

    public C8790y7(int i, byte[] bArr) {
        this.f20150a = i;
        this.f20151b = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8790y7)) {
            return false;
        }
        C8790y7 y7Var = (C8790y7) obj;
        return this.f20150a == y7Var.f20150a && Arrays.equals(this.f20151b, y7Var.f20151b);
    }

    public final int hashCode() {
        return ((this.f20150a + 527) * 31) + Arrays.hashCode(this.f20151b);
    }
}
