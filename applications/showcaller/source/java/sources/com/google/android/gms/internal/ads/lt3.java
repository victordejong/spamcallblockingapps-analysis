package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lt3.class */
final class lt3 {

    /* renamed from: a */
    private final C6694la f26273a = new C6694la(8);

    /* renamed from: b */
    private int f26274b;

    /* renamed from: b */
    private final long m13417b(vq3 vq3Var) {
        pq3 pq3Var = (pq3) vq3Var;
        int i = 0;
        pq3Var.mo9882l(this.f26273a.m13634q(), 0, 1, false);
        int i2 = this.f26273a.m13634q()[0] & 255;
        if (i2 != 0) {
            int i3 = 128;
            int i4 = 0;
            while ((i2 & i3) == 0) {
                i3 >>= 1;
                i4++;
            }
            int i5 = i2 & (i3 ^ (-1));
            pq3Var.mo9882l(this.f26273a.m13634q(), 1, i4, false);
            while (i < i4) {
                i++;
                i5 = (this.f26273a.m13634q()[i] & 255) + (i5 << 8);
            }
            this.f26274b += i4 + 1;
            return i5;
        }
        return Long.MIN_VALUE;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* renamed from: a */
    public final boolean m13418a(vq3 vq3Var) {
        long m13417b;
        int i;
        ?? mo9464n = vq3Var.mo9464n();
        int i2 = (mo9464n > (-1L) ? 1 : (mo9464n == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = mo9464n > 1024 ? (char) 1024 : mo9464n;
        }
        int i3 = c;
        pq3 pq3Var = (pq3) vq3Var;
        pq3Var.mo9882l(this.f26273a.m13634q(), 0, 4, false);
        char m13657B = this.f26273a.m13657B();
        this.f26274b = 4;
        while (m13657B != 440786851) {
            int i4 = this.f26274b + 1;
            this.f26274b = i4;
            if (i4 == i3) {
                return false;
            }
            pq3Var.mo9882l(this.f26273a.m13634q(), 0, 1, false);
            m13657B = ((m13657B << '\b') & (-256)) | (this.f26273a.m13634q()[0] & 255);
        }
        long m13417b2 = m13417b(vq3Var);
        long j = this.f26274b;
        if (m13417b2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + m13417b2 >= mo9464n) {
                return false;
            }
            while (true) {
                int i5 = (this.f26274b > (j + m13417b2) ? 1 : (this.f26274b == (j + m13417b2) ? 0 : -1));
                if (i5 >= 0) {
                    return i5 == 0;
                } else if (m13417b(vq3Var) == Long.MIN_VALUE || (m13417b = m13417b(vq3Var)) < 0) {
                    return false;
                } else {
                    if (i != 0) {
                        int i6 = (int) m13417b;
                        pq3Var.m12195q(i6, false);
                        this.f26274b += i6;
                    }
                }
            }
        } else {
            return false;
        }
    }
}
