package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jf2.class */
final class jf2 {

    /* renamed from: a */
    private static final hf2 f6896a;

    static {
        if (ff2.m7534f() && ff2.m7533g()) {
            int i = fb2.f6484a;
        }
        f6896a = new if2();
    }

    /* renamed from: a */
    public static boolean m6988a(byte[] bArr) {
        return f6896a.m7274a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static boolean m6987b(byte[] bArr, int i, int i2) {
        return f6896a.m7274a(bArr, i, i2);
    }

    /* renamed from: c */
    public static int m6986c(int i, byte[] bArr, int i2, int i3) {
        return f6896a.m7273b(i, bArr, i2, i3);
    }

    /* renamed from: d */
    static int m6985d(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (charAt2 >= 55296) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) >= 65536) {
                                i2 = i4 + 1;
                                i3 = i6;
                            } else {
                                throw new zzewh(i4, length2);
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: e */
    static int m6984e(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        char charAt;
        int length = charSequence.length();
        int i6 = i2 + i;
        int i7 = 0;
        while (i7 < length && (i5 = i7 + i) < i6 && (charAt = charSequence.charAt(i7)) < 128) {
            bArr[i5] = (byte) charAt;
            i7++;
        }
        if (i7 == length) {
            i3 = i + length;
        } else {
            int i8 = i + i7;
            int i9 = i7;
            while (true) {
                i3 = i8;
                if (i9 >= length) {
                    break;
                }
                char charAt2 = charSequence.charAt(i9);
                if (charAt2 < 128 && i8 < i6) {
                    i8++;
                    bArr[i8] = (byte) charAt2;
                } else if (charAt2 < 2048 && i8 <= i6 - 2) {
                    int i10 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 >>> 6) | 960);
                    i8 = i10 + 1;
                    bArr[i10] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 < 55296 || charAt2 > 57343) && i8 <= i6 - 3) {
                    int i11 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 >>> '\f') | 480);
                    int i12 = i11 + 1;
                    bArr[i11] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i8 = i12 + 1;
                    bArr[i12] = (byte) ((charAt2 & '?') | 128);
                } else if (i8 <= i6 - 4) {
                    int i13 = i9 + 1;
                    if (i13 == charSequence.length()) {
                        break;
                    }
                    char charAt3 = charSequence.charAt(i13);
                    if (!Character.isSurrogatePair(charAt2, charAt3)) {
                        i9 = i13;
                        break;
                    }
                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                    int i14 = i8 + 1;
                    bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                    int i15 = i14 + 1;
                    bArr[i14] = (byte) (((codePoint >>> 12) & 63) | 128);
                    int i16 = i15 + 1;
                    bArr[i15] = (byte) (((codePoint >>> 6) & 63) | 128);
                    i8 = i16 + 1;
                    bArr[i16] = (byte) ((codePoint & 63) | 128);
                    i9 = i13;
                } else if (charAt2 < 55296 || charAt2 > 57343 || ((i4 = i9 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i4)))) {
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Failed writing ");
                    sb.append(charAt2);
                    sb.append(" at index ");
                    sb.append(i8);
                    throw new ArrayIndexOutOfBoundsException(sb.toString());
                } else {
                    throw new zzewh(i9, length);
                }
                i9++;
            }
            throw new zzewh(i9 - 1, length);
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static String m6983f(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int length = bArr.length;
        if ((i | i2 | ((length - i) - i2)) >= 0) {
            int i5 = i + i2;
            char[] cArr = new char[i2];
            int i6 = 0;
            int i7 = i;
            while (true) {
                i3 = i6;
                i4 = i7;
                if (i7 >= i5) {
                    break;
                }
                byte b = bArr[i7];
                if (!gf2.m7395a(b)) {
                    i3 = i6;
                    i4 = i7;
                    break;
                }
                i7++;
                cArr[i6] = (char) b;
                i6++;
            }
            while (i4 < i5) {
                int i8 = i4 + 1;
                byte b2 = bArr[i4];
                if (gf2.m7395a(b2)) {
                    int i9 = i3 + 1;
                    cArr[i3] = (char) b2;
                    while (true) {
                        i3 = i9;
                        i4 = i8;
                        if (i8 < i5) {
                            byte b3 = bArr[i8];
                            if (!gf2.m7395a(b3)) {
                                i3 = i9;
                                i4 = i8;
                                break;
                            }
                            i8++;
                            i9++;
                            cArr[i9] = (char) b3;
                        }
                    }
                } else if (b2 < -32) {
                    if (i8 < i5) {
                        gf2.m7394b(b2, bArr[i8], cArr, i3);
                        i4 = i8 + 1;
                        i3++;
                    } else {
                        throw zzett.zzj();
                    }
                } else if (b2 < -16) {
                    if (i8 < i5 - 1) {
                        int i10 = i8 + 1;
                        gf2.m7393c(b2, bArr[i8], bArr[i10], cArr, i3);
                        i4 = i10 + 1;
                        i3++;
                    } else {
                        throw zzett.zzj();
                    }
                } else if (i8 < i5 - 2) {
                    int i11 = i8 + 1;
                    int i12 = i11 + 1;
                    gf2.m7392d(b2, bArr[i8], bArr[i11], bArr[i12], cArr, i3);
                    i3 += 2;
                    i4 = i12 + 1;
                } else {
                    throw zzett.zzj();
                }
            }
            return new String(cArr, 0, i3);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: i */
    static /* synthetic */ int m6980i(byte[] bArr, int i, int i2) {
        int i3;
        byte b = bArr[i - 1];
        int i4 = i2 - i;
        if (i4 == 0) {
            i3 = b;
            if (b > -12) {
                i3 = -1;
            }
        } else if (i4 == 1) {
            i3 = m6979j(b, bArr[i]);
        } else if (i4 == 2) {
            i3 = m6978k(b, bArr[i], bArr[i + 1]);
        } else {
            throw new AssertionError();
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static int m6979j(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static int m6978k(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }
}
