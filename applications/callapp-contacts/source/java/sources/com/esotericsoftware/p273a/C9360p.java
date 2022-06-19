package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.p */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/p.class */
public final class C9360p {

    /* renamed from: a */
    int f32100a;

    /* renamed from: b */
    int f32101b;

    /* renamed from: c */
    int f32102c;

    /* renamed from: d */
    int f32103d;

    /* renamed from: e */
    int f32104e;

    /* renamed from: f */
    C9356l f32105f;

    /* renamed from: g */
    C9360p f32106g;

    /* renamed from: h */
    C9353i f32107h;

    /* renamed from: i */
    C9360p f32108i;

    /* renamed from: j */
    private int f32109j;

    /* renamed from: k */
    private int[] f32110k;

    /* renamed from: a */
    private void m24562a(int i, int i2) {
        if (this.f32110k == null) {
            this.f32110k = new int[6];
        }
        int i3 = this.f32109j;
        int[] iArr = this.f32110k;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f32110k = iArr2;
        }
        int[] iArr3 = this.f32110k;
        int i4 = this.f32109j;
        int i5 = i4 + 1;
        this.f32109j = i5;
        iArr3[i4] = i;
        this.f32109j = i5 + 1;
        iArr3[i5] = i2;
    }

    /* renamed from: a */
    public final C9360p m24563a() {
        C9356l c9356l = this.f32105f;
        return c9356l == null ? this : c9356l.f32072b;
    }

    /* renamed from: a */
    public final void m24560a(C9348d c9348d, int i, boolean z) {
        if ((this.f32100a & 2) != 0) {
            if (z) {
                c9348d.m24644c(this.f32102c - i);
            } else {
                c9348d.m24646b(this.f32102c - i);
            }
        } else if (z) {
            m24562a((-1) - i, c9348d.f31987b);
            c9348d.m24644c(-1);
        } else {
            m24562a(i, c9348d.f31987b);
            c9348d.m24646b(-1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x014e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24559a(com.esotericsoftware.p273a.C9360p r7, long r8, int r10) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9360p.m24559a(com.esotericsoftware.a.p, long, int):void");
    }

    /* renamed from: a */
    public final boolean m24561a(int i, byte[] bArr) {
        int i2;
        this.f32100a |= 2;
        this.f32102c = i;
        int i3 = 0;
        boolean z = false;
        while (i3 < this.f32109j) {
            int[] iArr = this.f32110k;
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            int i6 = iArr[i4];
            if (i5 >= 0) {
                int i7 = i - i5;
                if (i7 < -32768 || i7 > 32767) {
                    int i8 = i6 - 1;
                    if ((bArr[i8] & 255) <= 168) {
                        bArr[i8] = (byte) (i2 + 49);
                    } else {
                        bArr[i8] = (byte) (i2 + 20);
                    }
                    z = true;
                }
                bArr[i6] = (byte) (i7 >>> 8);
                bArr[i6 + 1] = (byte) i7;
            } else {
                int i9 = i5 + i + 1;
                int i10 = i6 + 1;
                bArr[i6] = (byte) (i9 >>> 24);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (i9 >>> 16);
                bArr[i11] = (byte) (i9 >>> 8);
                bArr[i11 + 1] = (byte) i9;
            }
            i3 = i4 + 1;
        }
        return z;
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("L");
        stringBuffer.append(System.identityHashCode(this));
        return stringBuffer.toString();
    }
}
