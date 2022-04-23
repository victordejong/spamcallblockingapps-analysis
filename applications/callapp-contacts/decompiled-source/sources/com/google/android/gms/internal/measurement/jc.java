package com.google.android.gms.internal.measurement;

import com.fasterxml.jackson.core.base.GeneratorBase;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jc.class */
public final class jc {

    /* renamed from: a  reason: collision with root package name */
    private static final iz f29149a;

    static {
        if (ix.a()) {
            ix.b();
        }
        f29149a = new ja();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(CharSequence charSequence) {
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
                                throw new jb(i4, length2);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                    throw new jb(i9, length);
                }
                i9++;
            }
            throw new jb(i9 - 1, length);
        }
        return i3;
    }

    public static boolean a(byte[] bArr) {
        return f29149a.a(bArr, 0, bArr.length);
    }

    public static boolean a(byte[] bArr, int i, int i2) {
        return f29149a.a(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(byte[] bArr, int i, int i2) throws zzib {
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
                byte b2 = bArr[i7];
                if (!(b2 >= 0)) {
                    i3 = i6;
                    i4 = i7;
                    break;
                }
                i7++;
                cArr[i6] = (char) b2;
                i6++;
            }
            while (i4 < i5) {
                int i8 = i4 + 1;
                byte b3 = bArr[i4];
                if (b3 >= 0) {
                    int i9 = i3 + 1;
                    cArr[i3] = (char) b3;
                    int i10 = i8;
                    while (true) {
                        i3 = i9;
                        i4 = i10;
                        if (i10 >= i5) {
                            break;
                        }
                        byte b4 = bArr[i10];
                        if (!(b4 >= 0)) {
                            i3 = i9;
                            i4 = i10;
                            break;
                        }
                        i10++;
                        i9++;
                        cArr[i9] = (char) b4;
                    }
                } else if (b3 < -32) {
                    if (i8 < i5) {
                        byte b5 = bArr[i8];
                        if (b3 < -62 || iy.a(b5)) {
                            throw zzib.f();
                        }
                        cArr[i3] = (char) (((b3 & 31) << 6) | (b5 & 63));
                        i4 = i8 + 1;
                        i3++;
                    } else {
                        throw zzib.f();
                    }
                } else if (b3 < -16) {
                    if (i8 < i5 - 1) {
                        int i11 = i8 + 1;
                        byte b6 = bArr[i8];
                        byte b7 = bArr[i11];
                        if (!iy.a(b6)) {
                            byte b8 = b3;
                            if (b3 == -32) {
                                if (b6 >= -96) {
                                    b8 = -32;
                                }
                            }
                            byte b9 = b8;
                            if (b8 == -19) {
                                if (b6 < -96) {
                                    b9 = -19;
                                }
                            }
                            if (!iy.a(b7)) {
                                cArr[i3] = (char) (((b9 & 15) << 12) | ((b6 & 63) << 6) | (b7 & 63));
                                i4 = i11 + 1;
                                i3++;
                            }
                        }
                        throw zzib.f();
                    }
                    throw zzib.f();
                } else if (i8 < i5 - 2) {
                    int i12 = i8 + 1;
                    int i13 = i12 + 1;
                    byte b10 = bArr[i8];
                    byte b11 = bArr[i12];
                    byte b12 = bArr[i13];
                    if (iy.a(b10) || (((b3 << 28) + (b10 + 112)) >> 30) != 0 || iy.a(b11) || iy.a(b12)) {
                        throw zzib.f();
                    }
                    int i14 = ((b3 & 7) << 18) | ((b10 & 63) << 12) | ((b11 & 63) << 6) | (b12 & 63);
                    cArr[i3] = (char) ((i14 >>> 10) + 55232);
                    cArr[i3 + 1] = (char) ((i14 & 1023) + GeneratorBase.SURR2_FIRST);
                    i3 += 2;
                    i4 = i13 + 1;
                } else {
                    throw zzib.f();
                }
            }
            return new String(cArr, 0, i3);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
        if (r0 > (-12)) goto L_0x0073;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ int c(byte[] r4, int r5, int r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.jc.c(byte[], int, int):int");
    }
}
