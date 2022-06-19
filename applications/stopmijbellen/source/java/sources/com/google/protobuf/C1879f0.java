package com.google.protobuf;

import android.support.p012v4.media.C0082b;
import me.zhanghai.android.materialprogressbar.C3681R;
import p287x6.C4879a;
import p287x6.C4884b0;
/* renamed from: com.google.protobuf.f0 */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/f0.class */
public final class C1879f0 {

    /* renamed from: a */
    public static final AbstractC1880a f7072a;

    /* renamed from: com.google.protobuf.f0$a */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/f0$a.class */
    public static abstract class AbstractC1880a {
        /* renamed from: a */
        public abstract int mo4318a(CharSequence charSequence, byte[] bArr, int i, int i2);

        /* renamed from: b */
        public abstract int mo4317b(int i, byte[] bArr, int i2, int i3);
    }

    /* renamed from: com.google.protobuf.f0$b */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/f0$b.class */
    public static final class C1881b extends AbstractC1880a {
        @Override // com.google.protobuf.C1879f0.AbstractC1880a
        /* renamed from: a */
        public int mo4318a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                return i + length;
            }
            int i8 = i + i7;
            int i9 = i7;
            while (i9 < length) {
                char charAt2 = charSequence.charAt(i9);
                if (charAt2 < 128 && i8 < i6) {
                    i3 = i8 + 1;
                    bArr[i8] = (byte) charAt2;
                } else if (charAt2 < 2048 && i8 <= i6 - 2) {
                    int i10 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 >>> 6) | 960);
                    i3 = i10 + 1;
                    bArr[i10] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || i8 > i6 - 3) {
                    if (i8 > i6 - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && ((i4 = i9 + 1) == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i4)))) {
                            throw new C1882c(i9, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i8);
                    }
                    int i11 = i9 + 1;
                    if (i11 != charSequence.length()) {
                        char charAt3 = charSequence.charAt(i11);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i12 = i8 + 1;
                            bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                            int i13 = i12 + 1;
                            bArr[i12] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i14 = i13 + 1;
                            bArr[i13] = (byte) (((codePoint >>> 6) & 63) | 128);
                            bArr[i14] = (byte) ((codePoint & 63) | 128);
                            i9 = i11;
                            i3 = i14 + 1;
                        } else {
                            i9 = i11;
                        }
                    }
                    throw new C1882c(i9 - 1, length);
                } else {
                    int i15 = i8 + 1;
                    bArr[i8] = (byte) ((charAt2 >>> '\f') | 480);
                    int i16 = i15 + 1;
                    bArr[i15] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i3 = i16 + 1;
                    bArr[i16] = (byte) ((charAt2 & '?') | 128);
                }
                i9++;
                i8 = i3;
            }
            return i8;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v24, types: [int] */
        /* JADX WARN: Type inference failed for: r0v40, types: [int] */
        @Override // com.google.protobuf.C1879f0.AbstractC1880a
        /* renamed from: b */
        public int mo4317b(int i, byte[] bArr, int i2, int i3) {
            byte b;
            byte b2;
            int i4;
            int i5 = i2;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b3 = (byte) i;
                if (b3 < -32) {
                    if (b3 < -62) {
                        return -1;
                    }
                    i4 = i2 + 1;
                    if (bArr[i2] > -65) {
                        return -1;
                    }
                } else if (b3 < -16) {
                    byte b4 = (byte) ((i >> 8) ^ (-1));
                    byte b5 = b4;
                    int i6 = i2;
                    if (b4 == 0) {
                        i6 = i2 + 1;
                        b5 = bArr[i2];
                        if (i6 >= i3) {
                            return C1879f0.m4322a(b3, b5);
                        }
                    }
                    if (b5 > -65) {
                        return -1;
                    }
                    if (b3 == -32 && b5 < -96) {
                        return -1;
                    }
                    if (b3 == -19 && b5 >= -96) {
                        return -1;
                    }
                    i4 = i6 + 1;
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                } else {
                    byte b6 = (byte) ((i >> 8) ^ (-1));
                    if (b6 == 0) {
                        int i7 = i2 + 1;
                        b6 = bArr[i2];
                        if (i7 >= i3) {
                            return C1879f0.m4322a(b3, b6);
                        }
                        i2 = i7;
                        b2 = 0;
                    } else {
                        b2 = (byte) (i >> 16);
                    }
                    byte b7 = b2;
                    int i8 = i2;
                    if (b2 == 0) {
                        i8 = i2 + 1;
                        b7 = bArr[i2];
                        if (i8 >= i3) {
                            return C1879f0.m4319d(b3, b6, b7);
                        }
                    }
                    if (b6 > -65 || (((b6 + C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) + (b3 << 28)) >> 30) != 0 || b7 > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (bArr[i8] > -65) {
                        return -1;
                    }
                }
                i5 = i4;
            }
            while (i5 < i3 && bArr[i5] >= 0) {
                i5++;
            }
            int i9 = i5;
            if (i5 >= i3) {
                b = 0;
            } else {
                while (true) {
                    if (i9 >= i3) {
                        b = 0;
                        break;
                    }
                    int i10 = i9 + 1;
                    b = bArr[i9];
                    if (b >= 0) {
                        i9 = i10;
                    } else if (b >= -32) {
                        if (b >= -16) {
                            if (i10 < i3 - 2) {
                                int i11 = i10 + 1;
                                byte b8 = bArr[i10];
                                if (b8 > -65 || (((b8 + C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) + (b << 28)) >> 30) != 0) {
                                    break;
                                }
                                int i12 = i11 + 1;
                                if (bArr[i11] > -65) {
                                    break;
                                }
                                i9 = i12 + 1;
                                if (bArr[i12] > -65) {
                                    break;
                                }
                            } else {
                                b = C1879f0.m4321b(bArr, i10, i3);
                                break;
                            }
                        } else if (i10 < i3 - 1) {
                            int i13 = i10 + 1;
                            byte b9 = bArr[i10];
                            if (b9 > -65 || ((b == -32 && b9 < -96) || (b == -19 && b9 >= -96))) {
                                break;
                            }
                            i9 = i13 + 1;
                            if (bArr[i13] > -65) {
                                break;
                            }
                        } else {
                            b = C1879f0.m4321b(bArr, i10, i3);
                            break;
                        }
                    } else if (i10 >= i3) {
                        break;
                    } else if (b < -62) {
                        break;
                    } else {
                        i9 = i10 + 1;
                        if (bArr[i10] > -65) {
                            break;
                        }
                    }
                }
                b = -1;
            }
            return b;
        }
    }

    /* renamed from: com.google.protobuf.f0$c */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/f0$c.class */
    public static class C1882c extends IllegalArgumentException {
        public C1882c(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* renamed from: com.google.protobuf.f0$d */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/f0$d.class */
    public static final class C1883d extends AbstractC1880a {
        /* renamed from: c */
        public static int m4316c(byte[] bArr, int i, long j, int i2) {
            if (i2 != 0) {
                if (i2 == 1) {
                    return C1879f0.m4322a(i, C4884b0.m310g(bArr, j));
                }
                if (i2 != 2) {
                    throw new AssertionError();
                }
                return C1879f0.m4319d(i, C4884b0.m310g(bArr, j), C4884b0.m310g(bArr, j + 1));
            }
            AbstractC1880a abstractC1880a = C1879f0.f7072a;
            int i3 = i;
            if (i > -12) {
                i3 = -1;
            }
            return i3;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r0v100, types: [long] */
        /* JADX WARN: Type inference failed for: r0v104, types: [long] */
        /* JADX WARN: Type inference failed for: r0v113, types: [long] */
        /* JADX WARN: Type inference failed for: r0v79, types: [long] */
        /* JADX WARN: Type inference failed for: r0v89, types: [long] */
        @Override // com.google.protobuf.C1879f0.AbstractC1880a
        /* renamed from: a */
        public int mo4318a(CharSequence charSequence, byte[] bArr, int i, int i2) {
            char c;
            char c2;
            int i3;
            char charAt;
            char c3 = i;
            long j = i2 + c3;
            int length = charSequence.length();
            if (length > i2 || bArr.length - i2 < i) {
                StringBuilder m8752j = C0082b.m8752j("Failed writing ");
                m8752j.append(charSequence.charAt(length - 1));
                m8752j.append(" at index ");
                m8752j.append(i + i2);
                throw new ArrayIndexOutOfBoundsException(m8752j.toString());
            }
            int i4 = 0;
            while (true) {
                c = 1;
                if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                C4884b0.m301p(bArr, c3, (byte) charAt);
                i4++;
                c3 = 1 + c3;
            }
            int i5 = i4;
            char c4 = c3;
            if (i4 == length) {
                return c3;
            }
            while (i5 < length) {
                char charAt2 = charSequence.charAt(i5);
                if (charAt2 < 128 && c4 < j) {
                    c2 = c4 + c;
                    C4884b0.m301p(bArr, c4, (byte) charAt2);
                } else if (charAt2 < 2048 && c4 <= j - 2) {
                    long j2 = c4 + c;
                    C4884b0.m301p(bArr, c4, (byte) ((charAt2 >>> 6) | 960));
                    C4884b0.m301p(bArr, j2, (byte) ((charAt2 & '?') | 128));
                    c2 = j2 + c;
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || c4 > j - 3) {
                    if (c4 > j - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i5 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                            throw new C1882c(i5, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + ((long) c4));
                    }
                    int i6 = i5 + 1;
                    if (i6 != length) {
                        char charAt3 = charSequence.charAt(i6);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            long j3 = c4 + 1;
                            C4884b0.m301p(bArr, c4, (byte) ((codePoint >>> 18) | 240));
                            long j4 = 1 + j3;
                            C4884b0.m301p(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j5 = 1 + j4;
                            C4884b0.m301p(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                            c = 1;
                            C4884b0.m301p(bArr, j5, (byte) ((codePoint & 63) | 128));
                            i5 = i6;
                            c2 = j5 + 1;
                        } else {
                            i5 = i6;
                        }
                    }
                    throw new C1882c(i5 - 1, length);
                } else {
                    long j6 = c4 + c;
                    C4884b0.m301p(bArr, c4, (byte) ((charAt2 >>> '\f') | 480));
                    long j7 = c + j6;
                    C4884b0.m301p(bArr, j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                    c2 = j7 + 1;
                    C4884b0.m301p(bArr, j7, (byte) ((charAt2 & '?') | 128));
                    c = 1;
                }
                i5++;
                c4 = c2;
            }
            return c4;
        }

        /* JADX WARN: Type inference failed for: r0v120, types: [long] */
        /* JADX WARN: Type inference failed for: r0v122, types: [long] */
        /* JADX WARN: Type inference failed for: r0v133, types: [long] */
        /* JADX WARN: Type inference failed for: r0v154, types: [long] */
        /* JADX WARN: Type inference failed for: r0v163, types: [long] */
        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v173, types: [long] */
        /* JADX WARN: Type inference failed for: r0v35, types: [long] */
        /* JADX WARN: Type inference failed for: r0v49, types: [long] */
        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* JADX WARN: Type inference failed for: r0v74, types: [long] */
        /* JADX WARN: Type inference failed for: r0v78, types: [long] */
        /* JADX WARN: Type inference failed for: r0v91, types: [long] */
        @Override // com.google.protobuf.C1879f0.AbstractC1880a
        /* renamed from: b */
        public int mo4317b(int i, byte[] bArr, int i2, int i3) {
            int i4;
            byte b;
            char c;
            byte b2;
            if ((i2 | i3 | (bArr.length - i3)) >= 0) {
                char c2 = i2;
                long j = i3;
                char c3 = c2;
                if (i != 0) {
                    if (c2 >= j) {
                        return i;
                    }
                    byte b3 = (byte) i;
                    if (b3 < -32) {
                        if (b3 < -62) {
                            return -1;
                        }
                        c3 = c2 + 1;
                        if (C4884b0.m310g(bArr, c2) > -65) {
                            return -1;
                        }
                    } else if (b3 < -16) {
                        byte b4 = (byte) ((i >> 8) ^ (-1));
                        byte b5 = b4;
                        char c4 = c2;
                        if (b4 == 0) {
                            c4 = c2 + 1;
                            b5 = C4884b0.m310g(bArr, c2);
                            if (c4 >= j) {
                                return C1879f0.m4322a(b3, b5);
                            }
                        }
                        if (b5 > -65) {
                            return -1;
                        }
                        if (b3 == -32 && b5 < -96) {
                            return -1;
                        }
                        if (b3 == -19 && b5 >= -96) {
                            return -1;
                        }
                        c3 = c4 + 1;
                        if (C4884b0.m310g(bArr, c4) > -65) {
                            return -1;
                        }
                    } else {
                        byte b6 = (byte) ((i >> 8) ^ (-1));
                        if (b6 == 0) {
                            ?? r0 = c2 + 1;
                            b6 = C4884b0.m310g(bArr, c2);
                            if (r0 >= j) {
                                return C1879f0.m4322a(b3, b6);
                            }
                            c2 = r0;
                            b2 = 0;
                        } else {
                            b2 = (byte) (i >> 16);
                        }
                        byte b7 = b2;
                        char c5 = c2;
                        if (b2 == 0) {
                            c5 = c2 + 1;
                            b7 = C4884b0.m310g(bArr, c2);
                            if (c5 >= j) {
                                return C1879f0.m4319d(b3, b6, b7);
                            }
                        }
                        if (b6 > -65 || (((b6 + C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) + (b3 << 28)) >> 30) != 0 || b7 > -65 || C4884b0.m310g(bArr, c5) > -65) {
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
                        } else if (C4884b0.m310g(bArr, c6) < 0) {
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
                    byte b8 = 0;
                    int i7 = i6;
                    while (true) {
                        b = b8;
                        c = c7;
                        if (i7 <= 0) {
                            break;
                        }
                        c = c7 + 1;
                        b8 = C4884b0.m310g(bArr, c7);
                        if (b8 < 0) {
                            b = b8;
                            break;
                        }
                        i7--;
                        c7 = c;
                    }
                    if (i7 != 0) {
                        int i8 = i7 - 1;
                        if (b >= -32) {
                            if (b >= -16) {
                                if (i8 >= 3) {
                                    int i9 = i8 - 3;
                                    long j2 = c + 1;
                                    byte m310g = C4884b0.m310g(bArr, c);
                                    if (m310g > -65 || (((m310g + C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) + (b << 28)) >> 30) != 0) {
                                        break;
                                    }
                                    long j3 = j2 + 1;
                                    if (C4884b0.m310g(bArr, j2) > -65 || C4884b0.m310g(bArr, j3) > -65) {
                                        break;
                                    }
                                    c7 = j3 + 1;
                                    i6 = i9;
                                } else {
                                    b = m4316c(bArr, b, c, i8);
                                    break;
                                }
                            } else if (i8 >= 2) {
                                int i10 = i8 - 2;
                                long j4 = c + 1;
                                byte m310g2 = C4884b0.m310g(bArr, c);
                                if (m310g2 > -65 || ((b == -32 && m310g2 < -96) || (b == -19 && m310g2 >= -96))) {
                                    break;
                                }
                                c7 = j4 + 1;
                                i6 = i10;
                                if (C4884b0.m310g(bArr, j4) > -65) {
                                    break;
                                }
                            } else {
                                b = m4316c(bArr, b, c, i8);
                                break;
                            }
                        } else if (i8 != 0) {
                            int i11 = i8 - 1;
                            if (b < -62 || C4884b0.m310g(bArr, c) > -65) {
                                break;
                            }
                            c7 = c + 1;
                            i6 = i11;
                        } else {
                            break;
                        }
                    } else {
                        b = 0;
                        break;
                    }
                }
                b = -1;
                return b;
            }
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    static {
        f7072a = (!(C4884b0.f14957g && C4884b0.f14956f) || C4879a.m318a()) ? new C1881b() : new C1883d();
    }

    /* renamed from: a */
    public static int m4322a(int i, int i2) {
        return (i > -12 || i2 > -65) ? -1 : i ^ (i2 << 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [int] */
    /* renamed from: b */
    public static int m4321b(byte[] bArr, int i, int i2) {
        byte b;
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            b = b2;
            if (b2 > -12) {
                b = -1;
            }
        } else if (i3 == 1) {
            byte b3 = bArr[i];
            b = -1;
            if (b2 <= -12) {
                b = b3 > -65 ? (byte) -1 : b2 ^ (b3 << 8);
            }
        } else if (i3 != 2) {
            throw new AssertionError();
        } else {
            b = m4319d(b2, bArr[i], bArr[i + 1]);
        }
        return b;
    }

    /* renamed from: c */
    public static int m4320c(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            i = i4;
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                int i5 = 0;
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i5 += (127 - charAt2) >>> 31;
                        i2 = i3;
                    } else {
                        int i6 = i5 + 2;
                        i5 = i6;
                        i2 = i3;
                        if (55296 <= charAt2) {
                            i5 = i6;
                            i2 = i3;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new C1882c(i3, length2);
                            } else {
                                i2 = i3 + 1;
                                i5 = i6;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3 = i2 + 1;
                }
                i = i4 + i5;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder m8752j = C0082b.m8752j("UTF-8 length does not fit in int: ");
        m8752j.append(i + 4294967296L);
        throw new IllegalArgumentException(m8752j.toString());
    }

    /* renamed from: d */
    public static int m4319d(int i, int i2, int i3) {
        return (i > -12 || i2 > -65 || i3 > -65) ? -1 : (i ^ (i2 << 8)) ^ (i3 << 16);
    }
}
