package com.google.protobuf;

import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8.class */
public final class Utf8 {

    /* renamed from: a */
    private static final AbstractC2561b f11001a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$UnpairedSurrogateException.class */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.Utf8$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$a.class */
    public static class C2560a {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public static void m2956h(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
            if (m2951m(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m2951m(b3) || m2951m(b4)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int r = ((b & 7) << 18) | (m2946r(b2) << 12) | (m2946r(b3) << 6) | m2946r(b4);
            cArr[i] = m2952l(r);
            cArr[i + 1] = m2947q(r);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public static void m2955i(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public static void m2954j(byte b, byte b2, byte b3, char[] cArr, int i) {
            if (m2951m(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m2951m(b3)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 15) << 12) | (m2946r(b2) << 6) | m2946r(b3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public static void m2953k(byte b, byte b2, char[] cArr, int i) {
            if (b < -62 || m2951m(b2)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 31) << 6) | m2946r(b2));
        }

        /* renamed from: l */
        private static char m2952l(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        /* renamed from: m */
        private static boolean m2951m(byte b) {
            return b > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public static boolean m2950n(byte b) {
            return b >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o */
        public static boolean m2949o(byte b) {
            return b < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: p */
        public static boolean m2948p(byte b) {
            return b < -32;
        }

        /* renamed from: q */
        private static char m2947q(int i) {
            return (char) ((i & 1023) + 56320);
        }

        /* renamed from: r */
        private static int m2946r(byte b) {
            return b & 63;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.Utf8$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$b.class */
    public static abstract class AbstractC2561b {
        AbstractC2561b() {
        }

        /* renamed from: j */
        private static int m2940j(ByteBuffer byteBuffer, int i, int i2) {
            int l = i + Utf8.m2974l(byteBuffer, i, i2);
            while (l < i2) {
                int i3 = l + 1;
                byte b = byteBuffer.get(l);
                l = i3;
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b < -62 || byteBuffer.get(i3) > -65) {
                            return -1;
                        }
                        l = i3 + 1;
                    } else if (b < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.m2970p(byteBuffer, b, i3, i2 - i3);
                        }
                        int i4 = i3 + 1;
                        byte b2 = byteBuffer.get(i3);
                        if (b2 > -65) {
                            return -1;
                        }
                        if (b == -32 && b2 < -96) {
                            return -1;
                        }
                        if ((b == -19 && b2 >= -96) || byteBuffer.get(i4) > -65) {
                            return -1;
                        }
                        l = i4 + 1;
                    } else if (i3 >= i2 - 2) {
                        return Utf8.m2970p(byteBuffer, b, i3, i2 - i3);
                    } else {
                        int i5 = i3 + 1;
                        byte b3 = byteBuffer.get(i3);
                        if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                            return -1;
                        }
                        int i6 = i5 + 1;
                        if (byteBuffer.get(i5) > -65) {
                            return -1;
                        }
                        l = i6 + 1;
                        if (byteBuffer.get(i6) > -65) {
                            return -1;
                        }
                    }
                }
            }
            return 0;
        }

        /* renamed from: a */
        final String m2945a(ByteBuffer byteBuffer, int i, int i2) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? mo2935d(byteBuffer, i, i2) : m2944c(byteBuffer, i, i2);
            }
            return mo2936b(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
        }

        /* renamed from: b */
        abstract String mo2936b(byte[] bArr, int i, int i2);

        /* renamed from: c */
        final String m2944c(ByteBuffer byteBuffer, int i, int i2) {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = byteBuffer.get(i);
                    if (!C2560a.m2950n(b)) {
                        break;
                    }
                    i++;
                    C2560a.m2955i(b, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte b2 = byteBuffer.get(i5);
                    if (C2560a.m2950n(b2)) {
                        i6++;
                        C2560a.m2955i(b2, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte b3 = byteBuffer.get(i5);
                            if (!C2560a.m2950n(b3)) {
                                break;
                            }
                            i5++;
                            C2560a.m2955i(b3, cArr, i6);
                            i6++;
                        }
                    } else if (C2560a.m2948p(b2)) {
                        if (i7 < i3) {
                            C2560a.m2953k(b2, byteBuffer.get(i7), cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (C2560a.m2949o(b2)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            C2560a.m2954j(b2, byteBuffer.get(i7), byteBuffer.get(i8), cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        byte b4 = byteBuffer.get(i7);
                        int i10 = i9 + 1;
                        C2560a.m2956h(b2, b4, byteBuffer.get(i9), byteBuffer.get(i10), cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i6);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* renamed from: d */
        abstract String mo2935d(ByteBuffer byteBuffer, int i, int i2);

        /* renamed from: e */
        abstract int mo2934e(CharSequence charSequence, byte[] bArr, int i, int i2);

        /* renamed from: f */
        final boolean m2943f(ByteBuffer byteBuffer, int i, int i2) {
            boolean z = false;
            if (m2941h(0, byteBuffer, i, i2) == 0) {
                z = true;
            }
            return z;
        }

        /* renamed from: g */
        final boolean m2942g(byte[] bArr, int i, int i2) {
            boolean z = false;
            if (mo2933i(0, bArr, i, i2) == 0) {
                z = true;
            }
            return z;
        }

        /* renamed from: h */
        final int m2941h(int i, ByteBuffer byteBuffer, int i2, int i3) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? mo2932l(i, byteBuffer, i2, i3) : m2939k(i, byteBuffer, i2, i3);
            }
            int arrayOffset = byteBuffer.arrayOffset();
            return mo2933i(i, byteBuffer.array(), i2 + arrayOffset, arrayOffset + i3);
        }

        /* renamed from: i */
        abstract int mo2933i(int i, byte[] bArr, int i2, int i3);

        /* renamed from: k */
        final int m2939k(int i, ByteBuffer byteBuffer, int i2, int i3) {
            int i4 = i2;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b = (byte) i;
                if (b < -32) {
                    if (b < -62) {
                        return -1;
                    }
                    i4 = i2 + 1;
                    if (byteBuffer.get(i2) > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    byte b2 = (byte) ((i >> 8) ^ (-1));
                    byte b3 = b2;
                    int i5 = i2;
                    if (b2 == 0) {
                        i5 = i2 + 1;
                        b3 = byteBuffer.get(i2);
                        if (i5 >= i3) {
                            return Utf8.m2972n(b, b3);
                        }
                    }
                    if (b3 > -65) {
                        return -1;
                    }
                    if (b == -32 && b3 < -96) {
                        return -1;
                    }
                    if (b == -19 && b3 >= -96) {
                        return -1;
                    }
                    i4 = i5 + 1;
                    if (byteBuffer.get(i5) > -65) {
                        return -1;
                    }
                } else {
                    byte b4 = (byte) ((i >> 8) ^ (-1));
                    byte b5 = 0;
                    if (b4 == 0) {
                        int i6 = i2 + 1;
                        b4 = byteBuffer.get(i2);
                        if (i6 >= i3) {
                            return Utf8.m2972n(b, b4);
                        }
                        i2 = i6;
                    } else {
                        b5 = (byte) (i >> 16);
                    }
                    byte b6 = b5;
                    int i7 = i2;
                    if (b5 == 0) {
                        i7 = i2 + 1;
                        b6 = byteBuffer.get(i2);
                        if (i7 >= i3) {
                            return Utf8.m2971o(b, b4, b6);
                        }
                    }
                    if (b4 > -65 || (((b << 28) + (b4 + 112)) >> 30) != 0 || b6 > -65) {
                        return -1;
                    }
                    i4 = i7 + 1;
                    if (byteBuffer.get(i7) > -65) {
                        return -1;
                    }
                }
            }
            return m2940j(byteBuffer, i4, i3);
        }

        /* renamed from: l */
        abstract int mo2932l(int i, ByteBuffer byteBuffer, int i2, int i3);
    }

    /* renamed from: com.google.protobuf.Utf8$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$c.class */
    static final class C2562c extends AbstractC2561b {
        C2562c() {
        }

        /* renamed from: m */
        private static int m2938m(byte[] bArr, int i, int i2) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            return i >= i2 ? 0 : m2937n(bArr, i, i2);
        }

        /* renamed from: n */
        private static int m2937n(byte[] bArr, int i, int i2) {
            while (i < i2) {
                int i3 = i + 1;
                byte b = bArr[i];
                i = i3;
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b < -62) {
                            return -1;
                        }
                        i = i3 + 1;
                        if (bArr[i3] > -65) {
                            return -1;
                        }
                    } else if (b < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.m2969q(bArr, i3, i2);
                        }
                        int i4 = i3 + 1;
                        byte b2 = bArr[i3];
                        if (b2 > -65) {
                            return -1;
                        }
                        if (b == -32 && b2 < -96) {
                            return -1;
                        }
                        if (b == -19 && b2 >= -96) {
                            return -1;
                        }
                        i = i4 + 1;
                        if (bArr[i4] > -65) {
                            return -1;
                        }
                    } else if (i3 >= i2 - 2) {
                        return Utf8.m2969q(bArr, i3, i2);
                    } else {
                        int i5 = i3 + 1;
                        byte b3 = bArr[i3];
                        if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                            return -1;
                        }
                        int i6 = i5 + 1;
                        if (bArr[i5] > -65) {
                            return -1;
                        }
                        i = i6 + 1;
                        if (bArr[i6] > -65) {
                            return -1;
                        }
                    }
                }
            }
            return 0;
        }

        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: b */
        String mo2936b(byte[] bArr, int i, int i2) {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = bArr[i];
                    if (!C2560a.m2950n(b)) {
                        break;
                    }
                    i++;
                    C2560a.m2955i(b, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte b2 = bArr[i5];
                    if (C2560a.m2950n(b2)) {
                        i6++;
                        C2560a.m2955i(b2, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte b3 = bArr[i5];
                            if (!C2560a.m2950n(b3)) {
                                break;
                            }
                            i5++;
                            C2560a.m2955i(b3, cArr, i6);
                            i6++;
                        }
                    } else if (C2560a.m2948p(b2)) {
                        if (i7 < i3) {
                            C2560a.m2953k(b2, bArr[i7], cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (C2560a.m2949o(b2)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            C2560a.m2954j(b2, bArr[i7], bArr[i8], cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        byte b4 = bArr[i7];
                        int i10 = i9 + 1;
                        C2560a.m2956h(b2, b4, bArr[i9], bArr[i10], cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i6);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: d */
        String mo2935d(ByteBuffer byteBuffer, int i, int i2) {
            return m2944c(byteBuffer, i, i2);
        }

        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: e */
        int mo2934e(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                    throw new UnpairedSurrogateException(i8 - 1, length);
                } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i7);
                } else {
                    throw new UnpairedSurrogateException(i8, length);
                }
                i8++;
            }
            return i7;
        }

        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: i */
        int mo2933i(int i, byte[] bArr, int i2, int i3) {
            int i4 = i2;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b = (byte) i;
                if (b < -32) {
                    if (b < -62) {
                        return -1;
                    }
                    i4 = i2 + 1;
                    if (bArr[i2] > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    byte b2 = (byte) ((i >> 8) ^ (-1));
                    byte b3 = b2;
                    int i5 = i2;
                    if (b2 == 0) {
                        i5 = i2 + 1;
                        b3 = bArr[i2];
                        if (i5 >= i3) {
                            return Utf8.m2972n(b, b3);
                        }
                    }
                    if (b3 > -65) {
                        return -1;
                    }
                    if (b == -32 && b3 < -96) {
                        return -1;
                    }
                    if (b == -19 && b3 >= -96) {
                        return -1;
                    }
                    i4 = i5 + 1;
                    if (bArr[i5] > -65) {
                        return -1;
                    }
                } else {
                    byte b4 = (byte) ((i >> 8) ^ (-1));
                    byte b5 = 0;
                    if (b4 == 0) {
                        int i6 = i2 + 1;
                        b4 = bArr[i2];
                        if (i6 >= i3) {
                            return Utf8.m2972n(b, b4);
                        }
                        i2 = i6;
                    } else {
                        b5 = (byte) (i >> 16);
                    }
                    byte b6 = b5;
                    int i7 = i2;
                    if (b5 == 0) {
                        i7 = i2 + 1;
                        b6 = bArr[i2];
                        if (i7 >= i3) {
                            return Utf8.m2971o(b, b4, b6);
                        }
                    }
                    if (b4 > -65 || (((b << 28) + (b4 + 112)) >> 30) != 0 || b6 > -65) {
                        return -1;
                    }
                    i4 = i7 + 1;
                    if (bArr[i7] > -65) {
                        return -1;
                    }
                }
            }
            return m2938m(bArr, i4, i3);
        }

        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: l */
        int mo2932l(int i, ByteBuffer byteBuffer, int i2, int i3) {
            return m2939k(i, byteBuffer, i2, i3);
        }
    }

    /* renamed from: com.google.protobuf.Utf8$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$d.class */
    static final class C2563d extends AbstractC2561b {
        C2563d() {
        }

        /* renamed from: m */
        static boolean m2931m() {
            return C2630k1.m2501G() && C2630k1.m2500H();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3, types: [long] */
        /* JADX WARN: Type inference failed for: r5v14 */
        /* JADX WARN: Type inference failed for: r5v3, types: [long] */
        /* JADX WARN: Type inference failed for: r5v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: n */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int m2930n(long r5, int r7) {
            /*
                Method dump skipped, instructions count: 279
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C2563d.m2930n(long, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3, types: [long] */
        /* JADX WARN: Type inference failed for: r7v14 */
        /* JADX WARN: Type inference failed for: r7v3, types: [long] */
        /* JADX WARN: Type inference failed for: r7v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int m2929o(byte[] r6, long r7, int r9) {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C2563d.m2929o(byte[], long, int):int");
        }

        /* renamed from: p */
        private static int m2928p(long j, int i) {
            if (i < 16) {
                return 0;
            }
            int i2 = 8 - (((int) j) & 7);
            int i3 = i2;
            while (i3 > 0) {
                if (C2630k1.m2465u(j) < 0) {
                    return i2 - i3;
                }
                i3--;
                j = 1 + j;
            }
            int i4 = i - i2;
            while (i4 >= 8 && (C2630k1.m2506B(j) & (-9187201950435737472L)) == 0) {
                j += 8;
                i4 -= 8;
            }
            return i - i4;
        }

        /* renamed from: q */
        private static int m2927q(byte[] bArr, long j, int i) {
            int i2 = 0;
            if (i < 16) {
                return 0;
            }
            while (i2 < i) {
                if (C2630k1.m2464v(bArr, j) < 0) {
                    return i2;
                }
                i2++;
                j = 1 + j;
            }
            return i;
        }

        /* renamed from: r */
        private static int m2926r(long j, int i, int i2) {
            if (i2 == 0) {
                return Utf8.m2973m(i);
            }
            if (i2 == 1) {
                return Utf8.m2972n(i, C2630k1.m2465u(j));
            }
            if (i2 == 2) {
                return Utf8.m2971o(i, C2630k1.m2465u(j), C2630k1.m2465u(j + 1));
            }
            throw new AssertionError();
        }

        /* renamed from: s */
        private static int m2925s(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                return Utf8.m2973m(i);
            }
            if (i2 == 1) {
                return Utf8.m2972n(i, C2630k1.m2464v(bArr, j));
            }
            if (i2 == 2) {
                return Utf8.m2971o(i, C2630k1.m2464v(bArr, j), C2630k1.m2464v(bArr, j + 1));
            }
            throw new AssertionError();
        }

        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: b */
        String mo2936b(byte[] bArr, int i, int i2) {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte v = C2630k1.m2464v(bArr, i);
                    if (!C2560a.m2950n(v)) {
                        break;
                    }
                    i++;
                    C2560a.m2955i(v, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte v2 = C2630k1.m2464v(bArr, i5);
                    if (C2560a.m2950n(v2)) {
                        i6++;
                        C2560a.m2955i(v2, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte v3 = C2630k1.m2464v(bArr, i5);
                            if (!C2560a.m2950n(v3)) {
                                break;
                            }
                            i5++;
                            C2560a.m2955i(v3, cArr, i6);
                            i6++;
                        }
                    } else if (C2560a.m2948p(v2)) {
                        if (i7 < i3) {
                            C2560a.m2953k(v2, C2630k1.m2464v(bArr, i7), cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (C2560a.m2949o(v2)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            C2560a.m2954j(v2, C2630k1.m2464v(bArr, i7), C2630k1.m2464v(bArr, i8), cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        int i10 = i9 + 1;
                        C2560a.m2956h(v2, C2630k1.m2464v(bArr, i7), C2630k1.m2464v(bArr, i9), C2630k1.m2464v(bArr, i10), cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i6);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v13 */
        /* JADX WARN: Type inference failed for: r12v14 */
        /* JADX WARN: Type inference failed for: r12v15 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3, types: [long] */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Type inference failed for: r12v6, types: [long] */
        /* JADX WARN: Type inference failed for: r12v8, types: [long] */
        /* JADX WARN: Type inference failed for: r16v0 */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        java.lang.String mo2935d(java.nio.ByteBuffer r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 426
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C2563d.mo2935d(java.nio.ByteBuffer, int, int):java.lang.String");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v40, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v12 */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v1, types: [long] */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r17v4 */
        /* JADX WARN: Type inference failed for: r17v6 */
        /* JADX WARN: Type inference failed for: r17v7 */
        /* JADX WARN: Type inference failed for: r17v8 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v5 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int mo2934e(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 678
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C2563d.mo2934e(java.lang.CharSequence, byte[], int, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0, types: [long] */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v11 */
        /* JADX WARN: Type inference failed for: r19v12 */
        /* JADX WARN: Type inference failed for: r19v13 */
        /* JADX WARN: Type inference failed for: r19v14 */
        /* JADX WARN: Type inference failed for: r19v3, types: [long] */
        /* JADX WARN: Type inference failed for: r19v7 */
        /* JADX WARN: Type inference failed for: r19v8, types: [long] */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: i */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int mo2933i(int r9, byte[] r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 411
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C2563d.mo2933i(int, byte[], int, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v59, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0, types: [long] */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v11 */
        /* JADX WARN: Type inference failed for: r19v12 */
        /* JADX WARN: Type inference failed for: r19v13 */
        /* JADX WARN: Type inference failed for: r19v14 */
        /* JADX WARN: Type inference failed for: r19v3, types: [long] */
        /* JADX WARN: Type inference failed for: r19v7 */
        /* JADX WARN: Type inference failed for: r19v8, types: [long] */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: l */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int mo2932l(int r9, java.nio.ByteBuffer r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C2563d.mo2932l(int, java.nio.ByteBuffer, int, int):int");
        }
    }

    static {
        f11001a = (!C2563d.m2931m() || C2579d.m2834c()) ? new C2562c() : new C2563d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static String m2979g(ByteBuffer byteBuffer, int i, int i2) {
        return f11001a.m2945a(byteBuffer, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static String m2978h(byte[] bArr, int i, int i2) {
        return f11001a.mo2936b(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m2977i(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f11001a.mo2934e(charSequence, bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m2976j(CharSequence charSequence) {
        int i;
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            i = i3;
            if (i2 < length) {
                char charAt = charSequence.charAt(i2);
                if (charAt >= 2048) {
                    i = i3 + m2975k(charSequence, i2);
                    break;
                }
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                break;
            }
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i + 4294967296L));
    }

    /* renamed from: k */
    private static int m2975k(CharSequence charSequence, int i) {
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2 = i;
            } else {
                int i4 = i3 + 2;
                i3 = i4;
                i2 = i;
                if (55296 <= charAt) {
                    i3 = i4;
                    i2 = i;
                    if (charAt > 57343) {
                        continue;
                    } else if (Character.codePointAt(charSequence, i) >= 65536) {
                        i2 = i + 1;
                        i3 = i4;
                    } else {
                        throw new UnpairedSurrogateException(i, length);
                    }
                } else {
                    continue;
                }
            }
            i = i2 + 1;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static int m2974l(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i;
        while (i3 < i2 - 7 && (byteBuffer.getLong(i3) & (-9187201950435737472L)) == 0) {
            i3 += 8;
        }
        return i3 - i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public static int m2973m(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public static int m2972n(int i, int i2) {
        return (i > -12 || i2 > -65) ? -1 : i ^ (i2 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public static int m2971o(int i, int i2, int i3) {
        return (i > -12 || i2 > -65 || i3 > -65) ? -1 : (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public static int m2970p(ByteBuffer byteBuffer, int i, int i2, int i3) {
        if (i3 == 0) {
            return m2973m(i);
        }
        if (i3 == 1) {
            return m2972n(i, byteBuffer.get(i2));
        }
        if (i3 == 2) {
            return m2971o(i, byteBuffer.get(i2), byteBuffer.get(i2 + 1));
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public static int m2969q(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m2973m(b);
        }
        if (i3 == 1) {
            return m2972n(b, bArr[i]);
        }
        if (i3 == 2) {
            return m2971o(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static boolean m2968r(ByteBuffer byteBuffer) {
        return f11001a.m2943f(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    /* renamed from: s */
    public static boolean m2967s(byte[] bArr) {
        return f11001a.m2942g(bArr, 0, bArr.length);
    }

    /* renamed from: t */
    public static boolean m2966t(byte[] bArr, int i, int i2) {
        return f11001a.m2942g(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static int m2965u(int i, ByteBuffer byteBuffer, int i2, int i3) {
        return f11001a.m2941h(i, byteBuffer, i2, i3);
    }

    /* renamed from: v */
    public static int m2964v(int i, byte[] bArr, int i2, int i3) {
        return f11001a.mo2933i(i, bArr, i2, i3);
    }
}
