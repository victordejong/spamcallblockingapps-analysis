package p081h.p203i.p204a.p224e.p259j.p269j;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: h.i.a.e.j.j.n0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n0.class */
public class C7868n0 extends AbstractC7861m0 {

    /* renamed from: d */
    public final byte[] f18423d;

    public C7868n0(byte[] bArr) {
        if (bArr != null) {
            this.f18423d = bArr;
            return;
        }
        throw new NullPointerException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    /* renamed from: a */
    public final int mo19169a(int i, int i2, int i3) {
        return C7891p1.m19108a(i, this.f18423d, mo19163r(), i3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    /* renamed from: a */
    public final AbstractC7791e0 mo19170a(int i, int i2) {
        int b = AbstractC7791e0.m19471b(0, i2, size());
        return b == 0 ? AbstractC7791e0.f18220b : new C7825i0(this.f18423d, mo19163r(), b);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    /* renamed from: a */
    public final String mo19166a(Charset charset) {
        return new String(this.f18423d, mo19163r(), size(), charset);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    /* renamed from: a */
    public final void mo19168a(AbstractC7783d0 d0Var) throws IOException {
        d0Var.mo18910a(this.f18423d, mo19163r(), size());
    }

    /* renamed from: a */
    public final boolean m19167a(AbstractC7791e0 e0Var, int i, int i2) {
        if (i2 > e0Var.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > e0Var.size()) {
            int size2 = e0Var.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(UserProfile.CARD_CATE_SEPARATOR);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(e0Var instanceof C7868n0)) {
            return e0Var.mo19170a(0, i2).equals(mo19170a(0, i2));
        } else {
            C7868n0 n0Var = (C7868n0) e0Var;
            byte[] bArr = this.f18423d;
            byte[] bArr2 = n0Var.f18423d;
            int r = mo19163r();
            int r2 = mo19163r();
            int r3 = n0Var.mo19163r();
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

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    /* renamed from: c */
    public final boolean mo19165c() {
        int r = mo19163r();
        return C7858l4.m19252a(this.f18423d, r, size() + r);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7791e0) || size() != ((AbstractC7791e0) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C7868n0)) {
            return obj.equals(this);
        }
        C7868n0 n0Var = (C7868n0) obj;
        int q = m19469q();
        int q2 = n0Var.m19469q();
        if (q == 0 || q2 == 0 || q == q2) {
            return m19167a(n0Var, 0, size());
        }
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    /* renamed from: g */
    public byte mo19164g(int i) {
        return this.f18423d[i];
    }

    /* renamed from: r */
    public int mo19163r() {
        return 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    public int size() {
        return this.f18423d.length;
    }
}
