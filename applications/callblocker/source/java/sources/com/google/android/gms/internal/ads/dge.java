package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dge.class */
final class dge extends dgf {
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0234, code lost:
        r5 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0094, code lost:
        if (r6[r5] > (-65)) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011c, code lost:
        if (r6[r7] > (-65)) goto L55;
     */
    @Override // com.google.android.gms.internal.ads.dgf
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9633a(int r5, byte[] r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dge.mo9633a(int, byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.ads.dgf
    /* renamed from: a */
    public final int mo9632a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                            throw new dgh(i5, length);
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
                    throw new dgh(i7 - 1, length);
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

    @Override // com.google.android.gms.internal.ads.dgf
    /* renamed from: a */
    public final String mo9631a(byte[] bArr, int i, int i2) {
        boolean m9652d;
        int i3;
        int i4;
        boolean m9652d2;
        boolean m9651e;
        boolean m9650f;
        boolean m9652d3;
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i5 = i + i2;
        char[] cArr = new char[i2];
        int i6 = i;
        int i7 = 0;
        while (i6 < i5) {
            byte b = bArr[i6];
            m9652d3 = dgc.m9652d(b);
            if (!m9652d3) {
                break;
            }
            i6++;
            dgc.m9654b(b, cArr, i7);
            i7++;
        }
        while (i6 < i5) {
            int i8 = i6 + 1;
            byte b2 = bArr[i6];
            m9652d = dgc.m9652d(b2);
            if (m9652d) {
                dgc.m9654b(b2, cArr, i7);
                int i9 = i7 + 1;
                while (true) {
                    i3 = i9;
                    i4 = i8;
                    if (i8 >= i5) {
                        break;
                    }
                    byte b3 = bArr[i8];
                    i3 = i9;
                    i4 = i8;
                    m9652d2 = dgc.m9652d(b3);
                    if (!m9652d2) {
                        break;
                    }
                    i8++;
                    dgc.m9654b(b3, cArr, i9);
                    i9++;
                }
            } else {
                m9651e = dgc.m9651e(b2);
                if (!m9651e) {
                    m9650f = dgc.m9650f(b2);
                    if (m9650f) {
                        if (i8 >= i5 - 1) {
                            throw zzeco.m6542i();
                        }
                        int i10 = i8 + 1;
                        i6 = i10 + 1;
                        dgc.m9656b(b2, bArr[i8], bArr[i10], cArr, i7);
                        i7++;
                    } else if (i8 >= i5 - 2) {
                        throw zzeco.m6542i();
                    } else {
                        int i11 = i8 + 1;
                        int i12 = i11 + 1;
                        dgc.m9657b(b2, bArr[i8], bArr[i11], bArr[i12], cArr, i7);
                        i3 = i7 + 1 + 1;
                        i4 = i12 + 1;
                    }
                } else if (i8 >= i5) {
                    throw zzeco.m6542i();
                } else {
                    i6 = i8 + 1;
                    dgc.m9655b(b2, bArr[i8], cArr, i7);
                    i7++;
                }
            }
            i6 = i4;
            i7 = i3;
        }
        return new String(cArr, 0, i7);
    }
}
