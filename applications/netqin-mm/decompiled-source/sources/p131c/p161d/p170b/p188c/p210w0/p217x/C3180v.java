package p131c.p161d.p170b.p188c.p210w0.p217x;

import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.w0.x.v */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/v.class */
public final class C3180v {

    /* renamed from: a */
    public final int f11733a;

    /* renamed from: b */
    public boolean f11734b;

    /* renamed from: c */
    public boolean f11735c;

    /* renamed from: d */
    public byte[] f11736d;

    /* renamed from: e */
    public int f11737e;

    public C3180v(int i, int i2) {
        this.f11733a = i;
        byte[] bArr = new byte[i2 + 3];
        this.f11736d = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public void m27589a(byte[] bArr, int i, int i2) {
        if (this.f11734b) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f11736d;
            int length = bArr2.length;
            int i4 = this.f11737e;
            if (length < i4 + i3) {
                this.f11736d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f11736d, this.f11737e, i3);
            this.f11737e += i3;
        }
    }

    /* renamed from: a */
    public boolean m27591a() {
        return this.f11735c;
    }

    /* renamed from: a */
    public boolean m27590a(int i) {
        if (!this.f11734b) {
            return false;
        }
        this.f11737e -= i;
        this.f11734b = false;
        this.f11735c = true;
        return true;
    }

    /* renamed from: b */
    public void m27588b() {
        this.f11734b = false;
        this.f11735c = false;
    }

    /* renamed from: b */
    public void m27587b(int i) {
        boolean z = true;
        C2877e.m28731b(!this.f11734b);
        if (i != this.f11733a) {
            z = false;
        }
        this.f11734b = z;
        if (z) {
            this.f11737e = 3;
            this.f11735c = false;
        }
    }
}
