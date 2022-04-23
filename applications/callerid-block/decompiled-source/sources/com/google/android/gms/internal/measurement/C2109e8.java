package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.e8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/e8.class */
final class C2109e8 {

    /* renamed from: a */
    private static final AbstractC2100c8 f9747a;

    static {
        if (C2087a8.m4450f() && C2087a8.m4449g()) {
            int i = C2143l4.f9782a;
        }
        f9747a = new d8();
    }

    /* renamed from: a */
    public static boolean m4348a(byte[] bArr) {
        return f9747a.m4409a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static boolean m4347b(byte[] bArr, int i, int i2) {
        return f9747a.m4409a(bArr, i, i2);
    }

    /* renamed from: c */
    static int m4346c(CharSequence charSequence) {
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
                                throw new zzkj(i4, length2);
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

    /* renamed from: d */
    static int m4345d(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                    throw new zzkj(i9, length);
                }
                i9++;
            }
            throw new zzkj(i9 - 1, length);
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static String m4344e(byte[] bArr, int i, int i2) {
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
                if (!C2093b8.m4425a(b)) {
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
                if (C2093b8.m4425a(b2)) {
                    int i9 = i3 + 1;
                    cArr[i3] = (char) b2;
                    while (true) {
                        i3 = i9;
                        i4 = i8;
                        if (i8 < i5) {
                            byte b3 = bArr[i8];
                            if (!C2093b8.m4425a(b3)) {
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
                        C2093b8.m4424b(b2, bArr[i8], cArr, i3);
                        i4 = i8 + 1;
                        i3++;
                    } else {
                        throw zzib.zzf();
                    }
                } else if (b2 < -16) {
                    if (i8 < i5 - 1) {
                        int i10 = i8 + 1;
                        C2093b8.m4423c(b2, bArr[i8], bArr[i10], cArr, i3);
                        i4 = i10 + 1;
                        i3++;
                    } else {
                        throw zzib.zzf();
                    }
                } else if (i8 < i5 - 2) {
                    int i11 = i8 + 1;
                    int i12 = i11 + 1;
                    C2093b8.m4422d(b2, bArr[i8], bArr[i11], bArr[i12], cArr, i3);
                    i3 += 2;
                    i4 = i12 + 1;
                } else {
                    throw zzib.zzf();
                }
            }
            return new String(cArr, 0, i3);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
        if (r0 > (-12)) goto L_0x0073;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ int m4343f(byte[] r4, int r5, int r6) {
        /*
            r0 = r4
            r1 = r5
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r7 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 - r1
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x006b
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x004e
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L_0x0046
            r0 = r4
            r1 = r5
            r0 = r0[r1]
            r6 = r0
            r0 = r4
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            r0 = r0[r1]
            r5 = r0
            r0 = r7
            r1 = -12
            if (r0 > r1) goto L_0x0073
            r0 = r6
            r1 = -65
            if (r0 > r1) goto L_0x0073
            r0 = r5
            r1 = -65
            if (r0 <= r1) goto L_0x0037
            goto L_0x0073
        L_0x0037:
            r0 = r6
            r1 = 8
            int r0 = r0 << r1
            r1 = r7
            r0 = r0 ^ r1
            r1 = r5
            r2 = 16
            int r1 = r1 << r2
            r0 = r0 ^ r1
            r5 = r0
            goto L_0x0075
        L_0x0046:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            r1.<init>()
            throw r0
        L_0x004e:
            r0 = r4
            r1 = r5
            r0 = r0[r1]
            r5 = r0
            r0 = r7
            r1 = -12
            if (r0 > r1) goto L_0x0073
            r0 = r5
            r1 = -65
            if (r0 <= r1) goto L_0x0061
            goto L_0x0073
        L_0x0061:
            r0 = r7
            r1 = r5
            r2 = 8
            int r1 = r1 << r2
            r0 = r0 ^ r1
            r5 = r0
            goto L_0x0075
        L_0x006b:
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = -12
            if (r0 <= r1) goto L_0x0075
        L_0x0073:
            r0 = -1
            r5 = r0
        L_0x0075:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2109e8.m4343f(byte[], int, int):int");
    }
}
