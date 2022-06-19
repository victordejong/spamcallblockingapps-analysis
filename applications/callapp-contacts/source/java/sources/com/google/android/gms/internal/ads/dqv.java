package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqv.class */
final class dqv extends dqq {
    /* renamed from: a */
    private static int m15924a(byte[] bArr, int i, long j, int i2) {
        int m15939b;
        int m15938b;
        int m15937b;
        if (i2 == 0) {
            m15939b = dqp.m15939b(i);
            return m15939b;
        } else if (i2 == 1) {
            m15938b = dqp.m15938b(i, dqm.m15985a(bArr, j));
            return m15938b;
        } else if (i2 != 2) {
            throw new AssertionError();
        } else {
            m15937b = dqp.m15937b(i, dqm.m15985a(bArr, j), dqm.m15985a(bArr, j + 1));
            return m15937b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.google.android.gms.internal.ads.dqq
    /* renamed from: a */
    public final int mo15926a(int i, byte[] bArr, int i2, int i3) {
        int i4;
        char c;
        byte b;
        int m15937b;
        int m15938b;
        int m15938b2;
        if ((i2 | i3 | (bArr.length - i3)) >= 0) {
            char c2 = i2;
            long j = i3;
            char c3 = c2;
            if (i != 0) {
                if (c2 >= j) {
                    return i;
                }
                byte b2 = (byte) i;
                if (b2 < -32) {
                    if (b2 < -62) {
                        return -1;
                    }
                    c3 = c2 + 1;
                    if (dqm.m15985a(bArr, (long) c2) > -65) {
                        return -1;
                    }
                } else if (b2 < -16) {
                    byte b3 = (byte) ((i >> 8) ^ (-1));
                    byte b4 = b3;
                    char c4 = c2;
                    if (b3 == 0) {
                        c4 = c2 + 1;
                        b4 = dqm.m15985a(bArr, (long) c2);
                        if (c4 >= j) {
                            m15938b2 = dqp.m15938b(b2, b4);
                            return m15938b2;
                        }
                    }
                    if (b4 > -65) {
                        return -1;
                    }
                    if (b2 == -32 && b4 < -96) {
                        return -1;
                    }
                    if (b2 == -19 && b4 >= -96) {
                        return -1;
                    }
                    c3 = c4 + 1;
                    if (dqm.m15985a(bArr, (long) c4) > -65) {
                        return -1;
                    }
                } else {
                    byte b5 = (byte) ((i >> 8) ^ (-1));
                    if (b5 == 0) {
                        ?? r0 = c2 + 1;
                        b5 = dqm.m15985a(bArr, (long) c2);
                        if (r0 >= j) {
                            m15938b = dqp.m15938b(b2, b5);
                            return m15938b;
                        }
                        c2 = r0;
                        b = 0;
                    } else {
                        b = (byte) (i >> 16);
                    }
                    byte b6 = b;
                    char c5 = c2;
                    if (b == 0) {
                        c5 = c2 + 1;
                        b6 = dqm.m15985a(bArr, (long) c2);
                        if (c5 >= j) {
                            m15937b = dqp.m15937b(b2, b5, b6);
                            return m15937b;
                        }
                    }
                    if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65 || dqm.m15985a(bArr, (long) c5) > -65) {
                        return -1;
                    }
                    c3 = c5 + 1;
                }
            }
            int i5 = (int) (j - c3);
            if (i5 >= 16) {
                char c6 = c3;
                i4 = 0;
                while (true) {
                    if (i4 >= i5) {
                        i4 = i5;
                        break;
                    } else if (dqm.m15985a(bArr, (long) c6) < 0) {
                        break;
                    } else {
                        i4++;
                        c6++;
                    }
                }
            } else {
                i4 = 0;
            }
            char c7 = c3 + i4;
            int i6 = i5 - i4;
            while (true) {
                byte b7 = 0;
                while (true) {
                    c = c7;
                    if (i6 <= 0) {
                        break;
                    }
                    c = c7 + 1;
                    b7 = dqm.m15985a(bArr, (long) c7);
                    if (b7 < 0) {
                        break;
                    }
                    i6--;
                    c7 = c;
                }
                if (i6 == 0) {
                    return 0;
                }
                int i7 = i6 - 1;
                if (b7 < -32) {
                    if (i7 == 0) {
                        return b7;
                    }
                    i6 = i7 - 1;
                    if (b7 < -62 || dqm.m15985a(bArr, (long) c) > -65) {
                        return -1;
                    }
                    c7 = c + 1;
                } else if (b7 < -16) {
                    if (i7 < 2) {
                        return m15924a(bArr, b7, c, i7);
                    }
                    i6 = i7 - 2;
                    long j2 = c + 1;
                    byte m15985a = dqm.m15985a(bArr, (long) c);
                    if (m15985a > -65) {
                        return -1;
                    }
                    if (b7 == -32 && m15985a < -96) {
                        return -1;
                    }
                    if (b7 == -19 && m15985a >= -96) {
                        return -1;
                    }
                    c7 = j2 + 1;
                    if (dqm.m15985a(bArr, j2) > -65) {
                        return -1;
                    }
                } else if (i7 < 3) {
                    return m15924a(bArr, b7, c, i7);
                } else {
                    i6 = i7 - 3;
                    long j3 = c + 1;
                    byte m15985a2 = dqm.m15985a(bArr, (long) c);
                    if (m15985a2 > -65 || (((b7 << 28) + (m15985a2 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    long j4 = j3 + 1;
                    if (dqm.m15985a(bArr, j3) > -65 || dqm.m15985a(bArr, j4) > -65) {
                        return -1;
                    }
                    c7 = j4 + 1;
                }
            }
        } else {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    @Override // com.google.android.gms.internal.ads.dqq
    /* renamed from: a */
    public final int mo15925a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        char c2;
        int i3;
        char charAt;
        char c3 = i;
        long j = i2 + c3;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            char charAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(charAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            c = 1;
            if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            dqm.m15984a(bArr, (long) c3, (byte) charAt);
            i4++;
            c3 = 1 + c3;
        }
        int i5 = i4;
        char c4 = c3;
        if (i4 == length) {
            return c3;
        }
        while (i5 < length) {
            char charAt3 = charSequence.charAt(i5);
            if (charAt3 < 128 && c4 < j) {
                dqm.m15984a(bArr, (long) c4, (byte) charAt3);
                c2 = c4 + c;
                c = c;
            } else if (charAt3 < 2048 && c4 <= j - 2) {
                long j2 = c4 + c;
                dqm.m15984a(bArr, (long) c4, (byte) ((charAt3 >>> 6) | 960));
                dqm.m15984a(bArr, j2, (byte) ((charAt3 & '?') | 128));
                c2 = j2 + c;
            } else if ((charAt3 >= 55296 && 57343 >= charAt3) || c4 > j - 3) {
                if (c4 > j - 4) {
                    if (55296 <= charAt3 && charAt3 <= 57343 && ((i3 = i5 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i3)))) {
                        throw new dqs(i5, length);
                    }
                    StringBuilder sb2 = new StringBuilder(46);
                    sb2.append("Failed writing ");
                    sb2.append(charAt3);
                    sb2.append(" at index ");
                    sb2.append((long) c4);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
                int i6 = i5 + 1;
                if (i6 != length) {
                    char charAt4 = charSequence.charAt(i6);
                    if (Character.isSurrogatePair(charAt3, charAt4)) {
                        int codePoint = Character.toCodePoint(charAt3, charAt4);
                        long j3 = c4 + 1;
                        dqm.m15984a(bArr, (long) c4, (byte) ((codePoint >>> 18) | 240));
                        long j4 = j3 + 1;
                        dqm.m15984a(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j5 = j4 + 1;
                        dqm.m15984a(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                        c = 1;
                        c2 = j5 + 1;
                        dqm.m15984a(bArr, j5, (byte) ((codePoint & 63) | 128));
                        i5 = i6;
                    } else {
                        i5 = i6;
                    }
                }
                throw new dqs(i5 - 1, length);
            } else {
                long j6 = c4 + c;
                dqm.m15984a(bArr, (long) c4, (byte) ((charAt3 >>> '\f') | 480));
                long j7 = j6 + c;
                dqm.m15984a(bArr, j6, (byte) (((charAt3 >>> 6) & 63) | 128));
                dqm.m15984a(bArr, j7, (byte) ((charAt3 & '?') | 128));
                c2 = j7 + 1;
                c = 1;
            }
            i5++;
            c4 = c2;
        }
        return c4;
    }

    @Override // com.google.android.gms.internal.ads.dqq
    /* renamed from: b */
    public final String mo15923b(byte[] bArr, int i, int i2) throws zzenn {
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte m15985a = dqm.m15985a(bArr, i);
                if (!(m15985a >= 0)) {
                    break;
                }
                i++;
                dqr.m15929a(m15985a, cArr, i4);
                i4++;
            }
            int i5 = i4;
            int i6 = i;
            int i7 = i5;
            while (i6 < i3) {
                int i8 = i6 + 1;
                byte m15985a2 = dqm.m15985a(bArr, i6);
                if (m15985a2 >= 0) {
                    dqr.m15929a(m15985a2, cArr, i7);
                    i7++;
                    i6 = i8;
                    while (i6 < i3) {
                        byte m15985a3 = dqm.m15985a(bArr, i6);
                        if (m15985a3 >= 0) {
                            i6++;
                            dqr.m15929a(m15985a3, cArr, i7);
                            i7++;
                        }
                    }
                } else if (dqr.m15933a(m15985a2)) {
                    if (i8 >= i3) {
                        throw zzenn.m13627i();
                    }
                    dqr.m15930a(m15985a2, dqm.m15985a(bArr, i8), cArr, i7);
                    i6 = i8 + 1;
                    i7++;
                } else if (dqr.m15928b(m15985a2)) {
                    if (i8 >= i3 - 1) {
                        throw zzenn.m13627i();
                    }
                    int i9 = i8 + 1;
                    dqr.m15931a(m15985a2, dqm.m15985a(bArr, i8), dqm.m15985a(bArr, i9), cArr, i7);
                    i6 = i9 + 1;
                    i7++;
                } else if (i8 >= i3 - 2) {
                    throw zzenn.m13627i();
                } else {
                    int i10 = i8 + 1;
                    int i11 = i10 + 1;
                    dqr.m15932a(m15985a2, dqm.m15985a(bArr, i8), dqm.m15985a(bArr, i10), dqm.m15985a(bArr, i11), cArr, i7);
                    i6 = i11 + 1;
                    i7 = i7 + 1 + 1;
                }
            }
            return new String(cArr, 0, i7);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
