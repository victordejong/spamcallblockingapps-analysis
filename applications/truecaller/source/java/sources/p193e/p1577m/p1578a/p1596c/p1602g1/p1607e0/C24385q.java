package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.g1.e0.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/q.class */
public final class C24385q {

    /* renamed from: a */
    public final int f67994a;

    /* renamed from: b */
    public boolean f67995b;

    /* renamed from: c */
    public boolean f67996c;

    /* renamed from: d */
    public byte[] f67997d;

    /* renamed from: e */
    public int f67998e;

    public C24385q(int i, int i2) {
        this.f67994a = i;
        byte[] bArr = new byte[i2 + 3];
        this.f67997d = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public void m5179a(byte[] bArr, int i, int i2) {
        if (!this.f67995b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f67997d;
        int length = bArr2.length;
        int i4 = this.f67998e;
        if (length < i4 + i3) {
            this.f67997d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
        }
        System.arraycopy(bArr, i, this.f67997d, this.f67998e, i3);
        this.f67998e += i3;
    }

    /* renamed from: b */
    public boolean m5178b(int i) {
        if (!this.f67995b) {
            return false;
        }
        this.f67998e -= i;
        this.f67995b = false;
        this.f67996c = true;
        return true;
    }

    /* renamed from: c */
    public void m5177c() {
        this.f67995b = false;
        this.f67996c = false;
    }

    /* renamed from: d */
    public void m5176d(int i) {
        boolean z = true;
        C26232y.m2286x(!this.f67995b);
        if (i != this.f67994a) {
            z = false;
        }
        this.f67995b = z;
        if (z) {
            this.f67998e = 3;
            this.f67996c = false;
        }
    }
}
