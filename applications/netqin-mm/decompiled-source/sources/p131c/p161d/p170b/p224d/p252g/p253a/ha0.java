package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekj;
import com.google.android.gms.internal.ads.zzenj;
/* renamed from: c.d.b.d.g.a.ha0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ha0.class */
public final class ha0 extends fa0 {
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.fa0
    /* renamed from: a */
    public final int mo26785a(int i, byte[] bArr, int i2, int i3) {
        int b;
        int b2;
        byte b3;
        int a;
        int a2;
        int a3;
        int i4 = i2;
        if (i != 0) {
            if (i2 >= i3) {
                return i;
            }
            byte b4 = (byte) i;
            if (b4 < -32) {
                if (b4 < -62) {
                    return -1;
                }
                i4 = i2 + 1;
                if (bArr[i2] > -65) {
                    return -1;
                }
            } else if (b4 < -16) {
                byte b5 = (byte) ((i >> 8) ^ (-1));
                byte b6 = b5;
                int i5 = i2;
                if (b5 == 0) {
                    i5 = i2 + 1;
                    b6 = bArr[i2];
                    if (i5 >= i3) {
                        a3 = ea0.m27046a(b4, b6);
                        return a3;
                    }
                }
                if (b6 > -65) {
                    return -1;
                }
                if (b4 == -32 && b6 < -96) {
                    return -1;
                }
                if (b4 == -19 && b6 >= -96) {
                    return -1;
                }
                i4 = i5 + 1;
                if (bArr[i5] > -65) {
                    return -1;
                }
            } else {
                byte b7 = (byte) ((i >> 8) ^ (-1));
                if (b7 == 0) {
                    int i6 = i2 + 1;
                    b7 = bArr[i2];
                    if (i6 >= i3) {
                        a2 = ea0.m27046a(b4, b7);
                        return a2;
                    }
                    i2 = i6;
                    b3 = 0;
                } else {
                    b3 = (byte) (i >> 16);
                }
                byte b8 = b3;
                int i7 = i2;
                if (b3 == 0) {
                    i7 = i2 + 1;
                    b8 = bArr[i2];
                    if (i7 >= i3) {
                        a = ea0.m27045a(b4, b7, b8);
                        return a;
                    }
                }
                if (b7 > -65 || (((b4 << 28) + (b7 + 112)) >> 30) != 0 || b8 > -65) {
                    return -1;
                }
                i4 = i7 + 1;
                if (bArr[i7] > -65) {
                    return -1;
                }
            }
        }
        while (i4 < i3 && bArr[i4] >= 0) {
            i4++;
        }
        int i8 = i4;
        if (i4 >= i3) {
            return 0;
        }
        while (i8 < i3) {
            int i9 = i8 + 1;
            byte b9 = bArr[i8];
            i8 = i9;
            if (b9 < 0) {
                if (b9 < -32) {
                    if (i9 >= i3) {
                        return b9;
                    }
                    if (b9 < -62) {
                        return -1;
                    }
                    i8 = i9 + 1;
                    if (bArr[i9] > -65) {
                        return -1;
                    }
                } else if (b9 < -16) {
                    if (i9 >= i3 - 1) {
                        b = ea0.m27036b(bArr, i9, i3);
                        return b;
                    }
                    int i10 = i9 + 1;
                    byte b10 = bArr[i9];
                    if (b10 > -65) {
                        return -1;
                    }
                    if (b9 == -32 && b10 < -96) {
                        return -1;
                    }
                    if (b9 == -19 && b10 >= -96) {
                        return -1;
                    }
                    i8 = i10 + 1;
                    if (bArr[i10] > -65) {
                        return -1;
                    }
                } else if (i9 >= i3 - 2) {
                    b2 = ea0.m27036b(bArr, i9, i3);
                    return b2;
                } else {
                    int i11 = i9 + 1;
                    byte b11 = bArr[i9];
                    if (b11 > -65 || (((b9 << 28) + (b11 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    int i12 = i11 + 1;
                    if (bArr[i11] > -65) {
                        return -1;
                    }
                    i8 = i12 + 1;
                    if (bArr[i12] > -65) {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.fa0
    /* renamed from: a */
    public final int mo26784a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        char charAt;
        int length = charSequence.length();
        int i5 = i2 + i;
        int i6 = 0;
        while (i6 < length && (i4 = i6 + i) < i5 && (charAt = charSequence.charAt(i6)) < 128) {
            bArr[i4] = (byte) charAt;
            i6++;
        }
        if (i6 == length) {
            return i + length;
        }
        int i7 = i + i6;
        int i8 = i6;
        while (i8 < length) {
            char charAt2 = charSequence.charAt(i8);
            if (charAt2 < 128 && i7 < i5) {
                i7++;
                bArr[i7] = (byte) charAt2;
            } else if (charAt2 < 2048 && i7 <= i5 - 2) {
                int i9 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                i7 = i9 + 1;
                bArr[i9] = (byte) ((charAt2 & '?') | 128);
            } else if ((charAt2 < 55296 || 57343 < charAt2) && i7 <= i5 - 3) {
                int i10 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 >>> '\f') | 480);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i7 = i11 + 1;
                bArr[i11] = (byte) ((charAt2 & '?') | 128);
            } else if (i7 <= i5 - 4) {
                int i12 = i8 + 1;
                if (i12 != charSequence.length()) {
                    char charAt3 = charSequence.charAt(i12);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i13 = i7 + 1;
                        bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                        i7 = i15 + 1;
                        bArr[i15] = (byte) ((codePoint & 63) | 128);
                        i8 = i12;
                    } else {
                        i8 = i12;
                    }
                }
                throw new zzenj(i8 - 1, length);
            } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(charAt2);
                sb.append(" at index ");
                sb.append(i7);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            } else {
                throw new zzenj(i8, length);
            }
            i8++;
        }
        return i7;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.fa0
    /* renamed from: b */
    public final String mo26782b(byte[] bArr, int i, int i2) throws zzekj {
        boolean a;
        boolean a2;
        boolean b;
        boolean c;
        boolean a3;
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b2 = bArr[i];
                a3 = ga0.m26984a(b2);
                if (!a3) {
                    break;
                }
                i++;
                ga0.m26980a(b2, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte b3 = bArr[i5];
                a = ga0.m26984a(b3);
                if (a) {
                    i6++;
                    ga0.m26980a(b3, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte b4 = bArr[i5];
                        a2 = ga0.m26984a(b4);
                        if (a2) {
                            i5++;
                            ga0.m26980a(b4, cArr, i6);
                            i6++;
                        }
                    }
                } else {
                    b = ga0.m26979b(b3);
                    if (!b) {
                        c = ga0.m26974c(b3);
                        if (c) {
                            if (i7 < i3 - 1) {
                                int i8 = i7 + 1;
                                ga0.m26982a(b3, bArr[i7], bArr[i8], cArr, i6);
                                i5 = i8 + 1;
                                i6++;
                            } else {
                                throw zzekj.zzbhf();
                            }
                        } else if (i7 < i3 - 2) {
                            int i9 = i7 + 1;
                            byte b5 = bArr[i7];
                            int i10 = i9 + 1;
                            ga0.m26983a(b3, b5, bArr[i9], bArr[i10], cArr, i6);
                            i5 = i10 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw zzekj.zzbhf();
                        }
                    } else if (i7 < i3) {
                        ga0.m26981a(b3, bArr[i7], cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw zzekj.zzbhf();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
