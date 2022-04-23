package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Arrays;
/* renamed from: h.i.a.e.j.j.l5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/l5.class */
public final class C7859l5 {

    /* renamed from: a */
    public final int f18405a;

    /* renamed from: b */
    public final byte[] f18406b;

    public C7859l5(int i, byte[] bArr) {
        this.f18405a = i;
        this.f18406b = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7859l5)) {
            return false;
        }
        C7859l5 l5Var = (C7859l5) obj;
        return this.f18405a == l5Var.f18405a && Arrays.equals(this.f18406b, l5Var.f18406b);
    }

    public final int hashCode() {
        return ((this.f18405a + 527) * 31) + Arrays.hashCode(this.f18406b);
    }
}
