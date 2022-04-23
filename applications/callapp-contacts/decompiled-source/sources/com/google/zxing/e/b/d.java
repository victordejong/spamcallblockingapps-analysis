package com.google.zxing.e.b;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/d.class */
final class d {
    private d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(b bVar, boolean z) {
        int i = z ? bVar.f33025c : bVar.f33024b;
        int i2 = z ? bVar.f33024b : bVar.f33025c;
        byte[][] bArr = bVar.f33023a;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            byte b2 = -1;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                byte b3 = z ? bArr[i4][i6] : bArr[i6][i4];
                if (b3 == b2) {
                    i5++;
                    b2 = b2;
                } else {
                    i3 = i3;
                    if (i5 >= 5) {
                        i3 += (i5 - 5) + 3;
                    }
                    b2 = b3;
                    i5 = 1;
                }
            }
            i3 = i3;
            if (i5 >= 5) {
                i3 += (i5 - 5) + 3;
            }
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, bArr.length);
        for (int max = Math.max(i, 0); max < min; max++) {
            if (bArr[max] == 1) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(byte[][] bArr, int i, int i2, int i3) {
        int min = Math.min(i3, bArr.length);
        for (int max = Math.max(i2, 0); max < min; max++) {
            if (bArr[max][i] == 1) {
                return false;
            }
        }
        return true;
    }
}
