package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/q.class */
public final class C8305q extends AbstractC8267o {
    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8267o
    /* renamed from: a */
    public final int mo18180a(int i, byte[] bArr, int i2, int i3) {
        int i4;
        int b;
        int b2;
        byte b3;
        int a;
        int a2;
        int a3;
        if (i == 0) {
            i4 = i2;
        } else if (i2 >= i3) {
            return i;
        } else {
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
                        a3 = C8252n.m18271a(b4, b6);
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
                        a2 = C8252n.m18271a(b4, b7);
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
                        a = C8252n.m18270a(b4, b7, b8);
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
                        b = C8252n.m18262b(bArr, i9, i3);
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
                    b2 = C8252n.m18262b(bArr, i9, i3);
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

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8267o
    /* renamed from: a */
    public final int mo18179a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                throw new C8289p(i8 - 1, length);
            } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(charAt2);
                sb.append(" at index ");
                sb.append(i7);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            } else {
                throw new C8289p(i8, length);
            }
            i8++;
        }
        return i7;
    }
}
