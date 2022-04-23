package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Base64Codec.class */
public class Base64Codec implements Codec {
    public final byte[] ALPAHBETS = CodecUtils.toBytesDirect("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");

    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/Base64Codec$LazyHolder.class */
    public static class LazyHolder {
        public static final byte[] DECODED = decodeTable();

        public static byte[] decodeTable() {
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
            return bArr;
        }
    }

    public byte[] decode(byte[] bArr, int i) {
        if (i % 4 == 0) {
            int i2 = i - 1;
            int i3 = 0;
            while (i3 < 2 && i2 > -1 && bArr[i2] == 61) {
                i2--;
                i3++;
            }
            int i4 = 1;
            if (i3 == 0) {
                i4 = 3;
            } else if (i3 == 1) {
                i4 = 2;
            } else if (i3 != 2) {
                throw new Error("Impossible");
            }
            byte[] bArr2 = new byte[((i / 4) * 3) - (3 - i4)];
            int i5 = 0;
            int i6 = 0;
            while (i6 < bArr2.length - (i4 % 3)) {
                decode4bytes(bArr, i5, bArr2, i6);
                i5 += 4;
                i6 += 3;
            }
            if (i4 < 3) {
                decode1to3bytes(i4, bArr, i5, bArr2, i6);
            }
            return bArr2;
        }
        throw new IllegalArgumentException("Input is expected to be encoded in multiple of 4 bytes but found: " + i);
    }

    public void decode1to3bytes(int i, byte[] bArr, int i2, byte[] bArr2, int i3) {
        int i4 = i3 + 1;
        int i5 = i2 + 1;
        int pos = pos(bArr[i2]);
        int i6 = i5 + 1;
        int pos2 = pos(bArr[i5]);
        bArr2[i3] = (byte) ((pos << 2) | ((pos2 >>> 4) & 3));
        if (i == 1) {
            CodecUtils.sanityCheckLastPos(pos2, 15);
            return;
        }
        int pos3 = pos(bArr[i6]);
        bArr2[i4] = (byte) ((15 & (pos3 >>> 2)) | ((pos2 & 15) << 4));
        if (i == 2) {
            CodecUtils.sanityCheckLastPos(pos3, 3);
        } else {
            bArr2[i4 + 1] = (byte) (((pos3 & 3) << 6) | pos(bArr[i6 + 1]));
        }
    }

    public void decode4bytes(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        int i4 = i + 1;
        int pos = pos(bArr[i]);
        int i5 = i4 + 1;
        int pos2 = pos(bArr[i4]);
        bArr2[i2] = (byte) ((pos << 2) | ((pos2 >>> 4) & 3));
        int pos3 = pos(bArr[i5]);
        bArr2[i3] = (byte) (((pos2 & 15) << 4) | ((pos3 >>> 2) & 15));
        bArr2[i3 + 1] = (byte) (pos(bArr[i5 + 1]) | ((pos3 & 3) << 6));
    }

    public byte[] encode(byte[] bArr) {
        int length = bArr.length / 3;
        int length2 = bArr.length % 3;
        int i = 0;
        int i2 = 0;
        if (length2 == 0) {
            byte[] bArr2 = new byte[length * 4];
            int i3 = 0;
            while (i2 < bArr.length) {
                encode3bytes(bArr, i2, bArr2, i3);
                i2 += 3;
                i3 += 4;
            }
            return bArr2;
        }
        byte[] bArr3 = new byte[(length + 1) * 4];
        int i4 = 0;
        while (i < bArr.length - length2) {
            encode3bytes(bArr, i, bArr3, i4);
            i += 3;
            i4 += 4;
        }
        if (length2 == 1) {
            encode1byte(bArr, i, bArr3, i4);
        } else if (length2 == 2) {
            encode2bytes(bArr, i, bArr3, i4);
        }
        return bArr3;
    }

    public void encode1byte(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.ALPAHBETS;
        byte b = bArr[i];
        bArr2[i2] = bArr3[(b >>> 2) & 63];
        int i4 = i3 + 1;
        bArr2[i3] = bArr3[(b & 3) << 4];
        bArr2[i4] = (byte) 61;
        bArr2[i4 + 1] = (byte) 61;
    }

    public void encode2bytes(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.ALPAHBETS;
        byte b = bArr[i];
        bArr2[i2] = bArr3[(b >>> 2) & 63];
        int i4 = i3 + 1;
        byte b2 = bArr[i + 1];
        bArr2[i3] = bArr3[((b & 3) << 4) | ((b2 >>> 4) & 15)];
        bArr2[i4] = bArr3[(b2 & 15) << 2];
        bArr2[i4 + 1] = (byte) 61;
    }

    public void encode3bytes(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i2 + 1;
        byte[] bArr3 = this.ALPAHBETS;
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

    public int pos(byte b) {
        byte b2 = LazyHolder.DECODED[b];
        if (b2 > -1) {
            return b2;
        }
        throw new IllegalArgumentException("Invalid base 64 character: '" + ((char) b) + "'");
    }
}
