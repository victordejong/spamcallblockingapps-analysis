package p081h.p203i.p204a.p224e.p259j.p276q;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: h.i.a.e.j.q.c3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c3.class */
public class C8567c3 extends AbstractC8558b3 {

    /* renamed from: d */
    public final byte[] f19623d;

    public C8567c3(byte[] bArr) {
        if (bArr != null) {
            this.f19623d = bArr;
            return;
        }
        throw new NullPointerException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    /* renamed from: a */
    public final int mo17179a(int i, int i2, int i3) {
        return C8591e4.m17691a(i, this.f19623d, mo17072r(), i3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    /* renamed from: a */
    public final AbstractC8736t2 mo17180a(int i, int i2) {
        int b = AbstractC8736t2.m17171b(0, i2, size());
        return b == 0 ? AbstractC8736t2.f19984b : new C8772x2(this.f19623d, mo17072r(), b);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    /* renamed from: a */
    public final String mo17176a(Charset charset) {
        return new String(this.f19623d, mo17072r(), size(), charset);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    /* renamed from: a */
    public final void mo17178a(AbstractC8727s2 s2Var) throws IOException {
        s2Var.mo17208a(this.f19623d, mo17072r(), size());
    }

    /* renamed from: a */
    public final boolean m17764a(AbstractC8736t2 t2Var, int i, int i2) {
        if (i2 > t2Var.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > t2Var.size()) {
            int size2 = t2Var.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(UserProfile.CARD_CATE_SEPARATOR);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(t2Var instanceof C8567c3)) {
            return t2Var.mo17180a(0, i2).equals(mo17180a(0, i2));
        } else {
            C8567c3 c3Var = (C8567c3) t2Var;
            byte[] bArr = this.f19623d;
            byte[] bArr2 = c3Var.f19623d;
            int r = mo17072r();
            int r2 = mo17072r();
            int r3 = c3Var.mo17072r();
            while (r2 < r + i2) {
                if (bArr[r2] != bArr2[r3]) {
                    return false;
                }
                r2++;
                r3++;
            }
            return true;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    /* renamed from: c */
    public final boolean mo17170c() {
        int r = mo17072r();
        return C8798z6.m16927a(this.f19623d, r, size() + r);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8736t2) || size() != ((AbstractC8736t2) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C8567c3)) {
            return obj.equals(this);
        }
        C8567c3 c3Var = (C8567c3) obj;
        int q = m17168q();
        int q2 = c3Var.m17168q();
        if (q == 0 || q2 == 0 || q == q2) {
            return m17764a(c3Var, 0, size());
        }
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    /* renamed from: g */
    public byte mo17073g(int i) {
        return this.f19623d[i];
    }

    /* renamed from: r */
    public int mo17072r() {
        return 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
    public int size() {
        return this.f19623d.length;
    }
}
