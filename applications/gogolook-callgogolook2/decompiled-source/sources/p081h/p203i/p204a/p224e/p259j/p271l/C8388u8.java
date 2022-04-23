package p081h.p203i.p204a.p224e.p259j.p271l;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: h.i.a.e.j.l.u8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/u8.class */
public class C8388u8 extends AbstractC8337r8 {

    /* renamed from: c */
    public final byte[] f19333c;

    public C8388u8(byte[] bArr) {
        if (bArr != null) {
            this.f19333c = bArr;
            return;
        }
        throw new NullPointerException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: a */
    public final int mo18146a(int i, int i2, int i3) {
        return C8302p9.m18208a(i, this.f19333c, mo18139s() + i2, i3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: a */
    public final AbstractC8209k8 mo18147a(int i, int i2) {
        int b = AbstractC8209k8.m18376b(i, i2, size());
        return b == 0 ? AbstractC8209k8.f19017b : new C8263n8(this.f19333c, mo18139s() + i, b);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: a */
    public final String mo18143a(Charset charset) {
        return new String(this.f19333c, mo18139s(), size(), charset);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: a */
    public final void mo18145a(AbstractC8167i8 i8Var) throws IOException {
        i8Var.mo18008a(this.f19333c, mo18139s(), size());
    }

    /* renamed from: a */
    public final boolean m18144a(AbstractC8209k8 k8Var, int i, int i2) {
        if (i2 <= k8Var.size()) {
            int i3 = i + i2;
            if (i3 > k8Var.size()) {
                int size = k8Var.size();
                StringBuilder sb = new StringBuilder(59);
                sb.append("Ran off end of other: ");
                sb.append(i);
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                sb.append(i2);
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                sb.append(size);
                throw new IllegalArgumentException(sb.toString());
            } else if (!(k8Var instanceof C8388u8)) {
                return k8Var.mo18147a(i, i3).equals(mo18147a(0, i2));
            } else {
                C8388u8 u8Var = (C8388u8) k8Var;
                byte[] bArr = this.f19333c;
                byte[] bArr2 = u8Var.f19333c;
                int s = mo18139s();
                int s2 = mo18139s();
                int s3 = u8Var.mo18139s() + i;
                while (s2 < s + i2) {
                    if (bArr[s2] != bArr2[s3]) {
                        return false;
                    }
                    s2++;
                    s3++;
                }
                return true;
            }
        } else {
            int size2 = size();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(i2);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8209k8) || size() != ((AbstractC8209k8) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C8388u8)) {
            return obj.equals(this);
        }
        C8388u8 u8Var = (C8388u8) obj;
        int r = m18373r();
        int r2 = u8Var.m18373r();
        if (r == 0 || r2 == 0 || r == r2) {
            return m18144a(u8Var, 0, size());
        }
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: g */
    public byte mo18142g(int i) {
        return this.f19333c[i];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: h */
    public byte mo18141h(int i) {
        return this.f19333c[i];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    /* renamed from: q */
    public final boolean mo18140q() {
        int s = mo18139s();
        return C8252n.m18266a(this.f19333c, s, size() + s);
    }

    /* renamed from: s */
    public int mo18139s() {
        return 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8209k8
    public int size() {
        return this.f19333c.length;
    }
}
