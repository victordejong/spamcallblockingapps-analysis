package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgg.class */
final class dgg extends dgf {
    /* renamed from: a */
    private static int m9630a(byte[] bArr, int i, long j, int i2) {
        int m9638b;
        int i3;
        int m9639b;
        int m9640b;
        switch (i2) {
            case 0:
                m9640b = dgd.m9640b(i);
                i3 = m9640b;
                break;
            case 1:
                m9639b = dgd.m9639b(i, dgb.m9705a(bArr, j));
                i3 = m9639b;
                break;
            case 2:
                m9638b = dgd.m9638b(i, dgb.m9705a(bArr, j), dgb.m9705a(bArr, 1 + j));
                i3 = m9638b;
                break;
            default:
                throw new AssertionError();
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x02d7, code lost:
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006c, code lost:
        if (com.google.android.gms.internal.ads.dgb.m9705a(r10, (long) r13) > (-65)) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d8, code lost:
        if (com.google.android.gms.internal.ads.dgb.m9705a(r10, (long) r13) > (-65)) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0166, code lost:
        if (com.google.android.gms.internal.ads.dgb.m9705a(r10, (long) r13) > (-65)) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v135, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v174 */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    @Override // com.google.android.gms.internal.ads.dgf
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9633a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 755
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dgg.mo9633a(int, byte[], int, int):int");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    @Override // com.google.android.gms.internal.ads.dgf
    /* renamed from: a */
    public final int mo9632a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        char charAt;
        char c = i;
        long j = c + i2;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charSequence.charAt(length - 1)).append(" at index ").append(i + i2).toString());
        }
        int i4 = 0;
        while (i4 < length && (charAt = charSequence.charAt(i4)) < 128) {
            dgb.m9704a(bArr, (long) c, (byte) charAt);
            i4++;
            c = 1 + c;
        }
        if (i4 == length) {
            i3 = c;
        } else {
            while (i4 < length) {
                char charAt2 = charSequence.charAt(i4);
                if (charAt2 < 128 && c < j) {
                    dgb.m9704a(bArr, (long) c, (byte) charAt2);
                    c = 1 + c;
                } else if (charAt2 < 2048 && c <= j - 2) {
                    long j2 = c + 1;
                    dgb.m9704a(bArr, (long) c, (byte) ((charAt2 >>> 6) | 960));
                    c = 1 + j2;
                    dgb.m9704a(bArr, j2, (byte) ((charAt2 & '?') | 128));
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || c > j - 3) {
                    if (c > j - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && (i4 + 1 == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i4 + 1)))) {
                            throw new dgh(i4, length);
                        }
                        throw new ArrayIndexOutOfBoundsException(new StringBuilder(46).append("Failed writing ").append(charAt2).append(" at index ").append((long) c).toString());
                    }
                    int i5 = i4;
                    if (i4 + 1 != length) {
                        i4++;
                        char charAt3 = charSequence.charAt(i4);
                        if (!Character.isSurrogatePair(charAt2, charAt3)) {
                            i5 = i4;
                        } else {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            long j3 = 1 + c;
                            dgb.m9704a(bArr, (long) c, (byte) ((codePoint >>> 18) | 240));
                            long j4 = 1 + j3;
                            dgb.m9704a(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j5 = j4 + 1;
                            dgb.m9704a(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                            c = 1 + j5;
                            dgb.m9704a(bArr, j5, (byte) ((codePoint & 63) | 128));
                        }
                    }
                    throw new dgh(i5 - 1, length);
                } else {
                    long j6 = 1 + c;
                    dgb.m9704a(bArr, (long) c, (byte) ((charAt2 >>> '\f') | 480));
                    long j7 = 1 + j6;
                    dgb.m9704a(bArr, j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                    c = 1 + j7;
                    dgb.m9704a(bArr, j7, (byte) ((charAt2 & '?') | 128));
                }
                i4++;
            }
            i3 = c;
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
            byte m9705a = dgb.m9705a(bArr, i6);
            m9652d3 = dgc.m9652d(m9705a);
            if (!m9652d3) {
                break;
            }
            i6++;
            dgc.m9654b(m9705a, cArr, i7);
            i7++;
        }
        while (i6 < i5) {
            int i8 = i6 + 1;
            byte m9705a2 = dgb.m9705a(bArr, i6);
            m9652d = dgc.m9652d(m9705a2);
            if (m9652d) {
                dgc.m9654b(m9705a2, cArr, i7);
                int i9 = i8;
                int i10 = i7 + 1;
                while (true) {
                    i3 = i10;
                    i4 = i9;
                    if (i9 >= i5) {
                        break;
                    }
                    byte m9705a3 = dgb.m9705a(bArr, i9);
                    i3 = i10;
                    i4 = i9;
                    m9652d2 = dgc.m9652d(m9705a3);
                    if (!m9652d2) {
                        break;
                    }
                    i9++;
                    dgc.m9654b(m9705a3, cArr, i10);
                    i10++;
                }
            } else {
                m9651e = dgc.m9651e(m9705a2);
                if (!m9651e) {
                    m9650f = dgc.m9650f(m9705a2);
                    if (m9650f) {
                        if (i8 >= i5 - 1) {
                            throw zzeco.m6542i();
                        }
                        int i11 = i8 + 1;
                        i6 = i11 + 1;
                        dgc.m9656b(m9705a2, dgb.m9705a(bArr, i8), dgb.m9705a(bArr, i11), cArr, i7);
                        i7++;
                    } else if (i8 >= i5 - 2) {
                        throw zzeco.m6542i();
                    } else {
                        int i12 = i8 + 1;
                        int i13 = i12 + 1;
                        dgc.m9657b(m9705a2, dgb.m9705a(bArr, i8), dgb.m9705a(bArr, i12), dgb.m9705a(bArr, i13), cArr, i7);
                        i3 = i7 + 1 + 1;
                        i4 = i13 + 1;
                    }
                } else if (i8 >= i5) {
                    throw zzeco.m6542i();
                } else {
                    i6 = i8 + 1;
                    dgc.m9655b(m9705a2, dgb.m9705a(bArr, i8), cArr, i7);
                    i7++;
                }
            }
            i6 = i4;
            i7 = i3;
        }
        return new String(cArr, 0, i7);
    }
}
