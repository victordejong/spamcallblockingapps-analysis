package p081h.p203i.p204a.p224e.p259j.p266g;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: h.i.a.e.j.g.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/h0.class */
public class C7601h0 extends AbstractC7594g0 {

    /* renamed from: d */
    public final byte[] f17861d;

    public C7601h0(byte[] bArr) {
        this.f17861d = bArr;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    /* renamed from: a */
    public final int mo20142a(int i, int i2, int i3) {
        return C7602h1.m20135a(i, this.f17861d, mo20136r(), i3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    /* renamed from: a */
    public final AbstractC7539a0 mo20143a(int i, int i2) {
        int b = AbstractC7539a0.m20380b(0, i2, size());
        return b == 0 ? AbstractC7539a0.f17655b : new C7568d0(this.f17861d, mo20136r(), b);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    /* renamed from: a */
    public final String mo20139a(Charset charset) {
        return new String(this.f17861d, mo20136r(), size(), charset);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    /* renamed from: a */
    public final void mo20140a(AbstractC7734z zVar) throws IOException {
        zVar.mo19641a(this.f17861d, mo20136r(), size());
    }

    /* renamed from: a */
    public final boolean m20141a(AbstractC7539a0 a0Var, int i, int i2) {
        if (i2 > a0Var.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > a0Var.size()) {
            int size2 = a0Var.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(UserProfile.CARD_CATE_SEPARATOR);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(a0Var instanceof C7601h0)) {
            return a0Var.mo20143a(0, i2).equals(mo20143a(0, i2));
        } else {
            C7601h0 h0Var = (C7601h0) a0Var;
            byte[] bArr = this.f17861d;
            byte[] bArr2 = h0Var.f17861d;
            int r = mo20136r();
            int r2 = mo20136r();
            int r3 = h0Var.mo20136r();
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

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    /* renamed from: b */
    public final boolean mo20138b() {
        int r = mo20136r();
        return C7565c4.m20286a(this.f17861d, r, size() + r);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7539a0) || size() != ((AbstractC7539a0) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C7601h0)) {
            return obj.equals(this);
        }
        C7601h0 h0Var = (C7601h0) obj;
        int c = m20379c();
        int c2 = h0Var.m20379c();
        if (c == 0 || c2 == 0 || c == c2) {
            return m20141a(h0Var, 0, size());
        }
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    /* renamed from: g */
    public byte mo20137g(int i) {
        return this.f17861d[i];
    }

    /* renamed from: r */
    public int mo20136r() {
        return 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
    public int size() {
        return this.f17861d.length;
    }
}
