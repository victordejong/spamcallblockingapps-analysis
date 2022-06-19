package com.google.zxing.p411e.p413b;
/* renamed from: com.google.zxing.e.b.d */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/d.class */
final class C16218d {
    private C16218d() {
    }

    /* renamed from: a */
    public static int m7622a(C16215b c16215b, boolean z) {
        int i;
        int i2;
        byte b;
        int i3 = z ? c16215b.f57225c : c16215b.f57224b;
        int i4 = z ? c16215b.f57224b : c16215b.f57225c;
        byte[][] bArr = c16215b.f57223a;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i5 < i3) {
                byte b2 = -1;
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    i = i9;
                    if (i8 >= i4) {
                        break;
                    }
                    byte b3 = z ? bArr[i5][i8] : bArr[i8][i5];
                    if (b3 == b2) {
                        i2 = i + 1;
                        b = b2;
                    } else {
                        int i10 = i7;
                        if (i >= 5) {
                            i10 = i7 + (i - 5) + 3;
                        }
                        b = b3;
                        i2 = 1;
                        i7 = i10;
                    }
                    i8++;
                    b2 = b;
                    i9 = i2;
                }
                int i11 = i7;
                if (i >= 5) {
                    i11 = i7 + (i - 5) + 3;
                }
                i5++;
                i6 = i11;
            } else {
                return i7;
            }
        }
    }

    /* renamed from: a */
    public static boolean m7621a(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, bArr.length);
        for (int max = Math.max(i, 0); max < min; max++) {
            if (bArr[max] == 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m7620a(byte[][] bArr, int i, int i2, int i3) {
        int min = Math.min(i3, bArr.length);
        for (int max = Math.max(i2, 0); max < min; max++) {
            if (bArr[max][i] == 1) {
                return false;
            }
        }
        return true;
    }
}
