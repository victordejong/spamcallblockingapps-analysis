package com.google.protobuf;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8.class */
public final class Utf8 {

    /* renamed from: a */
    private static final AbstractC2561b f11001a;

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$UnpairedSurrogateException.class */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* renamed from: com.google.protobuf.Utf8$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$a.class */
    public static class C2560a {
        /* renamed from: h */
        public static void m2956h(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
            if (m2951m(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m2951m(b3) || m2951m(b4)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int m2946r = ((b & 7) << 18) | (m2946r(b2) << 12) | (m2946r(b3) << 6) | m2946r(b4);
            cArr[i] = m2952l(m2946r);
            cArr[i + 1] = m2947q(m2946r);
        }

        /* renamed from: i */
        public static void m2955i(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* renamed from: j */
        public static void m2954j(byte b, byte b2, byte b3, char[] cArr, int i) {
            if (m2951m(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m2951m(b3)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 15) << 12) | (m2946r(b2) << 6) | m2946r(b3));
        }

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

        /* renamed from: n */
        public static boolean m2950n(byte b) {
            return b >= 0;
        }

        /* renamed from: o */
        public static boolean m2949o(byte b) {
            return b < -16;
        }

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

    /* renamed from: com.google.protobuf.Utf8$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$b.class */
    public static abstract class AbstractC2561b {
        AbstractC2561b() {
        }

        /* renamed from: j */
        private static int m2940j(ByteBuffer byteBuffer, int i, int i2) {
            int m2974l = i + Utf8.m2974l(byteBuffer, i, i2);
            while (m2974l < i2) {
                int i3 = m2974l + 1;
                byte b = byteBuffer.get(m2974l);
                m2974l = i3;
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b < -62 || byteBuffer.get(i3) > -65) {
                            return -1;
                        }
                        m2974l = i3 + 1;
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
                        m2974l = i4 + 1;
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
                        m2974l = i6 + 1;
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
            if (byteBuffer.hasArray()) {
                return mo2936b(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
            }
            return byteBuffer.isDirect() ? mo2935d(byteBuffer, i, i2) : m2944c(byteBuffer, i, i2);
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
                int i5 = i4;
                int i6 = i;
                int i7 = i5;
                while (i6 < i3) {
                    int i8 = i6 + 1;
                    byte b2 = byteBuffer.get(i6);
                    if (C2560a.m2950n(b2)) {
                        C2560a.m2955i(b2, cArr, i7);
                        i7++;
                        i6 = i8;
                        while (i6 < i3) {
                            byte b3 = byteBuffer.get(i6);
                            if (!C2560a.m2950n(b3)) {
                                break;
                            }
                            i6++;
                            C2560a.m2955i(b3, cArr, i7);
                            i7++;
                        }
                    } else if (C2560a.m2948p(b2)) {
                        if (i8 >= i3) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        C2560a.m2953k(b2, byteBuffer.get(i8), cArr, i7);
                        i6 = i8 + 1;
                        i7++;
                    } else if (C2560a.m2949o(b2)) {
                        if (i8 >= i3 - 1) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        int i9 = i8 + 1;
                        C2560a.m2954j(b2, byteBuffer.get(i8), byteBuffer.get(i9), cArr, i7);
                        i6 = i9 + 1;
                        i7++;
                    } else if (i8 >= i3 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        int i10 = i8 + 1;
                        byte b4 = byteBuffer.get(i8);
                        int i11 = i10 + 1;
                        C2560a.m2956h(b2, b4, byteBuffer.get(i10), byteBuffer.get(i11), cArr, i7);
                        i6 = i11 + 1;
                        i7 = i7 + 1 + 1;
                    }
                }
                return new String(cArr, 0, i7);
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
            byte b;
            int i4;
            int i5 = i2;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b2 = (byte) i;
                if (b2 < -32) {
                    if (b2 < -62) {
                        return -1;
                    }
                    i4 = i2 + 1;
                    if (byteBuffer.get(i2) > -65) {
                        return -1;
                    }
                } else if (b2 < -16) {
                    byte b3 = (byte) ((i >> 8) ^ (-1));
                    byte b4 = b3;
                    int i6 = i2;
                    if (b3 == 0) {
                        i6 = i2 + 1;
                        b4 = byteBuffer.get(i2);
                        if (i6 >= i3) {
                            return Utf8.m2972n(b2, b4);
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
                    i4 = i6 + 1;
                    if (byteBuffer.get(i6) > -65) {
                        return -1;
                    }
                } else {
                    byte b5 = (byte) ((i >> 8) ^ (-1));
                    if (b5 == 0) {
                        int i7 = i2 + 1;
                        b5 = byteBuffer.get(i2);
                        if (i7 >= i3) {
                            return Utf8.m2972n(b2, b5);
                        }
                        i2 = i7;
                        b = 0;
                    } else {
                        b = (byte) (i >> 16);
                    }
                    byte b6 = b;
                    int i8 = i2;
                    if (b == 0) {
                        i8 = i2 + 1;
                        b6 = byteBuffer.get(i2);
                        if (i8 >= i3) {
                            return Utf8.m2971o(b2, b5, b6);
                        }
                    }
                    if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (byteBuffer.get(i8) > -65) {
                        return -1;
                    }
                }
                i5 = i4;
            }
            return m2940j(byteBuffer, i5, i3);
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
                int i5 = i4;
                int i6 = i;
                int i7 = i5;
                while (i6 < i3) {
                    int i8 = i6 + 1;
                    byte b2 = bArr[i6];
                    if (C2560a.m2950n(b2)) {
                        C2560a.m2955i(b2, cArr, i7);
                        i7++;
                        i6 = i8;
                        while (i6 < i3) {
                            byte b3 = bArr[i6];
                            if (!C2560a.m2950n(b3)) {
                                break;
                            }
                            i6++;
                            C2560a.m2955i(b3, cArr, i7);
                            i7++;
                        }
                    } else if (C2560a.m2948p(b2)) {
                        if (i8 >= i3) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        C2560a.m2953k(b2, bArr[i8], cArr, i7);
                        i6 = i8 + 1;
                        i7++;
                    } else if (C2560a.m2949o(b2)) {
                        if (i8 >= i3 - 1) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        int i9 = i8 + 1;
                        C2560a.m2954j(b2, bArr[i8], bArr[i9], cArr, i7);
                        i6 = i9 + 1;
                        i7++;
                    } else if (i8 >= i3 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        int i10 = i8 + 1;
                        byte b4 = bArr[i8];
                        int i11 = i10 + 1;
                        C2560a.m2956h(b2, b4, bArr[i10], bArr[i11], cArr, i7);
                        i6 = i11 + 1;
                        i7 = i7 + 1 + 1;
                    }
                }
                return new String(cArr, 0, i7);
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
                            throw new UnpairedSurrogateException(i9, length);
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
                    throw new UnpairedSurrogateException(i9 - 1, length);
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

        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: i */
        int mo2933i(int i, byte[] bArr, int i2, int i3) {
            byte b;
            int i4;
            int i5 = i2;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b2 = (byte) i;
                if (b2 < -32) {
                    if (b2 < -62) {
                        return -1;
                    }
                    i4 = i2 + 1;
                    if (bArr[i2] > -65) {
                        return -1;
                    }
                } else if (b2 < -16) {
                    byte b3 = (byte) ((i >> 8) ^ (-1));
                    byte b4 = b3;
                    int i6 = i2;
                    if (b3 == 0) {
                        i6 = i2 + 1;
                        b4 = bArr[i2];
                        if (i6 >= i3) {
                            return Utf8.m2972n(b2, b4);
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
                    i4 = i6 + 1;
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                } else {
                    byte b5 = (byte) ((i >> 8) ^ (-1));
                    if (b5 == 0) {
                        int i7 = i2 + 1;
                        b5 = bArr[i2];
                        if (i7 >= i3) {
                            return Utf8.m2972n(b2, b5);
                        }
                        i2 = i7;
                        b = 0;
                    } else {
                        b = (byte) (i >> 16);
                    }
                    byte b6 = b;
                    int i8 = i2;
                    if (b == 0) {
                        i8 = i2 + 1;
                        b6 = bArr[i2];
                        if (i8 >= i3) {
                            return Utf8.m2971o(b2, b5, b6);
                        }
                    }
                    if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (bArr[i8] > -65) {
                        return -1;
                    }
                }
                i5 = i4;
            }
            return m2938m(bArr, i5, i3);
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

        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v3, types: [long] */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r0v66, types: [long] */
        /* JADX WARN: Type inference failed for: r0v72, types: [long] */
        /* renamed from: n */
        private static int m2930n(long j, int i) {
            char c;
            int m2928p = m2928p(j, i);
            char c2 = j + m2928p;
            int i2 = i - m2928p;
            while (true) {
                int i3 = i2;
                byte b = 0;
                while (true) {
                    c = c2;
                    if (i3 <= 0) {
                        break;
                    }
                    c = c2 + 1;
                    b = C2630k1.m2465u(c2);
                    if (b < 0) {
                        break;
                    }
                    i3--;
                    c2 = c;
                }
                if (i3 == 0) {
                    return 0;
                }
                int i4 = i3 - 1;
                if (b < -32) {
                    if (i4 == 0) {
                        return b;
                    }
                    int i5 = i4 - 1;
                    if (b < -62) {
                        return -1;
                    }
                    c2 = 1 + c;
                    i2 = i5;
                    if (C2630k1.m2465u(c) > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    if (i4 < 2) {
                        return m2926r(c, b, i4);
                    }
                    int i6 = i4 - 2;
                    long j2 = c + 1;
                    byte m2465u = C2630k1.m2465u(c);
                    if (m2465u > -65) {
                        return -1;
                    }
                    if (b == -32 && m2465u < -96) {
                        return -1;
                    }
                    if (b == -19 && m2465u >= -96) {
                        return -1;
                    }
                    c2 = 1 + j2;
                    i2 = i6;
                    if (C2630k1.m2465u(j2) > -65) {
                        return -1;
                    }
                } else if (i4 < 3) {
                    return m2926r(c, b, i4);
                } else {
                    int i7 = i4 - 3;
                    long j3 = c + 1;
                    byte m2465u2 = C2630k1.m2465u(c);
                    if (m2465u2 > -65 || (((b << 28) + (m2465u2 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    long j4 = j3 + 1;
                    if (C2630k1.m2465u(j3) > -65) {
                        return -1;
                    }
                    c2 = 1 + j4;
                    i2 = i7;
                    if (C2630k1.m2465u(j4) > -65) {
                        return -1;
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* JADX WARN: Type inference failed for: r0v66, types: [long] */
        /* JADX WARN: Type inference failed for: r0v72, types: [long] */
        /* renamed from: o */
        private static int m2929o(byte[] bArr, long j, int i) {
            char c;
            int m2927q = m2927q(bArr, j, i);
            int i2 = i - m2927q;
            char c2 = j + m2927q;
            while (true) {
                int i3 = i2;
                byte b = 0;
                while (true) {
                    c = c2;
                    if (i3 <= 0) {
                        break;
                    }
                    c = c2 + 1;
                    b = C2630k1.m2464v(bArr, c2);
                    if (b < 0) {
                        break;
                    }
                    i3--;
                    c2 = c;
                }
                if (i3 == 0) {
                    return 0;
                }
                int i4 = i3 - 1;
                if (b < -32) {
                    if (i4 == 0) {
                        return b;
                    }
                    int i5 = i4 - 1;
                    if (b < -62) {
                        return -1;
                    }
                    c2 = 1 + c;
                    i2 = i5;
                    if (C2630k1.m2464v(bArr, c) > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    if (i4 < 2) {
                        return m2925s(bArr, b, c, i4);
                    }
                    int i6 = i4 - 2;
                    long j2 = c + 1;
                    byte m2464v = C2630k1.m2464v(bArr, c);
                    if (m2464v > -65) {
                        return -1;
                    }
                    if (b == -32 && m2464v < -96) {
                        return -1;
                    }
                    if (b == -19 && m2464v >= -96) {
                        return -1;
                    }
                    c2 = 1 + j2;
                    i2 = i6;
                    if (C2630k1.m2464v(bArr, j2) > -65) {
                        return -1;
                    }
                } else if (i4 < 3) {
                    return m2925s(bArr, b, c, i4);
                } else {
                    int i7 = i4 - 3;
                    long j3 = c + 1;
                    byte m2464v2 = C2630k1.m2464v(bArr, c);
                    if (m2464v2 > -65 || (((b << 28) + (m2464v2 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    long j4 = j3 + 1;
                    if (C2630k1.m2464v(bArr, j3) > -65) {
                        return -1;
                    }
                    c2 = 1 + j4;
                    i2 = i7;
                    if (C2630k1.m2464v(bArr, j4) > -65) {
                        return -1;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v4 */
        /* JADX WARN: Type inference failed for: r5v7 */
        /* renamed from: p */
        private static int m2928p(long j, int i) {
            if (i < 16) {
                return 0;
            }
            int i2 = 8 - (((int) j) & 7);
            int i3 = i2;
            ?? r5 = j;
            while (i3 > 0) {
                if (C2630k1.m2465u(r5 == true ? 1 : 0) < 0) {
                    return i2 - i3;
                }
                i3--;
                r5 = 1 + r5;
            }
            int i4 = i - i2;
            char c = r5;
            while (i4 >= 8 && (C2630k1.m2506B(c == 1 ? 1 : 0) & (-9187201950435737472L)) == 0) {
                c += '\b';
                i4 -= 8;
            }
            return i - i4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* renamed from: q */
        private static int m2927q(byte[] bArr, long j, int i) {
            int i2 = 0;
            ?? r6 = j;
            if (i < 16) {
                return 0;
            }
            while (i2 < i) {
                if (C2630k1.m2464v(bArr, r6) < 0) {
                    return i2;
                }
                i2++;
                r6 = 1 + r6;
            }
            return i;
        }

        /* renamed from: r */
        private static int m2926r(long j, int i, int i2) {
            if (i2 != 0) {
                if (i2 == 1) {
                    return Utf8.m2972n(i, C2630k1.m2465u(j));
                }
                if (i2 != 2) {
                    throw new AssertionError();
                }
                return Utf8.m2971o(i, C2630k1.m2465u(j), C2630k1.m2465u(j + 1));
            }
            return Utf8.m2973m(i);
        }

        /* renamed from: s */
        private static int m2925s(byte[] bArr, int i, long j, int i2) {
            if (i2 != 0) {
                if (i2 == 1) {
                    return Utf8.m2972n(i, C2630k1.m2464v(bArr, j));
                }
                if (i2 != 2) {
                    throw new AssertionError();
                }
                return Utf8.m2971o(i, C2630k1.m2464v(bArr, j), C2630k1.m2464v(bArr, j + 1));
            }
            return Utf8.m2973m(i);
        }

        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: b */
        String mo2936b(byte[] bArr, int i, int i2) {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte m2464v = C2630k1.m2464v(bArr, i);
                    if (!C2560a.m2950n(m2464v)) {
                        break;
                    }
                    i++;
                    C2560a.m2955i(m2464v, cArr, i4);
                    i4++;
                }
                int i5 = i4;
                int i6 = i;
                int i7 = i5;
                while (i6 < i3) {
                    int i8 = i6 + 1;
                    byte m2464v2 = C2630k1.m2464v(bArr, i6);
                    if (C2560a.m2950n(m2464v2)) {
                        C2560a.m2955i(m2464v2, cArr, i7);
                        i7++;
                        i6 = i8;
                        while (i6 < i3) {
                            byte m2464v3 = C2630k1.m2464v(bArr, i6);
                            if (!C2560a.m2950n(m2464v3)) {
                                break;
                            }
                            i6++;
                            C2560a.m2955i(m2464v3, cArr, i7);
                            i7++;
                        }
                    } else if (C2560a.m2948p(m2464v2)) {
                        if (i8 >= i3) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        C2560a.m2953k(m2464v2, C2630k1.m2464v(bArr, i8), cArr, i7);
                        i6 = i8 + 1;
                        i7++;
                    } else if (C2560a.m2949o(m2464v2)) {
                        if (i8 >= i3 - 1) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                        int i9 = i8 + 1;
                        C2560a.m2954j(m2464v2, C2630k1.m2464v(bArr, i8), C2630k1.m2464v(bArr, i9), cArr, i7);
                        i6 = i9 + 1;
                        i7++;
                    } else if (i8 >= i3 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        int i10 = i8 + 1;
                        int i11 = i10 + 1;
                        C2560a.m2956h(m2464v2, C2630k1.m2464v(bArr, i8), C2630k1.m2464v(bArr, i10), C2630k1.m2464v(bArr, i11), cArr, i7);
                        i6 = i11 + 1;
                        i7 = i7 + 1 + 1;
                    }
                }
                return new String(cArr, 0, i7);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v64, types: [long] */
        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        /* JADX WARN: Type inference failed for: r0v76, types: [long] */
        /* JADX WARN: Type inference failed for: r0v84, types: [long] */
        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: d */
        String mo2935d(ByteBuffer byteBuffer, int i, int i2) {
            int i3;
            char c;
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
                char m2477i = C2630k1.m2477i(byteBuffer) + i;
                long j = i2 + m2477i;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (true) {
                    i3 = i4;
                    c = m2477i;
                    if (m2477i >= j) {
                        break;
                    }
                    byte m2465u = C2630k1.m2465u(m2477i);
                    if (!C2560a.m2950n(m2465u)) {
                        i3 = i4;
                        c = m2477i;
                        break;
                    }
                    m2477i++;
                    C2560a.m2955i(m2465u, cArr, i4);
                    i4++;
                }
                while (true) {
                    char c2 = c;
                    while (c2 < j) {
                        ?? r0 = c2 + 1;
                        byte m2465u2 = C2630k1.m2465u(c2);
                        if (C2560a.m2950n(m2465u2)) {
                            C2560a.m2955i(m2465u2, cArr, i3);
                            i3++;
                            c2 = r0;
                            while (c2 < j) {
                                byte m2465u3 = C2630k1.m2465u(c2);
                                if (!C2560a.m2950n(m2465u3)) {
                                    break;
                                }
                                c2++;
                                C2560a.m2955i(m2465u3, cArr, i3);
                                i3++;
                            }
                        } else if (C2560a.m2948p(m2465u2)) {
                            if (r0 >= j) {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                            c2 = r0 + 1;
                            C2560a.m2953k(m2465u2, C2630k1.m2465u(r0), cArr, i3);
                            i3++;
                        } else if (C2560a.m2949o(m2465u2)) {
                            if (r0 >= j - 1) {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                            long j2 = r0 + 1;
                            C2560a.m2954j(m2465u2, C2630k1.m2465u(r0), C2630k1.m2465u(j2), cArr, i3);
                            i3++;
                            c2 = j2 + 1;
                        } else if (r0 >= j - 2) {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        } else {
                            long j3 = r0 + 1;
                            byte m2465u4 = C2630k1.m2465u(r0);
                            long j4 = j3 + 1;
                            c = j4 + 1;
                            C2560a.m2956h(m2465u2, m2465u4, C2630k1.m2465u(j3), C2630k1.m2465u(j4), cArr, i3);
                            i3 = i3 + 1 + 1;
                        }
                    }
                    return new String(cArr, 0, i3);
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r0v102, types: [long] */
        /* JADX WARN: Type inference failed for: r0v108, types: [long] */
        /* JADX WARN: Type inference failed for: r0v117, types: [long] */
        /* JADX WARN: Type inference failed for: r0v79, types: [long] */
        /* JADX WARN: Type inference failed for: r0v92, types: [long] */
        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: e */
        int mo2934e(CharSequence charSequence, byte[] bArr, int i, int i2) {
            char c;
            char c2;
            int i3;
            char charAt;
            char c3 = i;
            long j = i2 + c3;
            int length = charSequence.length();
            if (length > i2 || bArr.length - i2 < i) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i + i2));
            }
            int i4 = 0;
            while (true) {
                c = 1;
                if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                C2630k1.m2495M(bArr, c3, (byte) charAt);
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
                    C2630k1.m2495M(bArr, c4, (byte) charAt2);
                    c2 = c4 + c;
                    c = c;
                } else if (charAt2 < 2048 && c4 <= j - 2) {
                    long j2 = c4 + c;
                    C2630k1.m2495M(bArr, c4, (byte) ((charAt2 >>> 6) | 960));
                    C2630k1.m2495M(bArr, j2, (byte) ((charAt2 & '?') | 128));
                    c2 = j2 + c;
                } else if ((charAt2 >= 55296 && 57343 >= charAt2) || c4 > j - 3) {
                    if (c4 > j - 4) {
                        if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i5 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                            throw new UnpairedSurrogateException(i5, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + ((long) c4));
                    }
                    int i6 = i5 + 1;
                    if (i6 != length) {
                        char charAt3 = charSequence.charAt(i6);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            long j3 = c4 + 1;
                            C2630k1.m2495M(bArr, c4, (byte) ((codePoint >>> 18) | 240));
                            long j4 = j3 + 1;
                            C2630k1.m2495M(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j5 = j4 + 1;
                            C2630k1.m2495M(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                            c = 1;
                            c2 = j5 + 1;
                            C2630k1.m2495M(bArr, j5, (byte) ((codePoint & 63) | 128));
                            i5 = i6;
                        } else {
                            i5 = i6;
                        }
                    }
                    throw new UnpairedSurrogateException(i5 - 1, length);
                } else {
                    long j6 = c4 + c;
                    C2630k1.m2495M(bArr, c4, (byte) ((charAt2 >>> '\f') | 480));
                    long j7 = j6 + c;
                    C2630k1.m2495M(bArr, j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                    C2630k1.m2495M(bArr, j7, (byte) ((charAt2 & '?') | 128));
                    c2 = j7 + 1;
                    c = 1;
                }
                i5++;
                c4 = c2;
            }
            return c4;
        }

        /* JADX WARN: Type inference failed for: r0v100, types: [long] */
        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v78, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: i */
        int mo2933i(int i, byte[] bArr, int i2, int i3) {
            byte b;
            char c;
            if ((i2 | i3 | (bArr.length - i3)) >= 0) {
                char c2 = i2;
                long j = i3;
                char c3 = c2;
                if (i != 0) {
                    if (c2 >= j) {
                        return i;
                    }
                    byte b2 = (byte) i;
                    if (b2 >= -32) {
                        if (b2 < -16) {
                            byte b3 = (byte) ((i >> 8) ^ (-1));
                            char c4 = c2;
                            byte b4 = b3;
                            if (b3 == 0) {
                                c4 = c2 + 1;
                                b4 = C2630k1.m2464v(bArr, c2);
                                if (c4 >= j) {
                                    return Utf8.m2972n(b2, b4);
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
                            c = c4 + 1;
                            if (C2630k1.m2464v(bArr, c4) > -65) {
                                return -1;
                            }
                        } else {
                            byte b5 = (byte) ((i >> 8) ^ (-1));
                            if (b5 == 0) {
                                ?? r0 = c2 + 1;
                                b5 = C2630k1.m2464v(bArr, c2);
                                if (r0 >= j) {
                                    return Utf8.m2972n(b2, b5);
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
                                b6 = C2630k1.m2464v(bArr, c2);
                                if (c5 >= j) {
                                    return Utf8.m2971o(b2, b5, b6);
                                }
                            }
                            if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                                return -1;
                            }
                            c = c5 + 1;
                            if (C2630k1.m2464v(bArr, c5) > -65) {
                                return -1;
                            }
                        }
                        c3 = c;
                    } else if (b2 < -62 || C2630k1.m2464v(bArr, c2) > -65) {
                        return -1;
                    } else {
                        c3 = 1 + c2;
                    }
                }
                return m2929o(bArr, c3, (int) (j - c3));
            }
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v103, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v59, types: [long] */
        /* JADX WARN: Type inference failed for: r0v81, types: [long] */
        /* JADX WARN: Type inference failed for: r0v90, types: [long] */
        @Override // com.google.protobuf.Utf8.AbstractC2561b
        /* renamed from: l */
        int mo2932l(int i, ByteBuffer byteBuffer, int i2, int i3) {
            byte b;
            char c;
            if ((i2 | i3 | (byteBuffer.limit() - i3)) >= 0) {
                char m2477i = C2630k1.m2477i(byteBuffer) + i2;
                long j = (i3 - i2) + m2477i;
                char c2 = m2477i;
                if (i != 0) {
                    if (m2477i >= j) {
                        return i;
                    }
                    byte b2 = (byte) i;
                    if (b2 >= -32) {
                        if (b2 < -16) {
                            byte b3 = (byte) ((i >> 8) ^ (-1));
                            char c3 = m2477i;
                            byte b4 = b3;
                            if (b3 == 0) {
                                c3 = m2477i + 1;
                                b4 = C2630k1.m2465u(m2477i);
                                if (c3 >= j) {
                                    return Utf8.m2972n(b2, b4);
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
                            c = c3 + 1;
                            if (C2630k1.m2465u(c3) > -65) {
                                return -1;
                            }
                        } else {
                            byte b5 = (byte) ((i >> 8) ^ (-1));
                            if (b5 == 0) {
                                ?? r0 = m2477i + 1;
                                b5 = C2630k1.m2465u(m2477i);
                                if (r0 >= j) {
                                    return Utf8.m2972n(b2, b5);
                                }
                                m2477i = r0;
                                b = 0;
                            } else {
                                b = (byte) (i >> 16);
                            }
                            byte b6 = b;
                            char c4 = m2477i;
                            if (b == 0) {
                                c4 = m2477i + 1;
                                b6 = C2630k1.m2465u(m2477i);
                                if (c4 >= j) {
                                    return Utf8.m2971o(b2, b5, b6);
                                }
                            }
                            if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                                return -1;
                            }
                            c = c4 + 1;
                            if (C2630k1.m2465u(c4) > -65) {
                                return -1;
                            }
                        }
                        c2 = c;
                    } else if (b2 < -62 || C2630k1.m2465u(m2477i) > -65) {
                        return -1;
                    } else {
                        c2 = 1 + m2477i;
                    }
                }
                return m2930n(c2, (int) (j - c2));
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    static {
        f11001a = (!C2563d.m2931m() || C2579d.m2834c()) ? new C2562c() : new C2563d();
    }

    /* renamed from: g */
    public static String m2979g(ByteBuffer byteBuffer, int i, int i2) {
        return f11001a.m2945a(byteBuffer, i, i2);
    }

    /* renamed from: h */
    public static String m2978h(byte[] bArr, int i, int i2) {
        return f11001a.mo2936b(bArr, i, i2);
    }

    /* renamed from: i */
    public static int m2977i(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f11001a.mo2934e(charSequence, bArr, i, i2);
    }

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
                    } else if (Character.codePointAt(charSequence, i) < 65536) {
                        throw new UnpairedSurrogateException(i, length);
                    } else {
                        i2 = i + 1;
                        i3 = i4;
                    }
                } else {
                    continue;
                }
            }
            i = i2 + 1;
        }
        return i3;
    }

    /* renamed from: l */
    public static int m2974l(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i;
        while (i3 < i2 - 7 && (byteBuffer.getLong(i3) & (-9187201950435737472L)) == 0) {
            i3 += 8;
        }
        return i3 - i;
    }

    /* renamed from: m */
    public static int m2973m(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: n */
    public static int m2972n(int i, int i2) {
        return (i > -12 || i2 > -65) ? -1 : i ^ (i2 << 8);
    }

    /* renamed from: o */
    public static int m2971o(int i, int i2, int i3) {
        return (i > -12 || i2 > -65 || i3 > -65) ? -1 : (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: p */
    public static int m2970p(ByteBuffer byteBuffer, int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 == 1) {
                return m2972n(i, byteBuffer.get(i2));
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            return m2971o(i, byteBuffer.get(i2), byteBuffer.get(i2 + 1));
        }
        return m2973m(i);
    }

    /* renamed from: q */
    public static int m2969q(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 == 1) {
                return m2972n(b, bArr[i]);
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            return m2971o(b, bArr[i], bArr[i + 1]);
        }
        return m2973m(b);
    }

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

    /* renamed from: u */
    public static int m2965u(int i, ByteBuffer byteBuffer, int i2, int i3) {
        return f11001a.m2941h(i, byteBuffer, i2, i3);
    }

    /* renamed from: v */
    public static int m2964v(int i, byte[] bArr, int i2, int i3) {
        return f11001a.mo2933i(i, bArr, i2, i3);
    }
}
