package p081h.p203i.p204a.p224e.p259j.p276q;

import java.nio.ByteBuffer;
/* renamed from: h.i.a.e.j.q.c7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c7.class */
public final class C8576c7 extends AbstractC8562b7 {
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8562b7
    /* renamed from: a */
    public final int mo17680a(int i, byte[] bArr, int i2, int i3) {
        int b;
        int b2;
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        int i4 = i2;
        if (i2 >= i3) {
            return 0;
        }
        while (i4 < i3) {
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            i4 = i5;
            if (b3 < 0) {
                if (b3 < -32) {
                    if (i5 >= i3) {
                        return b3;
                    }
                    if (b3 < -62) {
                        return -1;
                    }
                    i4 = i5 + 1;
                    if (bArr[i5] > -65) {
                        return -1;
                    }
                } else if (b3 < -16) {
                    if (i5 >= i3 - 1) {
                        b = C8798z6.m16923b(bArr, i5, i3);
                        return b;
                    }
                    int i6 = i5 + 1;
                    byte b4 = bArr[i5];
                    if (b4 > -65) {
                        return -1;
                    }
                    if (b3 == -32 && b4 < -96) {
                        return -1;
                    }
                    if (b3 == -19 && b4 >= -96) {
                        return -1;
                    }
                    i4 = i6 + 1;
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                } else if (i5 >= i3 - 2) {
                    b2 = C8798z6.m16923b(bArr, i5, i3);
                    return b2;
                } else {
                    int i7 = i5 + 1;
                    byte b5 = bArr[i5];
                    if (b5 > -65 || (((b3 << 28) + (b5 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    int i8 = i7 + 1;
                    if (bArr[i7] > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (bArr[i8] > -65) {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8562b7
    /* renamed from: a */
    public final int mo17678a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                throw new C8585d7(i8 - 1, length);
            } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(charAt2);
                sb.append(" at index ");
                sb.append(i7);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            } else {
                throw new C8585d7(i8, length);
            }
            i8++;
        }
        return i7;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8562b7
    /* renamed from: a */
    public final void mo17679a(CharSequence charSequence, ByteBuffer byteBuffer) {
        AbstractC8562b7.m17767b(charSequence, byteBuffer);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8562b7
    /* renamed from: b */
    public final String mo17676b(byte[] bArr, int i, int i2) throws C8647j4 {
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
                a3 = C8553a7.m17841a(b2);
                if (!a3) {
                    break;
                }
                i++;
                C8553a7.m17837a(b2, cArr, i4);
                i4++;
            }
            int i5 = i;
            int i6 = i4;
            while (i5 < i3) {
                int i7 = i5 + 1;
                byte b3 = bArr[i5];
                a = C8553a7.m17841a(b3);
                if (a) {
                    i6++;
                    C8553a7.m17837a(b3, cArr, i6);
                    i5 = i7;
                    while (i5 < i3) {
                        byte b4 = bArr[i5];
                        a2 = C8553a7.m17841a(b4);
                        if (a2) {
                            i5++;
                            C8553a7.m17837a(b4, cArr, i6);
                            i6++;
                        }
                    }
                } else {
                    b = C8553a7.m17836b(b3);
                    if (!b) {
                        c = C8553a7.m17831c(b3);
                        if (c) {
                            if (i7 < i3 - 1) {
                                int i8 = i7 + 1;
                                C8553a7.m17839a(b3, bArr[i7], bArr[i8], cArr, i6);
                                i5 = i8 + 1;
                                i6++;
                            } else {
                                throw C8647j4.m17436h();
                            }
                        } else if (i7 < i3 - 2) {
                            int i9 = i7 + 1;
                            byte b5 = bArr[i7];
                            int i10 = i9 + 1;
                            C8553a7.m17840a(b3, b5, bArr[i9], bArr[i10], cArr, i6);
                            i5 = i10 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw C8647j4.m17436h();
                        }
                    } else if (i7 < i3) {
                        C8553a7.m17838a(b3, bArr[i7], cArr, i6);
                        i5 = i7 + 1;
                        i6++;
                    } else {
                        throw C8647j4.m17436h();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
