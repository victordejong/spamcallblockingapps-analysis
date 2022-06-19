package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Base64Codec.class */
class Base64Codec {

    /* renamed from: a */
    private final byte[] f12496a;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/Base64Codec$LazyHolder.class */
    public static class LazyHolder {

        /* renamed from: a */
        private static final byte[] f12497a;

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
            f12497a = bArr;
        }

        private LazyHolder() {
        }
    }

    public Base64Codec() {
        this.f12496a = CodecUtils.toBytesDirect("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    }

    protected Base64Codec(byte[] bArr) {
        this.f12496a = bArr;
    }

    /* renamed from: a */
    private static int m38270a(byte b) {
        byte b2 = LazyHolder.f12497a[b];
        if (b2 >= 0) {
            return b2;
        }
        throw new IllegalArgumentException("Invalid base 64 character: '" + ((char) b) + "'");
    }

    /* renamed from: a */
    private static void m38269a(int i, byte[] bArr, int i2, byte[] bArr2, int i3) {
        int i4 = i3 + 1;
        int i5 = i2 + 1;
        int m38270a = m38270a(bArr[i2]);
        int i6 = i5 + 1;
        int m38270a2 = m38270a(bArr[i5]);
        bArr2[i3] = (byte) ((m38270a << 2) | ((m38270a2 >>> 4) & 3));
        if (i == 1) {
            CodecUtils.sanityCheckLastPos(m38270a2, 15);
            return;
        }
        int m38270a3 = m38270a(bArr[i6]);
        bArr2[i4] = (byte) ((15 & (m38270a3 >>> 2)) | ((m38270a2 & 15) << 4));
        if (i == 2) {
            CodecUtils.sanityCheckLastPos(m38270a3, 3);
        } else {
            bArr2[i4 + 1] = (byte) (((m38270a3 & 3) << 6) | m38270a(bArr[i6 + 1]));
        }
    }

    /* renamed from: a */
    private void m38266a(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.f12496a;
        int i4 = i + 1;
        byte b = bArr[i];
        bArr2[i2] = bArr3[(b >>> 2) & 63];
        int i5 = i3 + 1;
        byte b2 = bArr[i4];
        bArr2[i3] = bArr3[((b & 3) << 4) | ((b2 >>> 4) & 15)];
        byte b3 = bArr[i4 + 1];
        bArr2[i5] = bArr3[((b2 & 15) << 2) | ((b3 >>> 6) & 3)];
        bArr2[i5 + 1] = bArr3[b3 & 63];
    }

    /* renamed from: b */
    private void m38265b(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.f12496a;
        byte b = bArr[i];
        bArr2[i2] = bArr3[(b >>> 2) & 63];
        int i4 = i3 + 1;
        byte b2 = bArr[i + 1];
        bArr2[i3] = bArr3[((b & 3) << 4) | ((b2 >>> 4) & 15)];
        bArr2[i4] = bArr3[(b2 & 15) << 2];
        bArr2[i4 + 1] = (byte) 61;
    }

    /* renamed from: c */
    private void m38264c(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.f12496a;
        byte b = bArr[i];
        bArr2[i2] = bArr3[(b >>> 2) & 63];
        int i4 = i3 + 1;
        bArr2[i3] = bArr3[(b & 3) << 4];
        bArr2[i4] = (byte) 61;
        bArr2[i4 + 1] = (byte) 61;
    }

    /* renamed from: d */
    private static void m38263d(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        int i4 = i + 1;
        int m38270a = m38270a(bArr[i]);
        int i5 = i4 + 1;
        int m38270a2 = m38270a(bArr[i4]);
        bArr2[i2] = (byte) ((m38270a << 2) | ((m38270a2 >>> 4) & 3));
        int m38270a3 = m38270a(bArr[i5]);
        bArr2[i3] = (byte) (((m38270a2 & 15) << 4) | ((m38270a3 >>> 2) & 15));
        bArr2[i3 + 1] = (byte) (m38270a(bArr[i5 + 1]) | ((m38270a3 & 3) << 6));
    }

    /* renamed from: a */
    public final byte[] m38268a(byte[] bArr) {
        int length = bArr.length / 3;
        int length2 = bArr.length % 3;
        int i = 0;
        if (length2 == 0) {
            byte[] bArr2 = new byte[length * 4];
            int i2 = 0;
            int i3 = 0;
            while (i2 < bArr.length) {
                m38266a(bArr, i2, bArr2, i3);
                i2 += 3;
                i3 += 4;
            }
            return bArr2;
        }
        byte[] bArr3 = new byte[(length + 1) * 4];
        int i4 = 0;
        while (i < bArr.length - length2) {
            m38266a(bArr, i, bArr3, i4);
            i += 3;
            i4 += 4;
        }
        if (length2 == 1) {
            m38264c(bArr, i, bArr3, i4);
        } else if (length2 == 2) {
            m38265b(bArr, i, bArr3, i4);
        }
        return bArr3;
    }

    /* renamed from: a */
    public final byte[] m38267a(byte[] bArr, int i) {
        if (i % 4 == 0) {
            int i2 = i - 1;
            int i3 = 0;
            while (i3 < 2 && i2 >= 0 && bArr[i2] == 61) {
                i2--;
                i3++;
            }
            int i4 = 2;
            if (i3 != 1) {
                i4 = i3 != 2 ? 3 : 1;
            }
            int i5 = ((i / 4) * 3) - (3 - i4);
            byte[] bArr2 = new byte[i5];
            int i6 = 0;
            int i7 = 0;
            while (i7 < i5 - (i4 % 3)) {
                m38263d(bArr, i6, bArr2, i7);
                i6 += 4;
                i7 += 3;
            }
            if (i4 < 3) {
                m38269a(i4, bArr, i6, bArr2, i7);
            }
            return bArr2;
        }
        throw new IllegalArgumentException("Input is expected to be encoded in multiple of 4 bytes but found: ".concat(String.valueOf(i)));
    }
}
