package com.google.protobuf;

import java.nio.ByteBuffer;
import p131c.p161d.p367h.C6288d;
import p131c.p161d.p367h.C6347m1;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8.class */
public final class Utf8 {

    /* renamed from: a */
    public static final AbstractC7962b f31156a;

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$UnpairedSurrogateException.class */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* renamed from: com.google.protobuf.Utf8$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$a.class */
    public static class C7961a {
        /* renamed from: a */
        public static char m6875a(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        /* renamed from: b */
        public static char m6869b(int i) {
            return (char) ((i & 1023) + 56320);
        }

        /* renamed from: b */
        public static void m6873b(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (m6867d(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m6867d(b3) || m6867d(b4)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int h = ((b & 7) << 18) | (m6863h(b2) << 12) | (m6863h(b3) << 6) | m6863h(b4);
            cArr[i] = m6875a(h);
            cArr[i + 1] = m6869b(h);
        }

        /* renamed from: b */
        public static void m6872b(byte b, byte b2, byte b3, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (m6867d(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m6867d(b3)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 15) << 12) | (m6863h(b2) << 6) | m6863h(b3));
        }

        /* renamed from: b */
        public static void m6871b(byte b, byte b2, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (b < -62 || m6867d(b2)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 31) << 6) | m6863h(b2));
        }

        /* renamed from: b */
        public static void m6870b(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* renamed from: d */
        public static boolean m6867d(byte b) {
            return b > -65;
        }

        /* renamed from: e */
        public static boolean m6866e(byte b) {
            return b >= 0;
        }

        /* renamed from: f */
        public static boolean m6865f(byte b) {
            return b < -16;
        }

        /* renamed from: g */
        public static boolean m6864g(byte b) {
            return b < -32;
        }

        /* renamed from: h */
        public static int m6863h(byte b) {
            return b & 63;
        }
    }

    /* renamed from: com.google.protobuf.Utf8$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$b.class */
    public static abstract class AbstractC7962b {
        /* renamed from: e */
        public static int m6856e(ByteBuffer byteBuffer, int i, int i2) {
            int c = i + Utf8.m6883c(byteBuffer, i, i2);
            while (c < i2) {
                int i3 = c + 1;
                byte b = byteBuffer.get(c);
                c = i3;
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b < -62 || byteBuffer.get(i3) > -65) {
                            return -1;
                        }
                        c = i3 + 1;
                    } else if (b < -16) {
                        if (i3 >= i2 - 1) {
                            return Utf8.m6885b(byteBuffer, b, i3, i2 - i3);
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
                        c = i4 + 1;
                    } else if (i3 >= i2 - 2) {
                        return Utf8.m6885b(byteBuffer, b, i3, i2 - i3);
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
                        c = i6 + 1;
                        if (byteBuffer.get(i6) > -65) {
                            return -1;
                        }
                    }
                }
            }
            return 0;
        }

