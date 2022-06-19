package p000;

import java.util.Arrays;
/* renamed from: bn */
/* loaded from: classes-dex2jar.jar:bn.class */
public final class C0255bn {

    /* renamed from: a */
    public final int f1993a;

    /* renamed from: b */
    public boolean f1994b;

    /* renamed from: c */
    public boolean f1995c;

    /* renamed from: d */
    public byte[] f1996d;

    /* renamed from: e */
    public int f1997e;

    public C0255bn(int i, int i2) {
        this.f1993a = i;
        byte[] bArr = new byte[i2 + 3];
        this.f1996d = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public void m5602a(byte[] bArr, int i, int i2) {
        if (!this.f1994b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f1996d;
        int length = bArr2.length;
        int i4 = this.f1997e;
        if (length < i4 + i3) {
            this.f1996d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
        }
        System.arraycopy(bArr, i, this.f1996d, this.f1997e, i3);
        this.f1997e += i3;
    }

    /* renamed from: b */
    public boolean m5601b(int i) {
        if (!this.f1994b) {
            return false;
        }
        this.f1997e -= i;
        this.f1994b = false;
        this.f1995c = true;
        return true;
    }

    /* renamed from: c */
    public boolean m5600c() {
        return this.f1995c;
    }

    /* renamed from: d */
    public void m5599d() {
        this.f1994b = false;
        this.f1995c = false;
    }

    /* renamed from: e */
    public void m5598e(int i) {
        boolean z = true;
        it.f(!this.f1994b);
        if (i != this.f1993a) {
            z = false;
        }
        this.f1994b = z;
        if (z) {
            this.f1997e = 3;
            this.f1995c = false;
        }
    }
}
