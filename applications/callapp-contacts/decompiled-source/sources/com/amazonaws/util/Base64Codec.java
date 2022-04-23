package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Base64Codec.class */
class Base64Codec {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f6903a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/Base64Codec$LazyHolder.class */
    public static class LazyHolder {

        /* renamed from: a  reason: collision with root package name */
        private static final byte[] f6904a;

        static {
            byte[] bArr = new byte[123];
            for (int i = 0; i <= 122; i++) {
                if (i >= 65 && i <= 90) {
                    bArr[i] = (byte) (i - 65);
                } else if (i >= 48 && i <= 57) {
                    bArr[i] = (byte) (i + 4);
                } else if (i == 43) {
                    bArr[i] = (byte) (i + 19);
                } else if (i == 47) {
                    bArr[i] = (byte) (i + 16);
                } else if (i < 97 || i > 122) {
                    bArr[i] = (byte) (-1);
                } else {
                    bArr[i] = (byte) (i - 71);
                }
            }
            f6904a = bArr;
        }

        private LazyHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Base64Codec() {
        this.f6903a = CodecUtils.toBytesDirect("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    }

    protected Base64Codec(byte[] bArr) {
        this.f6903a = bArr;
    }

    private static int a(byte b2) {
        byte b3 = LazyHolder.f6904a[b2];
        if (b3 >= 0) {
            return b3;
        }
        throw new IllegalArgumentException("Invalid base 64 character: '" + ((char) b2) + "'");
    }

    private static void a(int i, byte[] bArr, int i2, byte[] bArr2, int i3) {
        int i4 = i3 + 1;
        int i5 = i2 + 1;
        int a2 = a(bArr[i2]);
        int i6 = i5 + 1;
        int a3 = a(bArr[i5]);
        bArr2[i3] = (byte) ((a2 << 2) | ((a3 >>> 4) & 3));
        if (i == 1) {
            CodecUtils.sanityCheckLastPos(a3, 15);
            return;
        }
        int a4 = a(bArr[i6]);
        bArr2[i4] = (byte) ((15 & (a4 >>> 2)) | ((a3 & 15) << 4));
        if (i == 2) {
            CodecUtils.sanityCheckLastPos(a4, 3);
        } else {
            bArr2[i4 + 1] = (byte) (((a4 & 3) << 6) | a(bArr[i6 + 1]));
        }
    }

    private void a(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.f6903a;
        int i4 = i + 1;
        byte b2 = bArr[i];
        bArr2[i2] = bArr3[(b2 >>> 2) & 63];
        int i5 = i3 + 1;
        byte b3 = bArr[i4];
        bArr2[i3] = bArr3[((b2 & 3) << 4) | ((b3 >>> 4) & 15)];
        byte b4 = bArr[i4 + 1];
        bArr2[i5] = bArr3[((b3 & 15) << 2) | ((b4 >>> 6) & 3)];
        bArr2[i5 + 1] = bArr3[b4 & 63];
    }

    private void b(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.f6903a;
        byte b2 = bArr[i];
        bArr2[i2] = bArr3[(b2 >>> 2) & 63];
        int i4 = i3 + 1;
        byte b3 = bArr[i + 1];
        bArr2[i3] = bArr3[((b2 & 3) << 4) | ((b3 >>> 4) & 15)];
        bArr2[i4] = bArr3[(b3 & 15) << 2];
        bArr2[i4 + 1] = (byte) 61;
    }

    private void c(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.f6903a;
        byte b2 = bArr[i];
        bArr2[i2] = bArr3[(b2 >>> 2) & 63];
        int i4 = i3 + 1;
        bArr2[i3] = bArr3[(b2 & 3) << 4];
        bArr2[i4] = (byte) 61;
        bArr2[i4 + 1] = (byte) 61;
    }

    private static void d(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        int i4 = i + 1;
        int a2 = a(bArr[i]);
        int i5 = i4 + 1;
        int a3 = a(bArr[i4]);
        bArr2[i2] = (byte) ((a2 << 2) | ((a3 >>> 4) & 3));
        int a4 = a(bArr[i5]);
        bArr2[i3] = (byte) (((a3 & 15) << 4) | ((a4 >>> 2) & 15));
        bArr2[i3 + 1] = (byte) (a(bArr[i5 + 1]) | ((a4 & 3) << 6));
    }

    public final byte[] a(byte[] bArr) {
        int length = bArr.length / 3;
        int length2 = bArr.length % 3;
        int i = 0;
        int i2 = 0;
        if (length2 == 0) {
            byte[] bArr2 = new byte[length * 4];
            int i3 = 0;
            while (i2 < bArr.length) {
                a(bArr, i2, bArr2, i3);
                i2 += 3;
                i3 += 4;
            }
            return bArr2;
        }
        byte[] bArr3 = new byte[(length + 1) * 4];
        int i4 = 0;
        while (i < bArr.length - length2) {
            a(bArr, i, bArr3, i4);
            i += 3;
            i4 += 4;
        }
        if (length2 == 1) {
            c(bArr, i, bArr3, i4);
        } else if (length2 == 2) {
            b(bArr, i, bArr3, i4);
        }
        return bArr3;
    }

    public final byte[] a(byte[] bArr, int i) {
        int i2;
        if (i % 4 == 0) {
            int i3 = i - 1;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i2 = 2;
                if (i5 >= 2 || i3 < 0 || bArr[i3] != 61) {
                    break;
                }
                i3--;
                i5++;
            }
            if (i5 != 1) {
                i2 = i5 != 2 ? 3 : 1;
            }
            int i6 = ((i / 4) * 3) - (3 - i2);
            byte[] bArr2 = new byte[i6];
            int i7 = 0;
            while (i4 < i6 - (i2 % 3)) {
                d(bArr, i7, bArr2, i4);
                i7 += 4;
                i4 += 3;
            }
            if (i2 < 3) {
                a(i2, bArr, i7, bArr2, i4);
            }
            return bArr2;
        }
        throw new IllegalArgumentException("Input is expected to be encoded in multiple of 4 bytes but found: ".concat(String.valueOf(i)));
    }
}
