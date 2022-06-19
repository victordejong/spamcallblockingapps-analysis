package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/hh.class */
final class C3995hh extends AbstractC3992he {
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
        r5 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [int] */
    /* JADX WARN: Type inference failed for: r0v40, types: [int] */
    @Override // com.google.android.gms.internal.measurement.AbstractC3992he
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int mo5217a(int r5, byte[] r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3995hh.mo5217a(int, byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3992he
    /* renamed from: a */
    public final int mo5216a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        char charAt;
        int length = charSequence.length();
        int i4 = i + i2;
        int i5 = 0;
        while (i5 < length && i5 + i < i4 && (charAt = charSequence.charAt(i5)) < 128) {
            bArr[i + i5] = (byte) charAt;
            i5++;
        }
        if (i5 == length) {
            i3 = i + length;
        } else {
            i3 = i + i5;
            while (i5 < length) {
                char charAt2 = charSequence.charAt(i5);
                if (charAt2 < 128 && i3 < i4) {
                    bArr[i3] = (byte) charAt2;
                    i3++;
                } else if (charAt2 < 2048 && i3 <= i4 - 2) {
                    int i6 = i3 + 1;
                    bArr[i3] = (byte) ((charAt2 >>> 6) | 960);
                    i3 = i6 + 1;
                    bArr[i6] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || i3 > i4 - 3) {
                    if (i3 > i4 - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && (i5 + 1 == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i5 + 1)))) {
                            throw new C3994hg(i5, length);
                        }
                        throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charAt2).append(" at index ").append(i3).toString());
                    }
                    int i7 = i5;
                    if (i5 + 1 != charSequence.length()) {
                        i5++;
                        char charAt3 = charSequence.charAt(i5);
                        if (!Character.isSurrogatePair(charAt2, charAt3)) {
                            i7 = i5;
                        } else {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i8 = i3 + 1;
                            bArr[i3] = (byte) ((codePoint >>> 18) | 240);
                            int i9 = i8 + 1;
                            bArr[i8] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i10 = i9 + 1;
                            bArr[i9] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i3 = i10 + 1;
                            bArr[i10] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    throw new C3994hg(i7 - 1, length);
                } else {
                    int i11 = i3 + 1;
                    bArr[i3] = (byte) ((charAt2 >>> '\f') | 480);
                    int i12 = i11 + 1;
                    bArr[i11] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i3 = i12 + 1;
                    bArr[i12] = (byte) ((charAt2 & '?') | 128);
                }
                i5++;
            }
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3992he
    /* renamed from: b */
    public final String mo5214b(byte[] bArr, int i, int i2) {
        boolean m5221d;
        int i3;
        int i4;
        boolean m5221d2;
        boolean m5220e;
        boolean m5219f;
        boolean m5221d3;
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i5 = i + i2;
        char[] cArr = new char[i2];
        int i6 = i;
        int i7 = 0;
        while (i6 < i5) {
            byte b = bArr[i6];
            m5221d3 = C3993hf.m5221d(b);
            if (!m5221d3) {
                break;
            }
            i6++;
            C3993hf.m5223b(b, cArr, i7);
            i7++;
        }
        while (i6 < i5) {
            int i8 = i6 + 1;
            byte b2 = bArr[i6];
            m5221d = C3993hf.m5221d(b2);
            if (m5221d) {
                C3993hf.m5223b(b2, cArr, i7);
                int i9 = i8;
                int i10 = i7 + 1;
                while (true) {
                    i3 = i10;
                    i4 = i9;
                    if (i9 >= i5) {
                        break;
                    }
                    byte b3 = bArr[i9];
                    i3 = i10;
                    i4 = i9;
                    m5221d2 = C3993hf.m5221d(b3);
                    if (!m5221d2) {
                        break;
                    }
                    i9++;
                    C3993hf.m5223b(b3, cArr, i10);
                    i10++;
                }
            } else {
                m5220e = C3993hf.m5220e(b2);
                if (!m5220e) {
                    m5219f = C3993hf.m5219f(b2);
                    if (m5219f) {
                        if (i8 >= i5 - 1) {
                            throw zzft.m4847h();
                        }
                        int i11 = i8 + 1;
                        i6 = i11 + 1;
                        C3993hf.m5225b(b2, bArr[i8], bArr[i11], cArr, i7);
                        i7++;
                    } else if (i8 >= i5 - 2) {
                        throw zzft.m4847h();
                    } else {
                        int i12 = i8 + 1;
                        byte b4 = bArr[i8];
                        int i13 = i12 + 1;
                        C3993hf.m5226b(b2, b4, bArr[i12], bArr[i13], cArr, i7);
                        i3 = i7 + 1 + 1;
                        i4 = i13 + 1;
                    }
                } else if (i8 >= i5) {
                    throw zzft.m4847h();
                } else {
                    i6 = i8 + 1;
                    C3993hf.m5224b(b2, bArr[i8], cArr, i7);
                    i7++;
                }
            }
            i6 = i4;
            i7 = i3;
        }
        return new String(cArr, 0, i7);
    }
}
