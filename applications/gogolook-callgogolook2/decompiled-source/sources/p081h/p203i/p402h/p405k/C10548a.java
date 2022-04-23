package p081h.p203i.p402h.p405k;

import java.util.Arrays;
/* renamed from: h.i.h.k.a */
/* loaded from: classes2-dex2jar.jar:h/i/h/k/a.class */
public final class C10548a implements Cloneable {

    /* renamed from: a */
    public int[] f23978a;

    /* renamed from: b */
    public int f23979b;

    public C10548a() {
        this.f23979b = 0;
        this.f23978a = new int[1];
    }

    public C10548a(int[] iArr, int i) {
        this.f23978a = iArr;
        this.f23979b = i;
    }

    /* renamed from: c */
    public static int[] m11451c(int i) {
        return new int[(i + 31) / 32];
    }

    /* renamed from: a */
    public final void m11458a(int i) {
        if (i > (this.f23978a.length << 5)) {
            int[] c = m11451c(i);
            int[] iArr = this.f23978a;
            System.arraycopy(iArr, 0, c, 0, iArr.length);
            this.f23978a = c;
        }
    }

    /* renamed from: a */
    public void m11457a(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        m11458a(this.f23979b + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            m11454a(z);
            i2--;
        }
    }

    /* renamed from: a */
    public void m11456a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                i5 = i5;
                if (m11453b(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    /* renamed from: a */
    public void m11455a(C10548a aVar) {
        int i = aVar.f23979b;
        m11458a(this.f23979b + i);
        for (int i2 = 0; i2 < i; i2++) {
            m11454a(aVar.m11453b(i2));
        }
    }

    /* renamed from: a */
    public void m11454a(boolean z) {
        m11458a(this.f23979b + 1);
        if (z) {
            int[] iArr = this.f23978a;
            int i = this.f23979b;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f23979b++;
    }

    /* renamed from: b */
    public void m11452b(C10548a aVar) {
        if (this.f23979b == aVar.f23979b) {
            int i = 0;
            while (true) {
                int[] iArr = this.f23978a;
                if (i < iArr.length) {
                    iArr[i] = iArr[i] ^ aVar.f23978a[i];
                    i++;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Sizes don't match");
        }
    }

    /* renamed from: b */
    public boolean m11453b(int i) {
        return ((1 << (i & 31)) & this.f23978a[i / 32]) != 0;
    }

    public C10548a clone() {
        return new C10548a((int[]) this.f23978a.clone(), this.f23979b);
    }

    /* renamed from: d */
    public int m11450d() {
        return this.f23979b;
    }

    /* renamed from: e */
    public int m11449e() {
        return (this.f23979b + 7) / 8;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C10548a)) {
            return false;
        }
        C10548a aVar = (C10548a) obj;
        return this.f23979b == aVar.f23979b && Arrays.equals(this.f23978a, aVar.f23978a);
    }

    public int hashCode() {
        return (this.f23979b * 31) + Arrays.hashCode(this.f23978a);
    }

    public String toString() {
        int i = this.f23979b;
        StringBuilder sb = new StringBuilder(i + (i / 8) + 1);
        for (int i2 = 0; i2 < this.f23979b; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(m11453b(i2) ? 'X' : '.');
        }
        return sb.toString();
    }
}
