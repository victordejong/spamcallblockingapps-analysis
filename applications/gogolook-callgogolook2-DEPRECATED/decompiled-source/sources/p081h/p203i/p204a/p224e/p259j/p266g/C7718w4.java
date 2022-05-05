package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
/* renamed from: h.i.a.e.j.g.w4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/w4.class */
public class C7718w4 {

    /* renamed from: a */
    public volatile int f18071a = -1;

    /* renamed from: a */
    public static final void m19696a(C7718w4 w4Var, byte[] bArr, int i, int i2) {
        try {
            C7669p4 a = C7669p4.m19842a(bArr, 0, i2);
            w4Var.mo19697a(a);
            a.m19856a();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    /* renamed from: a */
    public void mo19697a(C7669p4 p4Var) throws IOException {
    }

    /* renamed from: d */
    public final int m19695d() {
        int e = mo19694e();
        this.f18071a = e;
        return e;
    }

    /* renamed from: e */
    public int mo19694e() {
        return 0;
    }

    /* renamed from: f */
    public C7718w4 clone() throws CloneNotSupportedException {
        return (C7718w4) super.clone();
    }

    public String toString() {
        return C7732y4.m19654a(this);
    }
}
