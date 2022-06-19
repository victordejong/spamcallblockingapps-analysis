package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/hj.class */
final class C3997hj extends AbstractC3992he {
    /* renamed from: a */
    private static int m5215a(byte[] bArr, int i, long j, int i2) {
        int m5237b;
        int i3;
        int m5238b;
        int m5239b;
        switch (i2) {
            case 0:
                m5239b = C3991hd.m5239b(i);
                i3 = m5239b;
                break;
            case 1:
                m5238b = C3991hd.m5238b(i, C3984ha.m5288a(bArr, j));
                i3 = m5238b;
                break;
            case 2:
                m5237b = C3991hd.m5237b(i, C3984ha.m5288a(bArr, j), C3984ha.m5288a(bArr, 1 + j));
                i3 = m5237b;
                break;
            default:
                throw new AssertionError();
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e4, code lost:
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01a7, code lost:
        r9 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94 */
    @Override // com.google.android.gms.internal.measurement.AbstractC3992he
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int mo5217a(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3997hj.mo5217a(int, byte[], int, int):int");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    @Override // com.google.android.gms.internal.measurement.AbstractC3992he
    /* renamed from: a */
    public final int mo5216a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
            C3984ha.m5287a(bArr, (long) c, (byte) charAt);
            i4++;
            c = 1 + c;
        }
        if (i4 == length) {
            i3 = c;
        } else {
            while (i4 < length) {
                char charAt2 = charSequence.charAt(i4);
                if (charAt2 < 128 && c < j) {
                    C3984ha.m5287a(bArr, (long) c, (byte) charAt2);
                    c = 1 + c;
                } else if (charAt2 < 2048 && c <= j - 2) {
                    long j2 = c + 1;
                    C3984ha.m5287a(bArr, (long) c, (byte) ((charAt2 >>> 6) | 960));
                    c = 1 + j2;
                    C3984ha.m5287a(bArr, j2, (byte) ((charAt2 & '?') | 128));
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || c > j - 3) {
                    if (c > j - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && (i4 + 1 == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i4 + 1)))) {
                            throw new C3994hg(i4, length);
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
                            C3984ha.m5287a(bArr, (long) c, (byte) ((codePoint >>> 18) | 240));
                            long j4 = 1 + j3;
                            C3984ha.m5287a(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j5 = j4 + 1;
                            C3984ha.m5287a(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                            c = 1 + j5;
                            C3984ha.m5287a(bArr, j5, (byte) ((codePoint & 63) | 128));
                        }
                    }
                    throw new C3994hg(i5 - 1, length);
                } else {
                    long j6 = 1 + c;
                    C3984ha.m5287a(bArr, (long) c, (byte) ((charAt2 >>> '\f') | 480));
                    long j7 = 1 + j6;
                    C3984ha.m5287a(bArr, j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                    c = 1 + j7;
                    C3984ha.m5287a(bArr, j7, (byte) ((charAt2 & '?') | 128));
                }
                i4++;
            }
            i3 = c;
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
            byte m5288a = C3984ha.m5288a(bArr, i6);
            m5221d3 = C3993hf.m5221d(m5288a);
            if (!m5221d3) {
                break;
            }
            i6++;
            C3993hf.m5223b(m5288a, cArr, i7);
            i7++;
        }
        while (i6 < i5) {
            int i8 = i6 + 1;
            byte m5288a2 = C3984ha.m5288a(bArr, i6);
            m5221d = C3993hf.m5221d(m5288a2);
            if (m5221d) {
                C3993hf.m5223b(m5288a2, cArr, i7);
                int i9 = i8;
                int i10 = i7 + 1;
                while (true) {
                    i3 = i10;
                    i4 = i9;
                    if (i9 >= i5) {
                        break;
                    }
                    byte m5288a3 = C3984ha.m5288a(bArr, i9);
                    i3 = i10;
                    i4 = i9;
                    m5221d2 = C3993hf.m5221d(m5288a3);
                    if (!m5221d2) {
                        break;
                    }
                    i9++;
                    C3993hf.m5223b(m5288a3, cArr, i10);
                    i10++;
                }
            } else {
                m5220e = C3993hf.m5220e(m5288a2);
                if (!m5220e) {
                    m5219f = C3993hf.m5219f(m5288a2);
                    if (m5219f) {
                        if (i8 >= i5 - 1) {
                            throw zzft.m4847h();
                        }
                        int i11 = i8 + 1;
                        i6 = i11 + 1;
                        C3993hf.m5225b(m5288a2, C3984ha.m5288a(bArr, i8), C3984ha.m5288a(bArr, i11), cArr, i7);
                        i7++;
                    } else if (i8 >= i5 - 2) {
                        throw zzft.m4847h();
                    } else {
                        int i12 = i8 + 1;
                        int i13 = i12 + 1;
                        C3993hf.m5226b(m5288a2, C3984ha.m5288a(bArr, i8), C3984ha.m5288a(bArr, i12), C3984ha.m5288a(bArr, i13), cArr, i7);
                        i3 = i7 + 1 + 1;
                        i4 = i13 + 1;
                    }
                } else if (i8 >= i5) {
                    throw zzft.m4847h();
                } else {
                    i6 = i8 + 1;
                    C3993hf.m5224b(m5288a2, C3984ha.m5288a(bArr, i8), cArr, i7);
                    i7++;
                }
            }
            i6 = i4;
            i7 = i3;
        }
        return new String(cArr, 0, i7);
    }
}