        /* renamed from: a */
        public final int m6862a(int i, ByteBuffer byteBuffer, int i2, int i3) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? mo6843c(i, byteBuffer, i2, i3) : m6860b(i, byteBuffer, i2, i3);
            }
            int arrayOffset = byteBuffer.arrayOffset();
            return mo6852a(i, byteBuffer.array(), i2 + arrayOffset, arrayOffset + i3);
        }

        /* renamed from: a */
        public abstract int mo6852a(int i, byte[] bArr, int i2, int i3);

        /* renamed from: a */
        public abstract int mo6849a(CharSequence charSequence, byte[] bArr, int i, int i2);

        /* renamed from: a */
        public final String m6861a(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? mo6842c(byteBuffer, i, i2) : m6859b(byteBuffer, i, i2);
            }
            return mo6848a(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
        }

        /* renamed from: a */
        public abstract String mo6848a(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException;

        /* renamed from: b */
        public final int m6860b(int i, ByteBuffer byteBuffer, int i2, int i3) {
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
                            return Utf8.m6888b(b, b3);
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
                            return Utf8.m6888b(b, b4);
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
                            return Utf8.m6887b(b, b4, b6);
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
            return m6856e(byteBuffer, i4, i3);
        }

        /* renamed from: b */
        public final String m6859b(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = byteBuffer.get(i);
                    if (!C7961a.m6866e(b)) {
                        break;
                    }
                    i++;
                    C7961a.m6870b(b, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte b2 = byteBuffer.get(i5);
                    if (C7961a.m6866e(b2)) {
                        i6++;
                        C7961a.m6870b(b2, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte b3 = byteBuffer.get(i5);
                            if (!C7961a.m6866e(b3)) {
                                break;
                            }
                            i5++;
                            C7961a.m6870b(b3, cArr, i6);
                            i6++;
                        }
                    } else if (C7961a.m6864g(b2)) {
                        if (i7 < i3) {
                            C7961a.m6871b(b2, byteBuffer.get(i7), cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (C7961a.m6865f(b2)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            C7961a.m6872b(b2, byteBuffer.get(i7), byteBuffer.get(i8), cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        byte b4 = byteBuffer.get(i7);
                        int i10 = i9 + 1;
                        C7961a.m6873b(b2, b4, byteBuffer.get(i9), byteBuffer.get(i10), cArr, i6);
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

        /* renamed from: b */
        public final boolean m6858b(byte[] bArr, int i, int i2) {
            boolean z = false;
            if (mo6852a(0, bArr, i, i2) == 0) {
                z = true;
            }
            return z;
        }

        /* renamed from: c */
        public abstract int mo6843c(int i, ByteBuffer byteBuffer, int i2, int i3);

        /* renamed from: c */
        public abstract String mo6842c(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException;

        /* renamed from: d */
        public final boolean m6857d(ByteBuffer byteBuffer, int i, int i2) {
            boolean z = false;
            if (m6862a(0, byteBuffer, i, i2) == 0) {
                z = true;
            }
            return z;
        }
    }

    /* renamed from: com.google.protobuf.Utf8$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$c.class */
    public static final class C7963c extends AbstractC7962b {
        /* renamed from: c */
        public static int m6855c(byte[] bArr, int i, int i2) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            return i >= i2 ? 0 : m6854d(bArr, i, i2);
        }

        /* renamed from: d */
        public static int m6854d(byte[] bArr, int i, int i2) {
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
                            return Utf8.m6882c(bArr, i3, i2);
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
                        return Utf8.m6882c(bArr, i3, i2);
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

        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: a */
        public int mo6852a(int i, byte[] bArr, int i2, int i3) {
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
                            return Utf8.m6888b(b, b3);
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
                            return Utf8.m6888b(b, b4);
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
                            return Utf8.m6887b(b, b4, b6);
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
            return m6855c(bArr, i4, i3);
        }

        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: a */
        public int mo6849a(CharSequence charSequence, byte[] bArr, int i, int i2) {
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

        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: a */
        public String mo6848a(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = bArr[i];
                    if (!C7961a.m6866e(b)) {
                        break;
                    }
                    i++;
                    C7961a.m6870b(b, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte b2 = bArr[i5];
                    if (C7961a.m6866e(b2)) {
                        i6++;
                        C7961a.m6870b(b2, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte b3 = bArr[i5];
                            if (!C7961a.m6866e(b3)) {
                                break;
                            }
                            i5++;
                            C7961a.m6870b(b3, cArr, i6);
                            i6++;
                        }
                    } else if (C7961a.m6864g(b2)) {
                        if (i7 < i3) {
                            C7961a.m6871b(b2, bArr[i7], cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (C7961a.m6865f(b2)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            C7961a.m6872b(b2, bArr[i7], bArr[i8], cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        byte b4 = bArr[i7];
                        int i10 = i9 + 1;
                        C7961a.m6873b(b2, b4, bArr[i9], bArr[i10], cArr, i6);
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

        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: c */
        public int mo6843c(int i, ByteBuffer byteBuffer, int i2, int i3) {
            return m6860b(i, byteBuffer, i2, i3);
        }

        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: c */
        public String mo6842c(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            return m6859b(byteBuffer, i, i2);
        }
    }

    /* renamed from: com.google.protobuf.Utf8$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/Utf8$d.class */
    public static final class C7964d extends AbstractC7962b {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3, types: [long] */
        /* JADX WARN: Type inference failed for: r5v14 */
        /* JADX WARN: Type inference failed for: r5v3, types: [long] */
        /* JADX WARN: Type inference failed for: r5v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m6851a(long r5, int r7) {
            /*
                Method dump skipped, instructions count: 279
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C7964d.m6851a(long, int):int");
        }

        /* renamed from: a */
        public static int m6850a(long j, int i, int i2) {
            if (i2 == 0) {
                return Utf8.m6889b(i);
            }
            if (i2 == 1) {
                return Utf8.m6888b(i, C6347m1.m21248a(j));
            }
            if (i2 == 2) {
                return Utf8.m6887b(i, C6347m1.m21248a(j), C6347m1.m21248a(j + 1));
            }
            throw new AssertionError();
        }

        /* renamed from: a */
        public static int m6847a(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                return Utf8.m6889b(i);
            }
            if (i2 == 1) {
                return Utf8.m6888b(i, C6347m1.m21234a(bArr, j));
            }
            if (i2 == 2) {
                return Utf8.m6887b(i, C6347m1.m21234a(bArr, j), C6347m1.m21234a(bArr, j + 1));
            }
            throw new AssertionError();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3, types: [long] */
        /* JADX WARN: Type inference failed for: r7v14 */
        /* JADX WARN: Type inference failed for: r7v3, types: [long] */
        /* JADX WARN: Type inference failed for: r7v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m6846a(byte[] r6, long r7, int r9) {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C7964d.m6846a(byte[], long, int):int");
        }

        /* renamed from: a */
        public static boolean m6853a() {
            return C6347m1.m21220d() && C6347m1.m21215e();
        }

        /* renamed from: b */
        public static int m6845b(long j, int i) {
            if (i < 16) {
                return 0;
            }
            int i2 = 8 - (((int) j) & 7);
            int i3 = i2;
            while (i3 > 0) {
                if (C6347m1.m21248a(j) < 0) {
                    return i2 - i3;
                }
                i3--;
                j = 1 + j;
            }
            int i4 = i - i2;
            while (i4 >= 8 && (C6347m1.m21231b(j) & (-9187201950435737472L)) == 0) {
                j += 8;
                i4 -= 8;
            }
            return i - i4;
        }

        /* renamed from: b */
        public static int m6844b(byte[] bArr, long j, int i) {
            int i2 = 0;
            if (i < 16) {
                return 0;
            }
            while (i2 < i) {
                if (C6347m1.m21234a(bArr, j) < 0) {
                    return i2;
                }
                i2++;
                j = 1 + j;
            }
            return i;
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
        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo6852a(int r9, byte[] r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 411
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C7964d.mo6852a(int, byte[], int, int):int");
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
        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo6849a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 678
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C7964d.mo6849a(java.lang.CharSequence, byte[], int, int):int");
        }

        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: a */
        public String mo6848a(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte a = C6347m1.m21234a(bArr, i);
                    if (!C7961a.m6866e(a)) {
                        break;
                    }
                    i++;
                    C7961a.m6870b(a, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte a2 = C6347m1.m21234a(bArr, i5);
                    if (C7961a.m6866e(a2)) {
                        i6++;
                        C7961a.m6870b(a2, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte a3 = C6347m1.m21234a(bArr, i5);
                            if (!C7961a.m6866e(a3)) {
                                break;
                            }
                            i5++;
                            C7961a.m6870b(a3, cArr, i6);
                            i6++;
                        }
                    } else if (C7961a.m6864g(a2)) {
                        if (i7 < i3) {
                            C7961a.m6871b(a2, C6347m1.m21234a(bArr, i7), cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (C7961a.m6865f(a2)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            C7961a.m6872b(a2, C6347m1.m21234a(bArr, i7), C6347m1.m21234a(bArr, i8), cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        int i10 = i9 + 1;
                        C7961a.m6873b(a2, C6347m1.m21234a(bArr, i7), C6347m1.m21234a(bArr, i9), C6347m1.m21234a(bArr, i10), cArr, i6);
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
        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo6843c(int r9, java.nio.ByteBuffer r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C7964d.mo6843c(int, java.nio.ByteBuffer, int, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
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
        @Override // com.google.protobuf.Utf8.AbstractC7962b
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String mo6842c(java.nio.ByteBuffer r9, int r10, int r11) throws com.google.protobuf.InvalidProtocolBufferException {
            /*
                Method dump skipped, instructions count: 428
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C7964d.mo6842c(java.nio.ByteBuffer, int, int):java.lang.String");
        }
    }

    static {
        f31156a = (!C7964d.m6853a() || C6288d.m21669b()) ? new C7963c() : new C7964d();
    }

    /* renamed from: a */
    public static int m6899a(int i, ByteBuffer byteBuffer, int i2, int i3) {
        return f31156a.m6862a(i, byteBuffer, i2, i3);
    }

    /* renamed from: a */
    public static int m6898a(int i, byte[] bArr, int i2, int i3) {
        return f31156a.mo6852a(i, bArr, i2, i3);
    }

    /* renamed from: a */
    public static int m6897a(CharSequence charSequence) {
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
                    i = i3 + m6896a(charSequence, i2);
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

    /* renamed from: a */
    public static int m6896a(CharSequence charSequence, int i) {
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

    /* renamed from: a */
    public static int m6895a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f31156a.mo6849a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m6894a(ByteBuffer byteBuffer) {
        return f31156a.m6857d(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    /* renamed from: a */
    public static boolean m6891a(byte[] bArr) {
        return f31156a.m6858b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m6889b(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: b */
    public static int m6888b(int i, int i2) {
        return (i > -12 || i2 > -65) ? -1 : i ^ (i2 << 8);
    }

    /* renamed from: b */
    public static int m6887b(int i, int i2, int i3) {
        return (i > -12 || i2 > -65 || i3 > -65) ? -1 : (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: b */
    public static int m6885b(ByteBuffer byteBuffer, int i, int i2, int i3) {
        if (i3 == 0) {
            return m6889b(i);
        }
        if (i3 == 1) {
            return m6888b(i, byteBuffer.get(i2));
        }
        if (i3 == 2) {
            return m6887b(i, byteBuffer.get(i2), byteBuffer.get(i2 + 1));
        }
        throw new AssertionError();
    }

    /* renamed from: b */
    public static String m6886b(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
        return f31156a.m6861a(byteBuffer, i, i2);
    }

    /* renamed from: b */
    public static String m6884b(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
        return f31156a.mo6848a(bArr, i, i2);
    }

    /* renamed from: c */
    public static int m6883c(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i;
        while (i3 < i2 - 7 && (byteBuffer.getLong(i3) & (-9187201950435737472L)) == 0) {
            i3 += 8;
        }
        return i3 - i;
    }

    /* renamed from: c */
    public static int m6882c(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m6889b(b);
        }
        if (i3 == 1) {
            return m6888b(b, bArr[i]);
        }
        if (i3 == 2) {
            return m6887b(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: d */
    public static boolean m6881d(byte[] bArr, int i, int i2) {
        return f31156a.m6858b(bArr, i, i2);
    }
}
