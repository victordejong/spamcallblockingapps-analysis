package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/eh3.class */
final class eh3 extends dh3 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [int] */
    /* JADX WARN: Type inference failed for: r0v40, types: [int] */
    @Override // com.google.android.gms.internal.ads.dh3
    /* renamed from: b */
    public final int mo15474b(int i, byte[] bArr, int i2, int i3) {
        byte b;
        int i4;
        int i5;
        int m15187l;
        int m15188k;
        int m15188k2;
        int i6 = i2;
        if (i != 0) {
            if (i2 >= i3) {
                return i;
            }
            byte b2 = (byte) i;
            if (b2 < -32) {
                if (b2 < -62) {
                    return -1;
                }
                i5 = i2 + 1;
                if (bArr[i2] > -65) {
                    return -1;
                }
            } else if (b2 < -16) {
                byte b3 = (byte) ((i >> 8) ^ (-1));
                byte b4 = b3;
                int i7 = i2;
                if (b3 == 0) {
                    i7 = i2 + 1;
                    b4 = bArr[i2];
                    if (i7 >= i3) {
                        m15188k2 = fh3.m15188k(b2, b4);
                        return m15188k2;
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
                int i8 = i7 + 1;
                if (bArr[i7] > -65) {
                    return -1;
                }
                i5 = i8;
            } else {
                byte b5 = (byte) ((i >> 8) ^ (-1));
                if (b5 == 0) {
                    int i9 = i2 + 1;
                    b5 = bArr[i2];
                    if (i9 >= i3) {
                        m15188k = fh3.m15188k(b2, b5);
                        return m15188k;
                    }
                    i2 = i9;
                    i4 = 0;
                } else {
                    i4 = i >> 16;
                }
                byte b6 = i4;
                int i10 = i2;
                if (i4 == 0) {
                    i10 = i2 + 1;
                    byte b7 = bArr[i2];
                    b6 = b7;
                    if (i10 >= i3) {
                        m15187l = fh3.m15187l(b2, b5, b7);
                        return m15187l;
                    }
                }
                if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                    return -1;
                }
                i5 = i10 + 1;
                if (bArr[i10] > -65) {
                    return -1;
                }
            }
            i6 = i5;
        }
        while (i6 < i3 && bArr[i6] >= 0) {
            i6++;
        }
        int i11 = i6;
        if (i6 >= i3) {
            b = 0;
        } else {
            while (true) {
                if (i11 >= i3) {
                    b = 0;
                    break;
                }
                int i12 = i11 + 1;
                b = bArr[i11];
                if (b >= 0) {
                    i11 = i12;
                } else if (b >= -32) {
                    if (b >= -16) {
                        if (i12 < i3 - 2) {
                            int i13 = i12 + 1;
                            byte b8 = bArr[i12];
                            if (b8 > -65 || (((b << 28) + (b8 + 112)) >> 30) != 0) {
                                break;
                            }
                            int i14 = i13 + 1;
                            if (bArr[i13] > -65) {
                                break;
                            }
                            i11 = i14 + 1;
                            if (bArr[i14] > -65) {
                                break;
                            }
                        } else {
                            b = fh3.m15193f(bArr, i12, i3);
                            break;
                        }
                    } else if (i12 < i3 - 1) {
                        int i15 = i12 + 1;
                        byte b9 = bArr[i12];
                        if (b9 > -65 || ((b == -32 && b9 < -96) || (b == -19 && b9 >= -96))) {
                            break;
                        }
                        i11 = i15 + 1;
                        if (bArr[i15] > -65) {
                            break;
                        }
                    } else {
                        b = fh3.m15193f(bArr, i12, i3);
                        break;
                    }
                } else if (i12 < i3) {
                    if (b < -62) {
                        break;
                    }
                    i11 = i12 + 1;
                    if (bArr[i12] > -65) {
                        break;
                    }
                } else {
                    break;
                }
            }
            b = -1;
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.dh3
    /* renamed from: c */
    public final String mo15473c(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte b;
        byte b2;
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
                if (!ch3.m16049a(bArr[i7])) {
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
                if (ch3.m16049a(b3)) {
                    cArr[i3] = (char) b3;
                    int i9 = i3 + 1;
                    while (true) {
                        int i10 = i9;
                        i3 = i10;
                        i4 = i8;
                        if (i8 < i5) {
                            if (!ch3.m16049a(bArr[i8])) {
                                i3 = i10;
                                i4 = i8;
                                break;
                            }
                            i8++;
                            i9 = i10 + 1;
                            cArr[i10] = (char) b;
                        }
                    }
                } else if (ch3.m16048b(b3)) {
                    if (i8 >= i5) {
                        throw zzggm.zzl();
                    }
                    ch3.m16046d(b3, bArr[i8], cArr, i3);
                    i4 = i8 + 1;
                    i3++;
                } else if (ch3.m16047c(b3)) {
                    if (i8 >= i5 - 1) {
                        throw zzggm.zzl();
                    }
                    int i11 = i8 + 1;
                    ch3.m16045e(b3, bArr[i8], bArr[i11], cArr, i3);
                    i4 = i11 + 1;
                    i3++;
                } else if (i8 >= i5 - 2) {
                    throw zzggm.zzl();
                } else {
                    int i12 = i8 + 1;
                    int i13 = i12 + 1;
                    ch3.m16044f(b3, bArr[i8], bArr[i12], bArr[i13], cArr, i3);
                    i3 += 2;
                    i4 = i13 + 1;
                }
            }
            return new String(cArr, 0, i3);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
